//MongoDB

// find non-conforming parcels
db.property_data.find({
$or: [
{ zone: "SF-T", sqft: { $lt: 2400 } },
{ zone: "MF-NS", sqft: { $lt: 3000 } }
]
})

// find all non-compliant buyers
db.compliance.aggregate([
{
$match: {
compliance_status: "Not compliant"
}
},
{
$lookup: {
from: "auction_sales",
localField: "parcel_id",
foreignField: "parcel_id",
as: "sale_info"
}
},{
$unwind: "$sale_info"
},
{
$project: {
_id: 0,
parcel_id: 1,
compliance_status: 1,
buyer: "$sale_info.buyer"
}
}
])

// buyers that bought 2 or more parcels and how much they spent.
db.auction_sales.aggregate([
{
$match: {
auction_result: "Sold"
}
},
{
$group: {
_id: "$buyer",
parcels_purchased: { $sum: 1 },
total_spent: { $sum: "$sold_amount" }
}},
{
$match: {
parcels_purchased: { $gte: 2 }
}
},
{
$sort: {
total_spent: -1
}
}
])

// map reduce to find which parcels sold in a second or third auction
// MapReduce processes large datasets by breaking them into smaller pieces, processing
them in parallel, and then combining the results. This allows for faster and more efficient
data processing on distributed systems.

// map function
// This stage involves splitting the data into smaller chunks and applying a transformation
function to each chunk, producing key-value pairs.

var mapFunction = function () {
emit(this.parcel_id, {
auctions: [{
auction_name: this.auction_name,
asking_price: this.asking_price,sold_amount: this.sold_amount
}],
count: 1
});
};

//---------------------------------------// reduce function
// The output from the map stage (key-value pairs) is then grouped and processed by the
reduce stage, which combines the results based on shared keys.
var reduceFunction = function (key, values) {
var result = {
auctions: [],
count: 0
};
values.forEach(function (value) {
result.count += value.count;
result.auctions = result.auctions.concat(value.auctions);
});
return result;
};

// -----------------------------------------------------// run the map reduce
db.auction_sales.mapReduce(
mapFunction,
reduceFunction,
{
out: "parcel_auction_summary"
}
)

// This creates a new collection called parcel_auction_summary.
db.parcel_auction_summary.find({ "value.count": { $gt: 1 } }).pretty()