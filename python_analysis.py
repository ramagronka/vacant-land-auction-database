#Python Code

pip install SQLAlchemy pymysql
from sqlalchemy import create_engine
import pandas as pd

user = 'root'
password = 'your-password_here'
host = 'localhost'
database = 'ie6700'
engine = create_engine(f'mysql+pymysql://{user}:{password}@{host}/{database}')

# Testing to see if all tables from MySQL are connected
query1 = "SELECT * FROM property_data"
df1 = pd.read_sql(query1, engine)
print(df1.head())

applicants_df = pd.read_sql("SELECT * FROM applicants;", engine)
#Count and sort outreach methods for marketing
outreach_counts = applicants_df['outreach'].value_counts().reset_index()
outreach_counts.columns = ['outreach', 'count']

import seaborn as sns
import matplotlib.pyplot as plt

sns.barplot(data=outreach_counts, x='count', y='outreach', palette='Blues_d')
plt.title('Number of Applicants by Outreach Type')
plt.xlabel('Number of Applicants')plt.ylabel('Outreach Type')
plt.tight_layout()
plt.show()

#create applicants dataframe
applicants_df = pd.read_sql("SELECT outreach, type_business FROM applicants;", engine)
#create stacked columns graph grouped by outreach and business_type
# first table
outreach_by_business = applicants_df.pivot_table(
index='outreach',
columns='type_business',
aggfunc='size',
fill_value=0)
#create visualization
import matplotlib.pyplot as plt
outreach_by_business.plot(kind='bar', stacked=True, figsize=(12, 6))
plt.title('Outreach by Business Type (Stacked)')
plt.xlabel('Outreach Method')
plt.ylabel('Number of Applicants')
plt.xticks(rotation=45)
plt.legend(title='Business Type', bbox_to_anchor=(1.05, 1), loc='upper left')
plt.tight_layout()
plt.show()

# next, create a pie chart to illustrate the report for Legal
compliance_df = pd.read_sql("SELECT * FROM compliance;", engine)
import matplotlib.pyplot as plt
# Count the occurrences of each compliance statusstatus_counts = compliance_df['compliance_status'].value_counts()
# Plot pie chart
plt.figure(figsize=(6, 6))
plt.pie(status_counts, labels=status_counts.index, autopct='%1.1f%%', startangle=140)
plt.title('Compliance Status Distribution')
plt.tight_layout()
plt.show()

#use compliance table again to retrieve completed houses for projection
query = """
SELECT *
FROM compliance
WHERE compliance_status = 'completed';
"""
compliance_df = pd.read_sql(query, engine)
# Convert CO_date to datetime (in case it's a string)
compliance_df['CO_Date'] = pd.to_datetime(compliance_df['CO_Date'], errors='coerce')
# Ensure market_value is numeric (drop or flag non-convertible values)
compliance_df['market_value'] = pd.to_numeric(compliance_df['market_value'],
errors='coerce')
# use of pandas timestamp.now function
# calculate time passed in years (divide by 365)
today = pd.Timestamp.now()
compliance_df['years_passed'] = (today - compliance_df['CO_Date']).dt.days / 365
# calculate tax colected as 1.23% of the market value of completed houses, per year
compliance_df['tax_collected'] = compliance_df['market_value'] * 0.0123 *
compliance_df['years_passed']
# clean up data in case there was any N/A
compliance_df = compliance_df.dropna(subset=['CO_Date', 'market_value', 'years_passed',
'tax_collected'])
# Calculate tax collected up to today
compliance_df['tax_collected_today'] = (
compliance_df['market_value'] * 0.0123 * compliance_df['years_passed']
)
# Projection for cumulative tax collected in 2026
compliance_df['projection_2026'] = (
compliance_df['tax_collected_today'] / compliance_df['years_passed']) * 2
# Projection for cumulative tax collected in 2027
compliance_df['projection_2027'] = (
compliance_df['tax_collected_today'] / compliance_df['years_passed']
) * 3
plot_df = compliance_df[['parcel_ID', 'tax_collected_today', 'projection_2026',
'projection_2027']].copy()

# Rename for clarity
plot_df.rename(columns={
'tax_collected_today': '2025',
'projection_2026': '2026',
'projection_2027': '2027'
}, inplace=True)

# Adjust for long format
plot_df_long = plot_df.melt(id_vars='parcel_ID', var_name='year', value_name='amount')
import seaborn as sns
import matplotlib.pyplot as plt
plt.figure(figsize=(10, 6))
sns.lineplot(data=plot_df_long, x='year', y='amount', estimator='sum', errorbar=None,
marker='o')
plt.title('Projected Tax Collection (2025–2027)')
plt.ylabel('Tax Collected (Total)')
plt.xlabel('Year')plt.grid(True)
plt.tight_layout()
plt.show()