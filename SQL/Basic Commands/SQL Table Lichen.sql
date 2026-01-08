# create lichen db
create database lichenInfo;
use lichenInfo;

create table lichenInformation(name varchar(30), id int, description varchar(200),  region varchar(30));
alter table lichenInformation modify region varchar(40);
insert into lichenInformation values("Usnea", 1, "Old Man's Beard is a pale greenish-gray, shrubby lichen, resembling hair or tassels hanging from trees, characterized by a distinctive white stretchy, round branches and tolerance for clean air.", "Europe");
insert into lichenInformation values("Peltigera aphthosa", 2, "Is a large, leafy lichen, green when wet, pale when dry, characterized by dark, wart-like 'freckles', containing nitrogen-fixing cyanobacteria and larger brown/tan reproductive discs.", "North America");
insert into lichenInformation values("Acroscyphus sphaerophoroides", 3, "The Crab Eye lichen occurs in moist habitats, including Montane Forest with maritime influences, western mesic Forest on Pacific Coast of North America, alpine tundra, and subalpine tree line.", "North America/South America/Asia");

select * from lichenInformation;