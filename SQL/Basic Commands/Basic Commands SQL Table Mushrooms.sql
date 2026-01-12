# Create database 
create database QaDB;
# point to database
use QaDB;

drop table mushroomInfo;
# Create table
create table mushroomInfo(id int AUTO_INCREMENT PRIMARY KEY, name varchar(30), type varchar(15), description varchar(200), region varchar(30));
describe mushroomInfo;
# Insert records
insert into mushroomInfo (name,type,description,region) values("Amanita Muscaria", "poisonous", "Fly Agaric, is a red-capped mushroom with white spots and gills, has large size, hallucinogenic properties, and symbiotic relationship with trees in forests; considered poisonous and rarely deadly.","Europe/Asia/North America");
insert into mushroomInfo (name,type,description,region) values("Tricholoma matsutake", "edible", "Highly prized, edible wild mushroom known in Japanese cuisine for its potent, spicy aroma (like cinnamon and pine) and meaty texture, growing in a symbiotic relationship with pine roots.", "Asia");
insert into mushroomInfo (name,type,description,region) values("Trametes versicolor", "medicinal", "Turkey Tail, is a fungus that grows in tiers on dead hardwood. Identified by its thin bracket surface resembling a turkey's tail, white pore underside, and lack of a stem. It is medicinally prized.", "Worldwide");
insert into mushroomInfo (name,type,description,region) values("Geastrum triplex", "non-edible", "Is a fungus that starts as a ball, then its outer layer splits into 4-8 star-like rays, revealing a central spore sac on a saucer-like base. This inedible mushroom is found in woodlands.", "Worldwide");
insert into mushroomInfo (name,type,description,region) values("Amanita phalloides", "poisonous", "The Death Cap is a poisonous fungus responsible for most fatal mushroom poisonings, it has a olive-green to yellowish cap and pure white gills. It's native to Europe often growing near oak and beech.", "Europe");
insert into mushroomInfo (name,type,description,region) values("Lentinula edodes", "edible", "Shiitake mushrooms are popular East Asian fungi known for their rich, savory, smoky flavor and meaty texture, adding deep umami to dishes, often grown on hardwood logs.", "Asia");
insert into mushroomInfo (name,type,description,region) values("Cordyceps militaris", "medicinal", "Scarlet caterpillar is a parasitic fungus that consists of a bright orange, club-shaped fruiting body. Rich in cordycepin, it is used in medicine for energy, inflammation, and immune support.", "Asia");
insert into mushroomInfo (name,type,description,region) values("Tricholomopsis rutilans", "non-edible", "Plums and Custard or Strawberry Mushroom, a very bitter and inedible fungus.These stately mushrooms colonize buried decaying conifer roots and formwonderfully photogenic groups.", "North America");
insert into mushroomInfo (name,type,description,region) values("Panaeolus africanus", "psychedelic", "It is a small, grayish-brown mushroom with a sticky cap that often cracks in sun, greyish-white flesh, and mottled black gills due to black spores, found on large herbivore dung like hippo/elephant.", "Africa");
insert into mushroomInfo (name,type,description,region) values("Tuber melanosporum", "edible", "The Périgord or Black Winter Truffle, is a highly prized edible fungus with a rough, dark brown, warty skin and a round shape, typically up to 10cm wide.", "Europe/Asia/North America");
insert into mushroomInfo (name,type,description,region) values("Tuber magnatum", "edible", "The Piedmont white truffle, is a prized, aromatic subterranean fungus with a irregularly shaped body that's pale growing in symbiosis with trees like oak and hazel in moist, calcium-rich soils.", "Europe");
insert into mushroomInfo (name,type,description,region) values("Pleurotus", "edible", "The Oyster Mushroom, is an edible fungus known for its fan-shaped, shell-like cap (white, grey, tan, or blue) growing in clusters on hardwood trees and prized for its savory flavor and meaty texture.", "Europe/Asia/North America");
insert into mushroomInfo (name,type,description,region) values("Agaricus bisporus", "edible", "The button, white, cremini, or portobello mushroom is characterized by its thick, fleshy cap (white to brown) all growing from a robust mycelium in nutrient-rich compost.", "Europe/Asia/North America");
insert into mushroomInfo (name,type,description,region) values("Laetiporus sulphureus", "edible", "Chicken-of-the-Woods, is a brigh vibrant orange-yellow fungus that grow in overlapping tiers on hardwood trees forming large clusters and known for its chicken-like taste and texture when cooked.", "Europe/North America");
insert into mushroomInfo (name,type,description,region) values("Morchellaceae", "edible", "Morels are prized fungi, characterized by their distinctive honeycomb or pitted, ridged caps and hollow stems, growing in diverse habitats like woodlands during spring.", "Europe/Asia/North America");
insert into mushroomInfo (name,type,description,region) values("Ophiocordyceps sinensis", "edible", "Cordyceps is fungus that parasitizes ghost moth larvae, creating a mummified caterpillar body with a fungal fruiting body emerging from its head, prized in traditional medicine for its health benefits", "Asia");
insert into mushroomInfo (name,type,description,region) values("Calvatia gigantea", "edible", "Giant Puffball, is a round, white fungus with a smooth, leathery skin that grows in grasslands/fields and woodland edges, often resembling a football/basketball in size but capable of growing larger.", "Europe/Asia/North America/New Zealand");
select * from mushroomInfo;

# Update table structure
#add another column
#alter table mushroomInfo add region varchar(20);
#describe mushroomInfo;
#Modify updated column
alter table mushroomInfo modify region varchar(50);
#Delete new column
#alter table mushroomInfo drop region;

#Update table information - data
#update mushroomInfo set region="Worldwide" where name="Trametes versicolor";

#Create a table for an edible mushroom e-commerce
drop table mushroomStock;
create table mushroomStock(id int AUTO_INCREMENT PRIMARY KEY, name varchar(30), product_code varchar(8)not null, grams int, price int, availability boolean, commonName varchar(30), presentation varchar(10));
describe mushroomStock;
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Tricholoma matsutake", "MA20D", 30, 500, true, "Matsutake", "dry");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Tricholoma matsutake", "MA20F", 100, 1000, true, "Matsutake", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Lentinula edodes", "SHI30F", 200, 600, true, "Shiitake", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Lentinula edodes", "SHI30D", 100, 450, true, "Shiitake", "dry");
#update mushroomStock set id=2 where name="Lentinula edodes";
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Tuber melanosporum", "BT10F", 50, 1000, false, "Black Truffles", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Tuber magnatum", "WT10F",50, 3000, false, "White Truffles", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Pleurotus", "OM40F", 200, 100, true, "Oyster Mushroom", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Pleurotus", "OM40D", 100, 100, true, "Oyster Mushroom", "dry");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Agaricus bisporus B", "PB50F", 100, 120, true, "Portobello Mushroom", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Agaricus bisporus A", "BM50F", 200, 50, true, "Button Mushroom", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Calvatia gigantea", "GP50F", 100, 250, true, "Gigant Puffball", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Laetiporus sulphureus", "CW40F", 100, 350, true, "Chicken of the Woods", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Morchellaceae", "MO20F", 100, 800, true, "Morel", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Morchellaceae", "MO20D", 50, 600, false, "Morel", "dry");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Ophiocordyceps sinensis", "CO10D", 80, 4000, true, "Cordyceps", "dry");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Ophiocordyceps sinensis", "CO10P", 40, 8000, true, "Cordyceps", "powder");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Ophiocordyceps sinensis", "CO10F", 100, 6000, false, "Cordyceps", "fresh");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Tuber magnatum", "WT10P", 10, 3500, true, "White Truffles", "powder");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values("Tuber melanosporum", "BT10P", 10, 3000, true, "Black Truffles", "powder");
insert into mushroomStock (name, product_code, grams, price, availability, commonName, presentation) values(null, "Null", null, null, true, null, null);
select * from mushroomStock;

# Create orders table
drop table orders;
create table orders(client_name varchar(20), client_lastname varchar(20), age int, internal_id varchar(10), foreign key(internal_id) references customers(internal_id) ON DELETE CASCADE, country_code varchar(3), product_qty int, order_total int, order_status varchar(15), loyalty_customer boolean, premium_member boolean, order_date varchar(10));
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Mercedes", "Benz", 76, "76MBG", "GER", 15, 5000, "Delivered", true, true, "10-10-2015");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Steve", "Harrington", 25, "25SHU", "USA", 4, 290, "In progress", true, false, "19-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Maria Fernanda", "Farias", 35, "35MFE", "ESP", 3, 1000, "Cancelled", false, false, "12-03-2017");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Jean Claude", "Lafayette", 42, "42JLF", "FRA", 7, 4000, "Delivered", true, true, "01-06-2016");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Stephanie", "Khumalo", 19, "19SKKE", "KE", 3, 900, "Open", false, false, "20-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Ryu", "Jung", 27, "27RJKR", "KR", 5, 1800, "In progress", true, false, "18-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Jorge", "Perez", 52,  "52JPM", "MEX", 8, 3800, "Delivered", true, true, "11-04-2018");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Linda", "Chang", 19, "19LCCN", "CN", 2, 6000, "Delivered", true, true, "29-07-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Charlotte", "Bronte", 21, "21CBGB", "GBR", 2, 2000, "Delivered", false, true, "07-11-2018");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Anders", "Hansen", 29, "29AHN", "NOR", 7, 9000, "Open", true, true, "29-08-2010");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Dolly", "Parton", 26, "26DPCA", "CAN", 30, 1600, "Delivered", true, true, "13-05-2015");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Kim", "Joo", 36, "36KJKR", "KR", 6, 3200, "Delivered", true, false, "13-05-2018");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Belinda", "Benavides Gomez", 47, "47BBM", "MEX", 2, 2000, "Delivered", true, false, "10-02-2017");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Hans", "Guttenberg", 67, "67HGG", "GER", 1, 500, "Open", false, false, "20-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Kuba", "Wachowski", 27, "27KWP", "POL", 5, 1800, "Delivered", false, false, "16-12-2018");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Larry", "Sulivan", 82, "82LSU", "USA", 2, 5500, "Delivered", false, false, "09-11-2017");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Vladimir", "Putin", 78, "78VPR", "RUS", 1, 6000, "Cancelled", false, false, "06-10-2015");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Stacey", "Lopez", 18, "18SLU" ,"USA", 2, 2000, "Open", false, true, "20-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Lee", "Hung", 26, "26LHKR", "KR", 2, 1900, "Cancelled", true, false, "13-05-2018");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Fatima", "Khalid", 46, "46FKUA", "UAE", 8, 9000, "Delivered", true, false, "19-12-2018");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Stephen", "Ndola", 42, "42SNZ", "ZM", 2, 850, "Open", true, false, "20-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Niklas", "Kvarforth", 43, "43NKS", "SWE", 2, 1900, "In Progress", true, false, "18-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Greta", "Zuckerberg", 18, "18GZA", "AT", 4, 3500, "Delivered", true, false, "30-07-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Hui", "Feng", 68, "68HFCN","CN", 6, 15000, "Delivered", true, false, "01-08-2019");
insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Sandra", "Pavlova", 29, "29SPR", "RUS", 4, 26000, "Cancelled", true, false, "31-08-2018");
#This row will fail as you cannot update the internal ID in the "foreign table"
#insert into orders (client_name, client_lastname, age, internal_id, country_code, product_qty, order_total,order_status, loyalty_customer, premium_member, order_date) value("Sandra", "Pavlova", 29, "28SPR", "RUS", 4, 26000, "Cancelled", true, false, "31-08-2018");
select * from orders;

drop table customers;
create table customers(name varchar(20), lastname varchar(20), age int, country_code varchar(20), internal_id varchar(8) PRIMARY KEY, address varchar(50), join_date varchar(10),  loyalty_customer boolean, premium_member boolean);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Mercedes", "Benz", 76, "GER", "76MBG", "Frankfurt Avenue 2387 - 29", "10-10-2015", true, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Steve", "Harrington", 25, "USA", "25SHU", "Palm Ave. 34 int 4", "19-08-2019", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Maria Fernanda", "Farias", 35, "ESP", "35MFE", "Callejones de los Remedios 2", "12-03-2017", false, false );
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Jean Claude", "Lafayette", 42, "FRA", "42JLF", "La Rue la Paix 43","01-06-2016", true, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Stephanie", "Khumalo", 19, "KE", "19SKKE","Serenghetti The House 372 - 23",  "20-08-2019",false, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Ryu", "Jung", 27, "KR", "27RJKR", "SSAM Bao Ji Tonkotsu #499", "18-08-2019", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Jorge", "Perez", 52, "MEX", "52JPM", "Av de los Ahuehuetes 387","11-04-2018", true, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Linda", "Chang", 19, "CN", "19LCCN", "Xi Ping Jung 347","29-07-2019", true, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Charlotte", "Bronte", 21, "GBR", "21CBGB", "Roper Avenue 37 - 2", "07-11-2018", false, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Anders", "Hansen", 29, "NOR", "29AHN", "Jorvik Internal 3", "29-08-2010", true, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Dolly", "Parton", 26, "CAN", "26DPCA", "Maple Log Avenue 18", "13-05-2015", true, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Kim", "Joo", 36, "KR", "36KJKR", "Ji Jeon St 599", "13-05-2018", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Belinda", "Benavides Gomez", 47, "MEX", "47BBM", "Calle De Los Rincones 9", "10-02-2017", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Hans", "Guttenberg", 67, "GER", "67HGG", "Guttenberg Haus 654", "20-08-2019", false, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Kuba", "Wachowski", 27, "POL", "27KWP", "Mt Wazouzki 3746","16-12-2018", false, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Larry", "Sulivan", 82, "USA", "82LSU", "Santa Barbara St. 59", "09-11-2017", false, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Vladimir", "Putin", 78, "RUS", "78VPR", "St. Petersburg 8764", "06-10-2015", false, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Stacey", "Lopez", 18, "USA", "18SLU", "Mt of the Joy 18", "20-08-2019", false, true);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Lee", "Hung", 26, "KR", "26LHKR", "The Street of Korea 45", "13-05-2018", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Fatima", "Khalid", 46, "UAE", "46FKUA", "Burj Khalifa #8-a", "19-12-2018", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Stephen", "Ndola", 42, "ZM", "42SNZ", "Victoria Falls Building #72-A1", "20-08-2019", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Niklas", "Kvarforth", 43, "SWE", "43NKS", "Norra Backebo 85",  "18-08-2019", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Greta", "Zuckerberg", 18, "AT", "18GZA", "Glocknerstrasse 73", "30-07-2019", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Hui", "Feng", 68, "CN", "68HFCN", "Bei Huan Wen 519", "01-08-2019", true, false);
insert into customers (name, lastname, age, country_code, internal_id, address, join_date, loyalty_customer, premium_member) value("Sandra", "Pavlova", 29, "RUS", "29SPR", "The Kremlin #81", "31-08-2018", true, false);
select * from customers;

drop table loyalty_customers;
create table loyalty_customers(client_id int AUTO_INCREMENT PRIMARY KEY, client_name varchar(20), client_lastname varchar(20), discount_applied int);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Mercedes", "Benz", 30);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Steve", "Harrington", 20);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Jean Claude", "Lafayette", 15);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Ryu", "Jung", 15);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Jorge", "Perez", 10);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Linda", "Chang", 20);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Anders", "Hansen", 30);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Dolly", "Parton", 10);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Kim", "Joo", 20);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Belinda", "Benavides Gomez", 15);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Lee", "Hung", 10);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Fatima", "Khalid", 30);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Stephen", "Ndola", 5);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Niklas", "Kvarforth", 10);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Greta", "Zuckerberg", 15);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Hui", "Feng", 30);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Donald", "Trump", 100);insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Mia", "Labouf", 50);
insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Vladimir", "Putin", 100);insert into loyalty_customers (client_name, client_lastname, discount_applied) value("Mia", "Labouf", 50);
select * from loyalty_customers;

#drop table providers;
create table providers (id int AUTO_INCREMENT PRIMARY KEY, company_name varchar(20), address varchar(50), country_code varchar(3), zipcode varchar(7), product_supplied varchar(30), price int, quantity_purchased_kg int, discount_applied boolean);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("Mushroom Farmers Inc", "Palm Alto #567-3", "USA", "084632", "Agaricus bisporus A", 5000, 8, 5);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("Mushroom Farmers Inc", "Palm Alto #567-3", "USA", "084632", "Agaricus bisporus B", 8000, 10, 5);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("Mushroom Farmers Inc", "Palm Alto #567-3", "USA", "084632", "Morchellaceae", 10000, 15, 0);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("Kinoko-en", "Shibuya Av.Kapporo #1845", "JPN", "12948", "Tricholoma matsutake", 20000, 15, 10);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("Kinoko-en", "Shibuya Av.Kapporo #1845", "JPN", "12948", "Lentinula edodes", 12000, 10, 10);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("La Farma di Fungo", "Campinia di Roma Trastevere #41", "ITL", "I3473", "Tuber melanosporum", 50000, 1, 0);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("La Farma di Fungo", "Campinia di Roma Trastevere #41", "ITL", "I3473", "Tuber magnatum", 90000, 1, 0);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("The Fantastic Fungi", "Chershire Upon Thames #1308-a", "GBR", "LN31PQ", "Pleurotus", 6000, 20, 10);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("The Fantastic Fungi", "Chershire Upon Thames #1308-a", "GBR", "LN31PQ", "Calvatia gigantea", 1200, 10, 10);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("The Fantastic Fungi", "Chershire Upon Thames #1308-a", "GBR", "LN31PQ", "Grifola frondosa", 1900, 15, 15);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("The Fantastic Fungi", "Chershire Upon Thames #1308-a", "GBR", "LN31PQ", "Laetiporus sulphureus", 2200, 20, 10);
insert into providers (company_name,address,country_code,zipcode,product_supplied,price,quantity_purchased_kg,discount_applied) value("Mogu nongchang", "Shezsheng Hin #A3405", "CN", "RCH4306", "Ophiocordyceps sinensis", 90000, 5, 0);
select * from providers;

#drop table promotions;
create table promotions(id int auto_increment primary key, name varchar(40), commonName varchar(30), product_code varchar(8) not null, presentation varchar(10), discount int, min_qty int, max_qty int, discount_code varchar(20), month varchar(3), description varchar(100), availability boolean);
insert into promotions (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Lentinula edodes", "Shiitake", "SHI30F", "fresh", 15, 10, 20, "VALENTINES2026","FEB", "Perfect ingredient for that Valentine's Meal", true);
insert into promotions (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Morchellaceae", "Morel", "MO20F", "fresh", 10, 5, 10, "EASTER2026","APR", "Enjoy our Easter Harvest with your family.", true);
insert into promotions (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Morchellaceae", "Morel", "MO20D", "dry", 10, 10, 15, "EASTER2026","APR", "Enjoy our Easter Harvest with your family.", true);
insert into promotions (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Laetiporus sulphureus", "Chicken of the Woods", "CW40F", "fresh", 20, 20, 30, "AUTUMN2026","SEP", "Ideal ingredient for the best autumn comfort meal.", false);
insert into promotions (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Agaricus bisporous B", "Portobello Mushroom", "PB50F", "fresh", 15, 15, 25, "SUMMER2026","JUL", "Great for grilling it in the BBQ day on a hot summer's day.", false);
insert into promotions (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Agaricus bisporous A", "Button Mushroom", "BM50F", "fresh", 15, 20, 25, "SPRING2026","MAR", "Enjoy out best seller produce during early Spring.", true);
select * from promotions;

#drop table sale;
create table sale(id int auto_increment primary key, name varchar(40), commonName varchar(30), product_code varchar(8) not null, presentation varchar(10), discount int default 50, min_qty int, max_qty int, discount_code varchar(20), month varchar(3), description varchar(100), availability boolean);
insert into sale (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Pleurotus", "Oyster Mushroom", "OM40D", "dry", 50, 10, 20, "WINTERSALE2025","DEC", "UP TO 50% OFF - SELECTED PRODUCTS ONLY", true);
insert into sale (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Pleurotus", "Oyster Mushroom", "OM40F", "fresh", 50, 10, 20, "WINTERSALE2025","DEC", "UP TO 50% OFF - SELECTED PRODUCTS ONLY", true);
insert into sale (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Calvatia gigantea", "Gigant Puffball", "GP50F", "fresh", 50, 10, 20, "SUMMERSALE2026","AUG", "UP TO 50% OFF - SELECTED PRODUCTS ONLY", true);
insert into sale (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values("Agaricus bisporus B", "Portobello Mushroom", "PB50F", "fresh", 50, 10, 20, "SUMMERSALE2026","AUG", "UP TO 50% OFF - SELECTED PRODUCTS ONLY", true);
insert into sale (name, commonName, product_code, presentation, discount, min_qty, max_qty, discount_code, month, description, availability) values(null, null, "null", null,null, null,null, null, null, null, false);
select * from sale;

#delete a row
delete from mushroomInfo WHERE id=8 and type='non-edible';
select * from mushroomInfo;

# delete entire database
#create database abc;
#use abc;
#drop database abc;

# retrieve unique type - remove duplicates
select distinct type FROM mushroomInfo;

#get mushroom name from Africa
select name from mushroomInfo WHERE region="Europe";

select name from mushroomStock where(availability=true and price<600);

# two parameters for the query
select id, commonName from mushroomStock where(availability=false and price>=1000);

#two parameters and two conditions
select id, commonName, price from mushroomStock where(availability=false and price>=1000) or price>500;

#retrieve multiple data from one query with AND condition
select commonName, price from mushroomStock where (availability=true and price>1000);

#A query that will return no data
select commonName, price from mushroomStock where (availability=true and price>100000);

#Retrieve multiple mushrooms from ids 5-7
select commonName, id from mushroomStock where id in(5,6,7);
select commonName, id, price, presentation from mushroomStock where presentation in("dry", "powder") and availability=true;

#Select mushroom whose price range from 200 to 600
select id, name, price from mushroomStock where price between 200 and 600 order by price DESC;
select id, name, price from mushroomStock where price not between 1000 and 10000 order by price DESC;

#Select mushroom price not to be 350-600
select * from mushroomInfo;

#Get all regions that contain Asia
select id, name, region from mushroomInfo where region like "%Asi%";

#Get all non edible and edible mushroom
select id, name, type from mushroomInfo where type like "%edible";

select * from orders;

#Get the sum of all order totals by country
select sum(order_total), country_code from orders group by country_code;
#Get maximum amount per country
select max(order_total), country_code from orders group by country_code;
#Get minimum amount per country
select min(order_total), country_code from orders group by country_code;
#Get maximum on non cancelled orders
select max(order_total), country_code from orders where order_status!="Cancelled" group by country_code;
#Get average of order total per country
select avg(order_total), country_code from orders group by country_code;
#Get the total count per each group
select count(*), country_code from orders group by country_code;
#Condition on group by results - get contries that have at least 2 records
select count(*), country_code from orders group by country_code having count(*)>=2;

select count(*), country_code from orders group by country_code;

#Return the sum of order totals in those countries where there is no status cancelled and they have at least 2 records
select sum(order_total), country_code from orders Where order_status!="Cancelled" group by country_code having count(*)>=2;

#Get the average products per country order in descending
select avg(product_qty) AS avg_prod_qty, country_code from orders group by country_code order by avg_prod_qty desc ;

#Get the country that spends less than 2000 avg per month, ignore spain
select avg(order_total) as avg_order_total, country_code from orders where country_code!="ESP" group by country_code having avg_order_total<2000 order by avg_order_total desc;

# Sum order totals from al North America countries
select sum(order_total) as northAm_total_sum from orders where country_code="CAN" or country_code="USA" or country_code="MEX";
select sum(order_total) as asia_total_sum from orders where country_code="KR" or country_code="CN";

#Get country that buys more products - USA vs CH
select sum(product_qty) as sum_prod_qty, country_code from orders where country_code="USA" or country_code="CN" group by country_code order by sum_prod_qty desc;

#Get european country that buys more products over 6 products only
select sum(product_qty) as sum_prod_qty, country_code from orders where country_code="FRA" or country_code="ESP" or country_code="GBR" or country_code="AT" or country_code="SWE" or country_code="NOR" or country_code="POL" group by country_code having sum_prod_qty>6 order by sum_prod_qty desc;

#Get european country that spent over 3000 average
select avg(order_total) as avg_ord_total, country_code from orders where country_code="FRA" or country_code="ESP" or country_code="GBR" or country_code="AT" or country_code="SWE" or country_code="NOR" or country_code="POL" group by country_code having avg_ord_total>3000 order by avg_ord_total desc;

#Get mushrooms from Asia
select name, region from mushroomInfo;

#Subqueries 
# The column must be the name from both tables. You need one common table
# Get information of the product that is sold in presentation of 40 g / 10 g
select name, region, description from mushroomInfo where name=(select name from mushroomStock where grams=40);
select name, region, description from mushroomInfo where name=(select name from mushroomStock where grams=10);

#Get information of the product that is sold in presentation of 100 g
#If subquery returns more than one operator use "in"
select name, region, description from mushroomInfo where name in(select name from mushroomStock where grams=100);

#Joins - you need to link 2 common columns from different tables
select c.name, m.price, m.presentation, c.region, c.description from mushroomInfo as c 
join mushroomStock as m on c.name=m.name;

#get price of Asian mushrooms over 1400
select c.name, sum(m.price) as sum_price, c.region from mushroomInfo as c 
join mushroomStock as m on c.name=m.name where c.region="Asia" 
group by c.name having sum_price>1400 order by sum_price desc;

#Get minimum price of Asian mushrooms for products under 1000
select c.name, min(m.price) as sum_price, c.region from mushroomInfo as c 
join mushroomStock as m on c.name=m.name where c.region="Asia" 
group by c.name having sum_price<1000 order by sum_price asc;

# Get discount information from each loyalty customer who has placed an order
select lm.client_name, lm.client_lastname, lm.discount_applied, o.order_total from loyalty_customers as lm
inner join orders as o on lm.client_lastname=o.client_lastname;

#Get all order_totals from all clients who have ordered a product even those without a discount
select o.client_name, lm.client_lastname, lm.discount_applied, o.order_total from loyalty_customers as lm
right join orders as o on lm.client_lastname=o.client_lastname;

#Get all order_totals even those without a discount including loyal members who have not placed an order yet
select lm.client_name, lm.client_lastname, lm.discount_applied, o.order_total from loyalty_customers as lm
left join orders as o on lm.client_lastname=o.client_lastname;

#Get clients who have discount >20 and have spent at least 6000
select lm.client_lastname, lm.discount_applied, o.order_total from loyalty_customers as lm
inner join orders as o on lm.client_lastname=o.client_lastname 
where lm.discount_applied >20 and o.order_total>=6000;

# Create view to only get information from providers from UK And USA
create view usuk_providers as select * from providers where country_code="USA" or country_code="GBR";
select * from usuk_providers;
select avg(price) from usuk_providers; #4900
#Select company whose prices are above average
select company_name, avg(price) from usuk_providers group by company_name having avg(price)>(select avg(price) from usuk_providers); #7600

#SQL String functions
#concat - Concatenating 2 strings - concatenate address, country code and zipcode
select concat(address," ", country_code , " ",zipcode) as complete_address from usuk_providers;
#substring break a string to extract only a value - get first 3 letters of name of product supplied
select substr(product_supplied,1,3) as product_initials, product_supplied from usuk_providers;
#replace text
select replace(company_name, "Mushroom", "fungi") from usuk_providers;
#get length of all company names
select length(company_name) from usuk_providers where company_name="The Fantastic Fungi";
select trim(" f u n g i  ");
#get top limit - sql server is top/
select company_name from usuk_providers limit 3;

#Unions - bind iformation into a single table
select * from promotions;
select * from sale;
#duplicates are allowed in unions
select * from promotions union (select * from sale);
# Get products on sale with promotion - use intersect if supported (Oracle)
select * from promotions where product_code in (select product_code from sale);
# Exists - if product is on sale in the sales table, return all stock from a different table
select * from mushroomInfo where exists(select * from sale where product_code="PB50F");
# Case - Manipulate content of table on runtime and give a table on fly
# add extra 10 percent to portobello PB50F 
select name, commonName, discount, case product_code
when "PB50F" then discount+10
else discount end
'New Discount' from promotions;

#Delete a record from a primary key before deleting the dependency (foreign key)
#delete from customers where internal_id="29SPR"; # Cannot delete or update parent row
#delete from orders where internal_id="29SPR";  #Deleted because there is no dependency
#delete from customers where internal_id="29SPR"; #After deleting dependency you can delete parent data (primary key record)

# By applying ON DELETE CASCADE now we can delete from parent table without having to delete the child record first
#delete from customers where internal_id="76MBG";