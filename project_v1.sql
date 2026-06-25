CREATE TABLE property_data (
    id BIGINT PRIMARY KEY,
    address VARCHAR(100),
    building_sqft INT,
    lot_sqft INT,
    type VARCHAR(10)
);

INSERT INTO property_data (id, address, building_sqft, lot_sqft, type) VALUES
(1429605228, '1020 49th St', 829, 8912, 'MF-NS'),
(1436678860, '1541 Vine St', 1945, 20909, 'SF-T'),
(1428659714, '928 W 26th St', 2100, 22575, 'SF-T'),
(1436399658, '16 Fairfield Av', 2101, 22586, 'SF-T'),
(1428847926, '601 W 26th St', 2122, 22812, 'MF-NS'),
(1436582899, '814 Joyce St', 2222, 23887, 'SF-T'),
(1428665677, '1025 36th St', 2581, 27746, 'SF-T'),
(1428873246, '706 37th St', 2614, 28101, 'SF-T'),
(1436674718, '1507 Manson St', 2615, 28111, 'SF-T'),
(1436692098, '1312 Oakfield Av', 2627, 28240, 'SF-T'),
(1436692085, '1314 Oakfield Av', 2639, 28369, 'SF-T'),
(1436683602, '1020 Hatton St', 2640, 28380, 'SF-T'),
(1436683519, '1504 Selden Av', 2642, 28402, 'SF-T'),
(1428539332, '1984 Shirley Av', 2643, 28412, 'SF-T'),
(1428859353, '532 W 27th St', 2664, 28638, 'MF-NS'),
(1436692073, '1316 Oakfield Av', 2664, 28638, 'SF-T'),
(1428852629, '727 W 28th St', 2664, 28638, 'MF-NS'),
(1428854940, '701 W 29th St', 2664, 28638, 'MF-NS'),
(1436593124, '1010 Hatton St', 2681, 28821, 'SF-T'),
(1436692060, '1318 Oakfield Av', 2714, 29176, 'SF-T'),
(1428856833, '629 W 29th St', 2714, 29176, 'MF-NS'),
(1436681640, '1511 Selden Av', 2727, 29315, 'SF-T'),
(1428859324, '536 W 27th St', 2744, 29498, 'MF-NS'),
(1428856882, '625 W 29th St', 2744, 29498, 'MF-NS'),
(1436588077, '1717 Selden Av', 2747, 29530, 'SF-T'),
(1428538393, '1025 Spotswood Av', 2799, 30089, 'SF-T'),
(1428949823, '327 W 27th St', 2799, 30089, 'MF-NS'),
(1428949842, '325 W 27th St', 2802, 30122, 'MF-NS'),
(1428944770, '421 W 26th St', 2803, 30132, 'MF-NS'),
(1428957624, '422 W 29th St', 2840, 30530, 'MF-NS'),
(1428949862, '323 W 27th St', 2841, 30541, 'MF-NS'),
(1428869315, '621 34th St', 2847, 30605, 'MF-NS'),
(1428957653, '420 W 29th St', 2866, 30810, 'MF-NS'),
(1428949891, '321 W 27th St', 2866, 30810, 'MF-NS'),
(1436493389, '400 Middlesex St', 2908, 31261, 'SF-T'),
(1428952199, '2701 Colonial Av', 2908, 31261, 'MF-NS'),
(1428770263, '861 38th St', 3055, 32841, 'MF-NS'),
(1428953204, '2703 Colonial Av', 3055, 32841, 'MF-NS'),
(1436299691, '500 Berkley Avenue Ex', 3343, 35937, 'MF-NS'),
(1428953302, '509 W 28th St', 3343, 35937, 'MF-NS'),
(1428664329, '1037 35th St', 3370, 36228, 'SF-T'),
(1428953361, '2709 Colonial Av', 3370, 36228, 'MF-NS'),
(1428959378, '401 W 29th St', 4160, 44720, 'MF-NS'),
(1428957009, '419 W 28th St', 4160, 44720, 'MF-NS'),
(1428779372, '735 38th St', 5400, 58050, 'SF-T'),
(1428957038, '412 W 27th St', 5400, 58050, 'MF-NS'),
(1436492673, '806 Barton St', 7544, 81098, 'SF-T'),
(1429815277, '105 52nd St', 7544, 81098, 'SF-T'),
(1436180985, '1045 South Main St', 77433, 554500, 'SF-T');

CREATE TABLE auctions (
    auction_name VARCHAR(50),
    parcel_id BIGINT,
    buyer VARCHAR(255),
    starting_bid DECIMAL(10,2),
    sold_amount DECIMAL(10,2),
    auction_result ENUM('Sold', 'Not Sold')
);

INSERT INTO auctions (auction_name, parcel_id, buyer, starting_bid, sold_amount, auction_result) VALUES
('Fall 2022', 1892047530, NULL, 25200.00, 0.00, 'Not Sold'),
('Fall 2022', 7059283746, NULL, 25200.00, 0.00, 'Not Sold'),
('Fall 2022', 1092837456, 'Grimm & Co. Innovations', 17000.00, 17400.00, 'Sold'),
('Fall 2022', 5872013948, 'PixieDust General Contracting Company', 20400.00, 20400.00, 'Sold'),
('Fall 2022', 3671829405, 'The Spinning Wheel Co.', 20400.00, 24200.00, 'Sold'),
('Fall 2022', 4962817350, 'Toadstool Builders USA LLC', 16500.00, 16500.00, 'Sold'),
('Fall 2022', 5093847261, 'Toadstool Builders USA LLC', 20400.00, 20400.00, 'Sold'),
('Fall 2022', 6029183740, 'R&HH Enterprise, LLC', 25400.00, 25900.00, 'Sold'),
('Fall 2022', 2183746501, 'Wishing Well Ventures', 20400.00, 30700.00, 'Sold'),
('Spring 2023', 1892047530, NULL, 25200.00, 0.00, 'Not Sold'),
('Spring 2023', 3849201753, 'Briar & Vine Interiors', 25200.00, 34500.00, 'Sold'),
('Spring 2023', 2139584701, 'Toadstool Builders USA LLC', 33400.00, 33400.00, 'Sold'),
('Spring 2024', 4839201256, NULL, 27500.00, 0.00, 'Not Sold'),
('Spring 2024', 2951738470, 'Beanstalk Capital', 22500.00, 22500.00, 'Sold'),
('Spring 2024', 7019283645, NULL, 73000.00, 0.00, 'Not Sold'),
('Spring 2024', 2173849506, NULL, 36500.00, 0.00, 'Not Sold'),
('Spring 2024', 5092837461, NULL, 22500.00, 0.00, 'Not Sold'),
('Spring 2024', 3249183705, NULL, 36500.00, 0.00, 'Not Sold'),
('Spring 2024', 4192837506, NULL, 35000.00, 0.00, 'Not Sold'),
('Spring 2024', 1039482716, 'Glass Tower LLC', 25500.00, 35000.00, 'Sold'),
('Summer 2023', 1049835722, NULL, 24200.00, 0.00, 'Not Sold'),
('Summer 2023', 1892047530, NULL, 25200.00, 0.00, 'Not Sold'),
('Summer 2023', 2951738470, NULL, 22500.00, 0.00, 'Not Sold'),
('Summer 2023', 1092837465, 'Toadstool Builders USA LLC', 25900.00, 25900.00, 'Sold'),
('Summer 2023', 6301928475, 'Toadstool Builders USA LLC', 28500.00, 28500.00, 'Sold'),
('Summer 2023', 8930271564, 'Toadstool Builders USA LLC', 32000.00, 32000.00, 'Sold'),
('Summer 2023', 4301829475, 'Toadstool Builders USA LLC', 25500.00, 25500.00, 'Sold'),
('Summer 2023', 5482739160, 'Toadstool Builders USA LLC', 22000.00, 22000.00, 'Sold'),
('Summer 2023', 1092837564, 'Toadstool Builders USA LLC', 36500.00, 36500.00, 'Sold'),
('Summer 2024', 4839201256, 'The Cursed Apple Group Inc', 27500.00, 27500.00, 'Sold'),
('Summer 2024', 8172304956, NULL, 73000.00, 0.00, 'Not Sold'),
('Summer 2024', 5849201736, 'Richardson Homes, Inc', 62700.00, 64700.00, 'Sold'),
('Summer 2024', 6928173054, 'The Cursed Apple Group Inc', 45000.00, 45000.00, 'Sold'),
('Summer 2024', 6983741052, 'The Cursed Apple Group Inc', 15600.00, 20600.00, 'Sold'),
('Summer 2024', 5092837412, 'The Cursed Apple Group Inc', 35000.00, 35000.00, 'Sold'),
('Winter 2024', 2951738470, NULL, 22500.00, 0.00, 'Not Sold'),
('Winter 2024', 1049835722, 'Jay Investment Corp', 24200.00, 40000.00, 'Sold'),
('Winter 2024', 1048573926, NULL, 36500.00, 0.00, 'Not Sold'),
('Winter 2024', 4920381756, NULL, 22500.00, 0.00, 'Not Sold'),
('Winter 2024', 9021837465, 'Big Squirrel LLC', 18200.00, 31500.00, 'Sold'),
('Winter 2024', 1059283746, 'Modern Design Builders LLC', 15400.00, 25200.00, 'Sold'),
('Winter 2024', 9283746501, 'Grimm & Co. Innovations', 37500.00, 37500.00, 'Sold'),
('Winter 2024', 6091824735, 'Castles & Cottages Construction Company LLC', 21000.00, 36000.00, 'Sold'),
('Winter 2024', 1892047531, 'Getting It Done Construction LLC', 22500.00, 32700.00, 'Sold'),
('Winter 2024', 8253749183, 'R&HH Enterprise, LLC', 24200.00, 35000.00, 'Sold'),
('Winter 2024', 8039472156, 'R&HH Enterprise, LLC', 24200.00, 24200.00, 'Sold'),
('Winter 2025', 3859201746, NULL, 25200.00, 0.00, 'Not Sold'),
('Winter 2025', 3049572836, 'Golden Slipper Solutions', 27500.00, 35000.00, 'Sold'),
('Winter 2025', 4192847563, 'Wishing Well Ventures', 27500.00, 29000.00, 'Sold'),
('Winter 2025', 1049835723, 'The Gingerbread Group', 49500.00, 60000.00, 'Sold'),
('Winter 2025', 4029183746, 'R&HH Enterprise, LLC', 20400.00, 31500.00, 'Sold'),
('Winter 2025', 9238471056, 'R&HH Enterprise, LLC', 50400.00, 50400.00, 'Sold');

SELECT * FROM auctions
LIMIT 5;

CREATE TABLE buildable (
    Parcel_ID BIGINT
);

INSERT INTO buildable (Parcel_ID) VALUES
(1428538393),
(1428539332),
(1428659714),
(1428770263),
(1428779372),
(1428847926),
(1428859353),
(1428957624),
(1436582899),
(1436588077);

CREATE TABLE departments (
    DEPARTMENT VARCHAR(255) NOT NULL,
    PRIMARY_CONTACT VARCHAR(255) NOT NULL
);

INSERT INTO departments (DEPARTMENT, PRIMARY_CONTACT) VALUES
('Parks & Recreation', 'Steve Patton'),
('Planning', 'Joy Kelling'),
('Utilities', 'Megan White'),
('Environmental', 'Seamus Mccarthy'),
('Transportation', 'John Stevenson');

CREATE TABLE final_review (
    Parcel_ID BIGINT NOT NULL,
    Final_Review VARCHAR(255) NOT NULL
);

-- Insert data into the final_review table
INSERT INTO final_review (Parcel_ID, Final_Review) VALUES
(1428538393, 'Buildable'),
(1428539332, 'Buildable'),
(1428659714, 'Buildable'),
(1428665677, 'Not Buildable'),
(1428770263, 'Buildable'),
(1428779372, 'Buildable'),
(1428847926, 'Buildable'),
(1428852629, 'Not Buildable'),
(1428854940, 'Not Buildable'),
(1428856833, 'Not Buildable'),
(1428856882, 'Not Buildable'),
(1428859324, 'Not Buildable'),
(1428859353, 'Buildable'),
(1428869315, 'Not Buildable'),
(1428873246, 'Not Buildable'),
(1428944770, 'Not Buildable'),
(1428949891, 'Not Buildable'),
(1428952199, 'Not Buildable'),
(1428953302, 'Not Buildable'),
(1428957009, 'Not Buildable'),
(1428957038, 'Not Buildable'),
(1428957624, 'Buildable'),
(1428959378, 'Not Buildable'),
(1429605228, 'Not Buildable'),
(1429815277, 'Not Buildable'),
(1436180985, 'Not Buildable'),
(1436299691, 'Not Buildable'),
(1436399658, 'Not Buildable'),
(1436492673, 'Not Buildable'),
(1436493389, 'Not Buildable'),
(1436582899, 'Buildable'),
(1436588077, 'Buildable'),
(1436593124, 'Not Buildable'),
(1436674718, 'Not Buildable'),
(1436678860, 'Not Buildable'),
(1436681640, 'Not Buildable'),
(1436683519, 'Not Buildable'),
(1436683602, 'Not Buildable'),
(1436692098, 'Not Buildable');

CREATE TABLE side_lots (
    Parcel_ID BIGINT NOT NULL,
    New_Assessed_Value DECIMAL(10, 2) NOT NULL
);

-- Insert data into the side_lots table
INSERT INTO side_lots (Parcel_ID, New_Assessed_Value) VALUES
(1428665677, 1000.00),
(1428852629, 1000.00),
(1428854940, 1000.00),
(1428856833, 1000.00),
(1428856882, 1000.00),
(1428859324, 1000.00),
(1428869315, 1000.00),
(1428873246, 1000.00),
(1428944770, 1000.00),
(1428949891, 1000.00),
(1428952199, 1000.00),
(1428953302, 1000.00),
(1428957009, 1000.00),
(1428957038, 1000.00),
(1428959378, 1000.00),
(1429605228, 1000.00),
(1429815277, 1000.00),
(1436180985, 1000.00),
(1436299691, 1000.00),
(1436399658, 1000.00),
(1436492673, 1000.00),
(1436493389, 1000.00),
(1436593124, 1000.00),
(1436674718, 1000.00),
(1436678860, 1000.00),
(1436681640, 1000.00),
(1436683519, 1000.00),
(1436683602, 1000.00),
(1436692098, 1000.00);

-- Create the technical_reviews table
CREATE TABLE technical_reviews (
    Department VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Parcel_ID BIGINT NOT NULL,
    Zone VARCHAR(10) NOT NULL,
    Review VARCHAR(50) NOT NULL
);

-- Insert data into the technical_reviews table
INSERT INTO technical_reviews (Department, Address, Parcel_ID, Zone, Review) VALUES
('Environmental', '1025 Spotswood Av', 1428538393, 'SF-T', 'Approved'),
('Parks and Recreation', '1025 Spotswood Av', 1428538393, 'SF-T', 'Approved'),
('Planning', '1025 Spotswood Av', 1428538393, 'SF-T', 'Approved'),
('Transportation', '1025 Spotswood Av', 1428538393, 'SF-T', 'Approved'),
('Utilities', '1025 Spotswood Av', 1428538393, 'SF-T', 'Approved'),
('Environmental', '1984 Shirley Av', 1428539332, 'SF-T', 'Approved'),
('Parks and Recreation', '1984 Shirley Av', 1428539332, 'SF-T', 'Approved'),
('Planning', '1984 Shirley Av', 1428539332, 'SF-T', 'Approved'),
('Transportation', '1984 Shirley Av', 1428539332, 'SF-T', 'Approved'),
('Utilities', '1984 Shirley Av', 1428539332, 'SF-T', 'Approved'),
('Environmental', '928 W 26th St', 1428659714, 'SF-T', 'Approved'),
('Parks and Recreation', '928 W 26th St', 1428659714, 'SF-T', 'Approved'),
('Planning', '928 W 26th St', 1428659714, 'SF-T', 'Approved'),
('Transportation', '928 W 26th St', 1428659714, 'SF-T', 'Approved'),
('Utilities', '928 W 26th St', 1428659714, 'SF-T', 'Approved'),
('Environmental', '1025 36th St', 1428665677, 'SF-T', 'Disapproved'),
('Parks and Recreation', '1025 36th St', 1428665677, 'SF-T', 'Approved'),
('Planning', '1025 36th St', 1428665677, 'SF-T', 'Approved'),
('Transportation', '1025 36th St', 1428665677, 'SF-T', 'Approved'),
('Utilities', '1025 36th St', 1428665677, 'SF-T', 'Approved'),
('Environmental', '861 38th St', 1428770263, 'MF-NS', 'Approved'),
('Parks and Recreation', '861 38th St', 1428770263, 'MF-NS', 'Approved'),
('Planning', '861 38th St', 1428770263, 'MF-NS', 'Approved'),
('Transportation', '861 38th St', 1428770263, 'MF-NS', 'Approved'),
('Utilities', '861 38th St', 1428770263, 'MF-NS', 'Approved'),
('Environmental', '735 38th St', 1428779372, 'SF-T', 'Approved'),
('Parks and Recreation', '735 38th St', 1428779372, 'SF-T', 'Approved'),
('Planning', '735 38th St', 1428779372, 'SF-T', 'Approved'),
('Transportation', '735 38th St', 1428779372, 'SF-T', 'Approved'),
('Utilities', '735 38th St', 1428779372, 'SF-T', 'Approved'),
('Environmental', '601 W 26th St', 1428847926, 'MF-NS', 'Approved'),
('Parks and Recreation', '601 W 26th St', 1428847926, 'MF-NS', 'Approved'),
('Planning', '601 W 26th St', 1428847926, 'MF-NS', 'Approved'),
('Transportation', '601 W 26th St', 1428847926, 'MF-NS', 'Approved'),
('Utilities', '601 W 26th St', 1428847926, 'MF-NS', 'Approved'),
('Environmental', '727 W 28th St', 1428852629, 'MF-NS', 'Approved'),
('Parks and Recreation', '727 W 28th St', 1428852629, 'MF-NS', 'Approved'),
('Planning', '727 W 28th St', 1428852629, 'MF-NS', 'Approved'),
('Transportation', '727 W 28th St', 1428852629, 'MF-NS', 'Approved'),
('Utilities', '601 W 26th St', 1428852629, 'MF-NS', 'Disapproved'),
('Environmental', '701 W 29th St', 1428854940, 'MF-NS', 'Approved'),
('Parks and Recreation', '701 W 29th St', 1428854940, 'MF-NS', 'Approved'),
('Planning', '701 W 29th St', 1428854940, 'MF-NS', 'Approved'),
('Transportation', '701 W 29th St', 1428854940, 'MF-NS', 'Approved'),
('Utilities', '701 W 29th St', 1428854940, 'MF-NS', 'Disapproved'),
('Environmental', '629 W 29th St', 1428856833, 'MF-NS', 'Approved'),
('Parks and Recreation', '629 W 29th St', 1428856833, 'MF-NS', 'Approved'),
('Planning', '629 W 29th St', 1428856833, 'MF-NS', 'Approved'),
('Transportation', '629 W 29th St', 1428856833, 'MF-NS', 'Approved'),
('Utilities', '629 W 29th St', 1428856833, 'MF-NS', 'Disapproved'),
('Environmental', '625 W 29th St', 1428856882, 'MF-NS', 'Approved'),
('Parks and Recreation', '625 W 29th St', 1428856882, 'MF-NS', 'Approved'),
('Planning', '625 W 29th St', 1428856882, 'MF-NS', 'Approved'),
('Transportation', '625 W 29th St', 1428856882, 'MF-NS', 'Approved'),
('Utilities', '625 W 29th St', 1428856882, 'MF-NS', 'Disapproved'),
('Environmental', '536 W 27th St', 1428859324, 'MF-NS', 'Approved'),
('Parks and Recreation', '536 W 27th St', 1428859324, 'MF-NS', 'Approved'),
('Planning', '536 W 27th St', 1428859324, 'MF-NS', 'Disapproved'),
('Transportation', '536 W 27th St', 1428859324, 'MF-NS', 'Approved'),
('Utilities', '536 W 27th St', 1428859324, 'MF-NS', 'Approved'),
('Environmental', '532 W 27th St', 1428859353, 'MF-NS', 'Approved'),
('Parks and Recreation', '532 W 27th St', 1428859353, 'MF-NS', 'Approved'),
('Planning', '532 W 27th St', 1428859353, 'MF-NS', 'Approved'),
('Transportation', '532 W 27th St', 1428859353, 'MF-NS', 'Approved'),
('Utilities', '532 W 27th St', 1428859353, 'MF-NS', 'Approved'),
('Environmental', '621 34th St', 1428869315, 'MF-NS', 'Approved'),
('Parks and Recreation', '621 34th St', 1428869315, 'MF-NS', 'Approved'),
('Planning', '621 34th St', 1428869315, 'MF-NS', 'Disapproved'),
('Transportation', '621 34th St', 1428869315, 'MF-NS', 'Approved'),
('Utilities', '621 34th St', 1428869315, 'MF-NS', 'Disapproved'),
('Environmental', '706 37th St', 1428873246, 'SF-T', 'Approved'),
('Parks and Recreation', '706 37th St', 1428873246, 'SF-T', 'Approved'),
('Planning', '706 37th St', 1428873246, 'SF-T', 'Disapproved'),
('Transportation', '706 37th St', 1428873246, 'SF-T', 'Approved'),
('Utilities', '706 37th St', 1428873246, 'SF-T', 'Approved');

INSERT INTO technical_reviews (Department, Address, Parcel_ID, Zone, Review)
VALUES
('Parks and Recreation', '706 37th St', 1428873246, 'SF-T', 'Approved'),
('Planning', '706 37th St', 1428873246, 'SF-T', 'Disapproved'),
('Transportation', '706 37th St', 1428873246, 'SF-T', 'Approved'),
('Utilities', '706 37th St', 1428873246, 'SF-T', 'Approved'),
('Environmental', '421 W 26th St', 1428944770, 'MF-NS', 'Approved'),
('Parks and Recreation', '421 W 26th St', 1428944770, 'MF-NS', 'Approved'),
('Planning', '421 W 26th St', 1428944770, 'MF-NS', 'Disapproved'),
('Transportation', '421 W 26th St', 1428944770, 'MF-NS', 'Approved'),
('Utilities', '421 W 26th St', 1428944770, 'MF-NS', 'Approved'),
('Environmental', '321 W 27th St', 1428949891, 'MF-NS', 'Approved'),
('Parks and Recreation', '321 W 27th St', 1428949891, 'MF-NS', 'Approved'),
('Planning', '321 W 27th St', 1428949891, 'MF-NS', 'Approved'),
('Transportation', '321 W 27th St', 1428949891, 'MF-NS', 'Approved'),
('Utilities', '321 W 27th St', 1428949891, 'MF-NS', 'Disapproved'),
('Environmental', '2701 Colonial Av', 1428952199, 'MF-NS', 'Approved'),
('Parks and Recreation', '2701 Colonial Av', 1428952199, 'MF-NS', 'Approved'),
('Planning', '2701 Colonial Av', 1428952199, 'MF-NS', 'Disapproved'),
('Transportation', '2701 Colonial Av', 1428952199, 'MF-NS', 'Approved'),
('Utilities', '2701 Colonial Av', 1428952199, 'MF-NS', 'Disapproved'),
('Environmental', '509 W 28th St', 1428953302, 'MF-NS', 'Approved'),
('Parks and Recreation', '509 W 28th St', 1428953302, 'MF-NS', 'Approved'),
('Planning', '509 W 28th St', 1428953302, 'MF-NS', 'Disapproved'),
('Transportation', '509 W 28th St', 1428953302, 'MF-NS', 'Approved'),
('Utilities', '509 W 28th St', 1428953302, 'MF-NS', 'Disapproved'),
('Environmental', '419 W 28th St', 1428957009, 'MF-NS', 'Approved'),
('Parks and Recreation', '419 W 28th St', 1428957009, 'MF-NS', 'Approved'),
('Planning', '419 W 28th St', 1428957009, 'MF-NS', 'Approved'),
('Transportation', '419 W 28th St', 1428957009, 'MF-NS', 'Approved'),
('Utilities', '419 W 28th St', 1428957009, 'MF-NS', 'Disapproved'),
('Environmental', '412 W 27th St', 1428957038, 'MF-NS', 'Approved'),
('Parks and Recreation', '412 W 27th St', 1428957038, 'MF-NS', 'Approved'),
('Planning', '412 W 27th St', 1428957038, 'MF-NS', 'Approved'),
('Transportation', '412 W 27th St', 1428957038, 'MF-NS', 'Approved'),
('Utilities', '412 W 27th St', 1428957038, 'MF-NS', 'Disapproved'),
('Environmental', '422 W 29th St', 1428957624, 'MF-NS', 'Approved'),
('Parks and Recreation', '422 W 29th St', 1428957624, 'MF-NS', 'Approved'),
('Planning', '422 W 29th St', 1428957624, 'MF-NS', 'Approved'),
('Transportation', '422 W 29th St', 1428957624, 'MF-NS', 'Approved');

INSERT INTO technical_reviews (Department, Address, Parcel_ID, Zone, Review)
VALUES
('Utilities', '422 W 29th St', 1428957624, 'MF-NS', 'Approved'),
('Environmental', '401 W 29th St', 1428959378, 'MF-NS', 'Approved'),
('Parks and Recreation', '401 W 29th St', 1428959378, 'MF-NS', 'Approved'),
('Planning', '401 W 29th St', 1428959378, 'MF-NS', 'Approved'),
('Transportation', '401 W 29th St', 1428959378, 'MF-NS', 'Approved'),
('Utilities', '401 W 29th St', 1428959378, 'MF-NS', 'Disapproved'),
('Environmental', '1020 49th St', 1429605228, 'MF-NS', 'Disapproved'),
('Parks and Recreation', '1020 49th St', 1429605228, 'MF-NS', 'Approved'),
('Planning', '1020 49th St', 1429605228, 'MF-NS', 'Disapproved'),
('Transportation', '1020 49th St', 1429605228, 'MF-NS', 'Approved'),
('Utilities', '1020 49th St', 1429605228, 'MF-NS', 'Approved'),
('Environmental', '105 52nd St', 1429815277, 'SF-T', 'Disapproved'),
('Parks and Recreation', '105 52nd St', 1429815277, 'SF-T', 'Approved'),
('Planning', '105 52nd St', 1429815277, 'SF-T', 'Disapproved'),
('Transportation', '105 52nd St', 1429815277, 'SF-T', 'Approved'),
('Utilities', '105 52nd St', 1429815277, 'SF-T', 'Approved'),
('Environmental', '1045 South Main St', 1436180985, 'SF-T', 'Approved'),
('Parks and Recreation', '1045 South Main St', 1436180985, 'SF-T', 'Disapproved'),
('Planning', '1045 South Main St', 1436180985, 'SF-T', 'Approved'),
('Transportation', '1045 South Main St', 1436180985, 'SF-T', 'Approved'),
('Utilities', '1045 South Main St', 1436180985, 'SF-T', 'Approved'),
('Environmental', '500 Berkley Avenue Ex', 1436299691, 'MF-NS', 'Approved'),
('Parks and Recreation', '500 Berkley Avenue Ex', 1436299691, 'MF-NS', 'Disapproved'),
('Planning', '500 Berkley Avenue Ex', 1436299691, 'MF-NS', 'Approved'),
('Transportation', '500 Berkley Avenue Ex', 1436299691, 'MF-NS', 'Approved'),
('Utilities', '500 Berkley Avenue Ex', 1436299691, 'MF-NS', 'Approved'),
('Environmental', '16 Fairfield Av', 1436399658, 'SF-T', 'Disapproved'),
('Parks and Recreation', '16 Fairfield Av', 1436399658, 'SF-T', 'Approved'),
('Planning', '16 Fairfield Av', 1436399658, 'SF-T', 'Approved'),
('Transportation', '16 Fairfield Av', 1436399658, 'SF-T', 'Approved'),
('Utilities', '16 Fairfield Av', 1436399658, 'SF-T', 'Approved'),
('Environmental', '806 Barton St', 1436492673, 'SF-T', 'Disapproved'),
('Parks and Recreation', '806 Barton St', 1436492673, 'SF-T', 'Approved'),
('Planning', '806 Barton St', 1436492673, 'SF-T', 'Approved'),
('Transportation', '806 Barton St', 1436492673, 'SF-T', 'Approved'),
('Utilities', '806 Barton St', 1436492673, 'SF-T', 'Approved'),
('Environmental', '400 Middlesex St', 1436493389, 'SF-T', 'Disapproved'),
('Parks and Recreation', '400 Middlesex St', 1436493389, 'SF-T', 'Approved'),
('Planning', '400 Middlesex St', 1436493389, 'SF-T', 'Approved'),
('Transportation', '400 Middlesex St', 1436493389, 'SF-T', 'Approved'),
('Utilities', '400 Middlesex St', 1436493389, 'SF-T', 'Approved'),
('Environmental', '814 Joyce St', 1436582899, 'SF-T', 'Approved'),
('Parks and Recreation', '814 Joyce St', 1436582899, 'SF-T', 'Approved'),
('Planning', '814 Joyce St', 1436582899, 'SF-T', 'Approved'),
('Transportation', '814 Joyce St', 1436582899, 'SF-T', 'Approved'),
('Utilities', '814 Joyce St', 1436582899, 'SF-T', 'Approved'),
('Environmental', '1717 Selden Av', 1436588077, 'SF-T', 'Approved'),
('Parks and Recreation', '1717 Selden Av', 1436588077, 'SF-T', 'Approved'),
('Planning', '1717 Selden Av', 1436588077, 'SF-T', 'Approved'),
('Transportation', '1717 Selden Av', 1436588077, 'SF-T', 'Approved');

INSERT INTO technical_reviews (Department, Address, Parcel_ID, Zone, Review)
VALUES
('Utilities', '1717 Selden Av', 1436588077, 'SF-T', 'Approved'),
('Environmental', '1010 Hatton St', 1436593124, 'SF-T', 'Approved'),
('Parks and Recreation', '1010 Hatton St', 1436593124, 'SF-T', 'Approved'),
('Planning', '1010 Hatton St', 1436593124, 'SF-T', 'Approved'),
('Transportation', '1010 Hatton St', 1436593124, 'SF-T', 'Approved'),
('Utilities', '1010 Hatton St', 1436593124, 'SF-T', 'Disapproved'),
('Environmental', '1507 Manson St', 1436674718, 'SF-T', 'Disapproved'),
('Parks and Recreation', '1507 Manson St', 1436674718, 'SF-T', 'Approved'),
('Planning', '1507 Manson St', 1436674718, 'SF-T', 'Approved'),
('Transportation', '1507 Manson St', 1436674718, 'SF-T', 'Approved'),
('Utilities', '1507 Manson St', 1436674718, 'SF-T', 'Approved'),
('Environmental', '1541 Vine St', 1436678860, 'SF-T', 'Disapproved'),
('Parks and Recreation', '1541 Vine St', 1436678860, 'SF-T', 'Approved'),
('Planning', '1541 Vine St', 1436678860, 'SF-T', 'Approved'),
('Transportation', '1541 Vine St', 1436678860, 'SF-T', 'Approved'),
('Utilities', '1541 Vine St', 1436678860, 'SF-T', 'Approved'),
('Environmental', '1511 Selden Av', 1436681640, 'SF-T', 'Disapproved'),
('Parks and Recreation', '1511 Selden Av', 1436681640, 'SF-T', 'Approved'),
('Planning', '1511 Selden Av', 1436681640, 'SF-T', 'Approved'),
('Transportation', '1511 Selden Av', 1436681640, 'SF-T', 'Approved'),
('Utilities', '1511 Selden Av', 1436681640, 'SF-T', 'Approved'),
('Environmental', '1504 Selden Av', 1436683519, 'SF-T', 'Approved'),
('Parks and Recreation', '1504 Selden Av', 1436683519, 'SF-T', 'Disapproved'),
('Planning', '1504 Selden Av', 1436683519, 'SF-T', 'Approved'),
('Transportation', '1504 Selden Av', 1436683519, 'SF-T', 'Disapproved'),
('Utilities', '1504 Selden Av', 1436683519, 'SF-T', 'Approved'),
('Environmental', '1020 Hatton St', 1436683602, 'SF-T', 'Approved'),
('Parks and Recreation', '1020 Hatton St', 1436683602, 'SF-T', 'Disapproved'),
('Planning', '1020 Hatton St', 1436683602, 'SF-T', 'Approved'),
('Transportation', '1020 Hatton St', 1436683602, 'SF-T', 'Disapproved'),
('Utilities', '1020 Hatton St', 1436683602, 'SF-T', 'Approved'),
('Environmental', '1312 Oakfield Av', 1436692098, 'SF-T', 'Disapproved'),
('Parks and Recreation', '1312 Oakfield Av', 1436692098, 'SF-T', 'Approved'),
('Planning', '1312 Oakfield Av', 1436692098, 'SF-T', 'Approved'),
('Transportation', '1312 Oakfield Av', 1436692098, 'SF-T', 'Approved'),
('Utilities', '1312 Oakfield Av', 1436692098, 'SF-T', 'Approved');

SELECT COUNT(DISTINCT Parcel_ID) AS distinct_parcel_count
FROM technical_reviews;

SELECT * FROM property_data
LIMIT 5;

ALTER TABLE property_data CHANGE COLUMN id parcel_id INT;

SELECT COUNT(DISTINCT Parcel_ID) AS distinct_parcel_count
FROM property_data;

ALTER TABLE auctions ADD COLUMN sale_type VARCHAR(255) DEFAULT 'auction_sale';

UPDATE auctions SET sale_type = 'auction_sale';

SELECT * FROM auctions
LIMIT 5;

ALTER TABLE auctions
CHANGE COLUMN starting_bid asking_price DECIMAL(10, 2);

SELECT * FROM side_lots
LIMIT 5;

ALTER TABLE side_lots
CHANGE COLUMN New_Assessed_Value asking_price DECIMAL(10, 2);

SELECT * FROM side_lots
LIMIT 5;

CREATE TABLE side_lots_sales (
    Parcel_ID BIGINT PRIMARY KEY,
    neighbor_name VARCHAR(100),
    sold_amount DECIMAL(10, 2),
    sale_type VARCHAR(20)
);

INSERT INTO side_lots_sales (Parcel_ID, neighbor_name, sold_amount, sale_type) VALUES
(3821047395, 'Isaac Maxwell', 5342.00, 'side_lot'),
(9274836120, 'Marie Faraday', 1483.00, 'side_lot'),
(1049283746, 'Albert Hawking', 2820.00, 'side_lot'),
(5612083947, 'Nikola Lovelace', 4777.00, 'side_lot'),
(8392017465, 'Rosalind Pascal', 3184.00, 'side_lot'),
(7201948356, 'Carl Darwin', 5135.00, 'side_lot'),
(3984752106, 'Stephen Lavoisier', 4461.00, 'side_lot'),
(1092847563, 'Ada Fermi', 3527.00, 'side_lot'),
(6729831045, 'Niels Cavendish', 2231.00, 'side_lot'),
(8492017364, 'Jane Dirac', 1056.00, 'side_lot'),
(2310948573, 'Gregor Halley', 4096.00, 'side_lot'),
(7083946251, 'Dmitri Boyle', 2047.00, 'side_lot'),
(3901284765, 'Chien-Schwinger Wu', 5409.00, 'side_lot'),
(6482017395, 'Edwin Curie', 3922.00, 'side_lot'),
(1209483756, 'Barbara Streissand', 1391.00, 'side_lot'),
(5820934716, 'Richard Noether', 4679.00, 'side_lot'),
(7492018365, 'Enrico Franklin', 3325.00, 'side_lot'),
(9182736450, 'Lise Bohr', 2178.00, 'side_lot'),
(4392018475, 'Rachel Heisenberg', 1914.00, 'side_lot'),
(5201983746, 'Johannes Meitner', 4312.00, 'side_lot'),
(8372019456, 'Katherine Kepler', 1629.00, 'side_lot'),
(3902847156, 'Werner Cannon', 2554.00, 'side_lot'),
(1948372056, 'Emmy Planck', 3011.00, 'side_lot'),
(6782031945, 'Linus Marconi', 5288.00, 'side_lot'),
(8741203956, 'James Galilei', 3675.00, 'side_lot'),
(9823475610, 'Dorothy Maxwell', 1197.00, 'side_lot'),
(3201948756, 'Tycho Newton', 3468.00, 'side_lot'),
(7461928035, 'Florence Pauli', 5052.00, 'side_lot'),
(4092837516, 'Alfred Euler', 1439.00, 'side_lot'),
(1820349765, 'Henrietta Leibniz', 2711.00, 'side_lot'),
(6719203845, 'Antoine Chandrasekhar', 3926.00, 'side_lot'),
(5981237406, 'Caroline Dirac', 1253.00, 'side_lot'),
(8412037965, 'Subrahmanyan Hooke', 5267.00, 'side_lot'),
(2301948576, 'Vera Rutherford', 4562.00, 'side_lot'),
(9172384065, 'Anders Hubble', 3174.00, 'side_lot'),
(6892031745, 'Grace Oppenheimer', 2389.00, 'side_lot');

ALTER TABLE side_lots_sales
ADD COLUMN asking_price DECIMAL(10,2);

UPDATE side_lots_sales
SET asking_price = 0;

CREATE TABLE Revenue AS
SELECT
    s.Parcel_ID,
    s.asking_price,
    s.sold_amount,
    s.sale_type,
    (s.sold_amount - s.asking_price) AS proceeds
FROM side_lots_sales s

UNION ALL

SELECT
    a.Parcel_ID,
    a.asking_price,
    a.sold_amount,
    a.sale_type,
    (a.sold_amount - a.asking_price) AS proceeds
FROM auctions a
WHERE a.auction_result = 'sold';

SELECT 
  sale_type,
  SUM(proceeds) AS total_proceeds
FROM Revenue
GROUP BY sale_type;

CREATE TABLE applicants (
    applicant_name VARCHAR(100),
    applicant_email VARCHAR(100),
    type_business ENUM('LLC', 'Corporation', 'Non-Profit'),
    is_swam BOOLEAN,
    is_active BOOLEAN,
    outreach ENUM('Social Media', 'Billboard', 'Public Radio', 'Newspaper')
);

SELECT
  (SELECT COUNT(DISTINCT parcel_id) FROM property_data) AS total_parcels,
  (SELECT COUNT(DISTINCT parcel_id) FROM technical_reviews) AS reviewed_parcels,
  (SELECT COUNT(DISTINCT parcel_id) FROM final_review) AS final_review_parcels;

SELECT parcel_id
FROM property_data
WHERE parcel_id NOT IN (
    SELECT parcel_id FROM final_review
);

SELECT *
FROM property_data;

ALTER TABLE property_data
RENAME COLUMN type TO zone;

INSERT INTO technical_reviews (Department, Address, Parcel_ID, Zone, Review)
VALUES
('Environmental', '1427 Maplewood Drive', 1428664329, 'SF-T', 'Approved'),
('Parks and Recreation', '1427 Maplewood Drive', 1428664329, 'SF-T', 'Approved'),
('Planning', '1427 Maplewood Drive', 1428664329, 'SF-T', 'Approved'),
('Transportation', '1427 Maplewood Drive', 1428664329, 'SF-T', 'Approved'),
('Utilities', '1427 Maplewood Drive', 1428664329, 'SF-T', 'Approved'),

('Environmental', '308 Willow Avenue', 1428949823, 'SF-T', 'Disapproved'),
('Parks and Recreation', '308 Willow Avenue', 1428949823, 'SF-T', 'Approved'),
('Planning', '308 Willow Avenue', 1428949823, 'SF-T', 'Approved'),
('Transportation', '308 Willow Avenue', 1428949823, 'SF-T', 'Approved'),
('Utilities', '308 Willow Avenue', 1428949823, 'SF-T', 'Approved'),

('Environmental', '915 Ashford Lane', 1428949842, 'SF-T', 'Approved'),
('Parks and Recreation', '915 Ashford Lane', 1428949842, 'SF-T', 'Disapproved'),
('Planning', '915 Ashford Lane', 1428949842, 'SF-T', 'Approved'),
('Transportation', '915 Ashford Lane', 1428949842, 'SF-T', 'Approved'),
('Utilities', '915 Ashford Lane', 1428949842, 'SF-T', 'Approved'),

('Environmental', '2275 Pine Hollow Road', 1428949862, 'SF-T', 'Disapproved'),
('Parks and Recreation', '2275 Pine Hollow Road', 1428949862, 'SF-T', 'Disapproved'),
('Planning', '2275 Pine Hollow Road', 1428949862, 'SF-T', 'Disapproved'),
('Transportation', '2275 Pine Hollow Road', 1428949862, 'SF-T', 'Disapproved'),
('Utilities', '2275 Pine Hollow Road', 1428949862, 'SF-T', 'Disapproved'),

('Environmental', '763 Briarstone Court', 1436692085, 'MF-NS', 'Approved'),
('Parks and Recreation', '763 Briarstone Court', 1436692085, 'MF-NS', 'Approved'),
('Planning', '763 Briarstone Court', 1436692085, 'MF-NS', 'Disapproved'),
('Transportation', '763 Briarstone Court', 1436692085, 'MF-NS', 'Approved'),
('Utilities', '763 Briarstone Court', 1436692085, 'MF-NS', 'Approved');

CREATE TABLE compliance (
    parcel_ID BIGINT PRIMARY KEY,
    permit_number VARCHAR(10),
    CO_Date DATE,
    compliance_status VARCHAR(20),
    market_value DECIMAL(12, 2)
);

SELECT *
FROM compliance;