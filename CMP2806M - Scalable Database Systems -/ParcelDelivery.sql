-- drop DATABASE ParcelDelivery;
CREATE DATABASE IF NOT EXISTS ParcelDelivery;
USE ParcelDelivery; 
CREATE TABLE Shift (
shift_id INT PRIMARY KEY AUTO_INCREMENT,
shift_start time NOT NULL,
shift_end time NOT NULL
);

INSERT INTO Shift(shift_start,shift_end) VALUES 
('08:00','11:55'),
('12:00','16:00');

CREATE TABLE Driver (
driver_id INT PRIMARY KEY AUTO_INCREMENT,
driver_name VARCHAR(255) NOT NULL,
driver_address VARCHAR(255) NOT NULL,
shift_id INT,
FOREIGN KEY (shift_id) REFERENCES Shift(shift_id)
);

INSERT INTO Driver(driver_name,driver_address,shift_id) VALUES 
('John Smith','39 GoldSmith Road',1),
('Brady Jones','54 Brooke Close',1),
('Joseph Leibgott','3 Anderson Close',1),
('Philip Fry','4 Bramley Lane',1),
('Frank Perconte','49 Windy Road',1),
('Sarah Chalke','7 Sacred Way',2),
('Glenn Rhee','25 Head Avenue',2),
('Amelia Clark','Dothraki Street',2),
('Jorge Ramirez','13 West Drive',2),
('Walter Butler','1 Gotham Road',2);

CREATE TABLE Parcel (
parcel_id INT PRIMARY KEY AUTO_INCREMENT,
parcel_address VARCHAR(255) NOT NULL,
parcel_status VARCHAR(255) NOT NULL,
parcel_due_date DATE NOT NULL,
parcel_delivery_date DATE,
driver_id INT NOT NULL,
FOREIGN KEY (driver_id) REFERENCES Driver (driver_id));

INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (1,"12 Church Lane","Delivered","2021-02-01","2021-02-01",9),(2,"69 Thors Way","Delivered","2021-02-02","2021-02-02",2),(3,"23 Curie Street","Delivered","2021-02-01","2021-02-01",5),(4,"12 Leo Street","Delivered","2021-02-07","2021-02-07",6),(5,"83 Turnip Avenue","Delivered","2021-02-06","2021-02-06",7),(6,"91 Veltman Street","Delivered","2021-02-04","2021-02-04",8),(7,"7 Lobotire Road","Delivered","2021-02-02","2021-02-02",6),(8,"34 Risque Road","Delivered","2021-02-06","2021-02-06",5),(9,"123 Pulsar Way","Delivered","2021-02-01","2021-02-01",8),(10,"125 Unified Way","Delivered","2021-02-04","2021-02-04",1);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (11,"1 Alabaster Avenue","Delivered","2021-02-07","2021-02-07",8),(12,"67 Williams Street","Delivered","2021-02-01","2021-02-01",6),(13,"113 Eustice Avenue","Delivered","2021-02-02","2021-02-02",1),(14,"44 Acorn Street","Delivered","2021-02-05","2021-02-05",2),(15,"11 Albany Road","Delivered","2021-02-06","2021-02-06",8),(16,"89 Macaulay Drive","Delivered","2021-02-04","2021-02-04",6),(17,"9 Commando Way","Delivered","2021-02-01","2021-02-01",4),(18,"1 Nectar Avenue","Delivered","2021-02-02","2021-02-02",8),(19,"99 Impediment Drive","Delivered","2021-02-03","2021-02-03",8),(20,"133 Roosevelt Avenue","Delivered","2021-02-01","2021-02-01",1);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (21,"56 Hard Lane","Delivered","2021-02-01","2021-02-01",3),(22,"135 Hill Lane","Delivered","2021-02-06","2021-02-06",4),(23,"39 Pacer Way","Delivered","2021-02-01","2021-02-01",2),(24,"18 Vulpera Street","Delivered","2021-02-04","2021-02-04",3),(25,"17 Fargo Lane","Delivered","2021-02-07","2021-02-07",1),(26,"92 Nutty Lane","Delivered","2021-02-01","2021-02-01",10),(27,"1 Tedium Drive","Delivered","2021-02-06","2021-02-06",8),(28,"121 Thoratic Drive","Delivered","2021-02-03","2021-02-03",2),(29,"62 Uppercrombie Avenue","Delivered","2021-02-04","2021-02-04",4),(30,"10 Poser Avenue","Delivered","2021-02-07","2021-02-07",2);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (31,"26 Vassal Avenue","Delivered","2021-02-05","2021-02-05",1),(32,"81 Lacrosse Road","Delivered","2021-02-03","2021-02-03",5),(33,"43 Enigma Way","Delivered","2021-02-04","2021-02-04",8),(34,"61 Washington Boulvevard","Delivered","2021-02-05","2021-02-05",6),(35,"90 Bose Street","Delivered","2021-02-05","2021-02-05",5),(36,"33 Marius Street","Delivered","2021-02-03","2021-02-03",6),(37,"39 Quesadilla Avenue.","Delivered","2021-02-06","2021-02-06",3),(38,"38 Apple Avenue","Delivered","2021-02-04","2021-02-04",2),(39,"5 Linux Road","Delivered","2021-02-01","2021-02-01",8),(40,"71 Steadman Street","Delivered","2021-02-03","2021-02-03",9);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (41,"96 Conservative Avenue","Delivered","2021-02-02","2021-02-02",4),(42,"51 Sage Avenue","Delivered","2021-02-04","2021-02-04",6),(43,"30 Augmentation Street","Delivered","2021-02-07","2021-02-07",3),(44,"40 Octopus Avenue","Delivered","2021-02-02","2021-02-02",3),(45,"7 Suspect Lane","Delivered","2021-02-01","2021-02-01",7),(46,"71 Adequate Avenue","Delivered","2021-02-06","2021-02-06",2),(47,"65 Hope Street","Delivered","2021-02-05","2021-02-05",8),(48,"11 Lily Lane","Delivered","2021-02-05","2021-02-05",9),(49,"49 Elite Avenue","Delivered","2021-02-04","2021-02-04",10),(50,"35 Delhi Street","Delivered","2021-02-01","2021-02-01",6);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (51,"98 Nuneaton Avenue","Delivered","2021-02-03","2021-02-03",3),(52,"70 Stampede Row","Delivered","2021-02-04","2021-02-04",7),(53,"58 Adipose Street","Delivered","2021-02-07","2021-02-07",10),(54,"11 Hungry Hill","Delivered","2021-02-07","2021-02-07",6),(55,"6 Bose Street","Delivered","2021-02-03","2021-02-03",7),(56,"33 Dior Avenue","Delivered","2021-02-02","2021-02-05",10),(57,"49 Hoots Avenue","Delivered","2021-02-01","2021-02-02",7),(58,"76 Galaxy Drive","Delivered","2021-02-07","2021-02-07",5),(59,"1 Eustice Avenue.","Delivered","2021-02-05","2021-02-05",7),(60,"56 Acorn Avenue","Delivered","2021-02-05","2021-02-05",3);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (61,"5 Industrial Avenue","Delivered","2021-02-06","2021-02-06",3),(62,"61 Acacia Avenue","Delivered","2021-02-06","2021-02-06",1),(63,"4 Lucius Way","Delivered","2021-02-02","2021-02-02",4),(64,"57 Lacrosse Avenue","Delivered","2021-02-02","2021-02-02",10),(65,"17 Elm Avenue","Delivered","2021-02-07","2021-02-07",7),(66,"9 Tedium Drive","Delivered","2021-02-03","2021-02-03",1),(67,"42 Hope Street","Delivered","2021-04-01","2021-02-04",5),(68,"2 Nectar Avenue","Delivered","2021-02-04","2021-02-04",7),(69,"81 Gravity Avenue","Delivered","2021-02-02","2021-02-02",9),(70,"8 Polite Road","Delivered","2021-02-07","2021-02-07",1);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (71,"19 Tellus Avenue","Delivered","2021-02-03","2021-02-03",4),(72,"70 Acacia Avenue","Delivered","2021-02-05","2021-02-05",4),(73,"38 Marius Avenue","Delivered","2021-02-07","2021-02-07",9),(74,"93 Munch Street","Delivered","2021-02-06","2021-02-06",6),(75,"47 Felucia Road","Delivered","2021-02-06","2021-02-06",10),(76,"12 Elm Street","Delivered","2021-02-07","2021-02-07",4),(77,"8 Albany Avenue","Delivered","2021-02-04","2021-02-04",9),(78,"24 Mole Road","Delivered","2021-02-04","2021-02-04",4),(79,"21 Varian Street","Delivered","2021-02-03","2021-02-03",10),(80,"44 Atom Road","Delivered","2021-02-06","2021-02-06",9);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (81,"93 Phoenix Street","Delivered","2021-02-01","2021-02-01",5),(82,"66 Riot Avenue","Delivered","2021-02-07","2021-02-07",4),(83,"40 Albany Avenue","Delivered","2021-02-04","2021-02-04",2),(84,"7 Quesadilla Avenue","Delivered","2021-02-04","2021-02-04",5),(85,"96 Octopus Avenue","Delivered","2021-02-07","2021-02-07",2),(86,"49 Hope Street","Delivered","2021-02-04","2021-02-04",1),(87,"8 Poser Road","Delivered","2021-02-05","2021-02-05",6),(88,"11 Probe Street","Delivered","2021-02-06","2021-02-06",7),(89,"14 Polite Road","Delivered","2021-02-04","2021-02-04",10),(90,"2 Mini Road","Delivered","2021-02-04","2021-02-04",3);
INSERT INTO `Parcel` (`parcel_id`,`parcel_address`,`parcel_status`,`parcel_due_date`,`parcel_delivery_date`,`driver_id`) VALUES (91,"51 Phoenix Street","Delivered","2021-02-05","2021-02-05",9),(92,"39 Semper Street","Delivered","2021-02-05","2021-02-05",10),(93,"68 Semper Street","Delivered","2021-02-05","2021-02-05",8),(94,"66 Industrial Avenue","Delivered","2021-02-07","2021-02-07",10),(95,"22 Palantir Avenue","Delivered","2021-02-05","2021-02-05",5),(96,"68 Ohio Road","Delivered","2021-02-06","2021-02-06",9),(97,"69 Hope Street","Delivered","2021-02-04","2021-02-04",9),(98,"22 Mole Road","Delivered","2021-02-06","2021-02-06",4),(99,"22 Linux Road","Delivered","2021-02-06","2021-02-06",5),(100,"77 Elite Avenue","Delivered","2021-02-07","2021-02-07",3);

CREATE TABLE Vehicle (
vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
vehicle_name VARCHAR(255) NOT NULL,
vehicle_colour VARCHAR(255),
driver_id INT NOT NULL,
FOREIGN KEY (driver_id) REFERENCES Driver(driver_id));

INSERT INTO Vehicle (vehicle_name,vehicle_colour,driver_id) VALUES 
('Ford Transit','White',1),
('Mercedes Sprinter','White',2),
('Vauxhall Vivaro','White',3),
('Volkswagon Transporter','White',4),
('Citroen Berlingo','White',5),
('Ford Transit','White',6),
('Mercedes Sprinter','White',7),
('Vauxhaul Vivaro','White',8),
('Volkswagon Transporter','White',9),
('Citroen Berlingo','White',10);

CREATE TABLE gps_device (
gps_device_id INT PRIMARY KEY AUTO_INCREMENT,
gps_device_location VARCHAR(255) NOT NULL,
gps_device_date_time datetime NOT NULL,
vehicle_id INT NOT NULL,
FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id));

INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (1,"Nubula Road","2021-02-01 14:00:42",9),(2,"Clandestine Street","2021-02-02 09:00:38",2),(3,"Velite Street","2021-02-01 11:00:10",5),(4,"Curry Avenue","2021-02-07 13:00:17",6),(5,"Excellence Road","2021-02-06 15:00:28",7),(6,"Quick Street","2021-02-04 13:00:34",8),(7,"Nomad Road","2021-02-02 16:00:31",6),(8,"Top Way","2021-02-06 08:00:07",5),(9,"Perry Road","2021-02-01 08:00:11",8),(10,"Tempor Road","2021-02-04 10:00:52",1);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (11,"Main Street","2021-02-07 14:00:06",8),(12,"Mint Street","2021-02-01 14:00:50",6),(13,"Marathon Road","2021-02-01 09:00:24",1),(14,"Nuclear Avenue","2021-02-02 10:00:29",2),(15,"Industrial Avenue","2021-02-06 15:00:01",8),(16,"Dollar Street","2021-02-04 15:00:37",6),(17,"Dish Street","2021-02-04 09:00:29",4),(18,"Quasi Avenue","2021-02-02 13:00:24",8),(19,"Blenheim Road","2021-02-03 10:00:50",8),(20,"Nettle Road","2021-02-01 8:00:47",1);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (21,"Porter Road","2021-02-01 08:00:01",3),(22,"Ultimate Avenue","2021-02-06 08:00:43",4),(23,"Elementium Road","2021-02-01 09:0:57",2),(24,"First Street","2021-02-04 08:00:57",3),(25,"Velite Street","2021-02-07 09:00:38",1),(26,"Rum Street","2021-02-01 15:0:36",10),(27,"European Road","2021-02-06 13:00:23",8),(28,"Duo Avenue","2021-02-03 10:00:29",2),(29,"Uppercrombie Avenue","2021-02-04 08:00:23",4),(30,"Silver Avenue","2021-02-07 09:00:40",2);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (31,"Lycan Way","2021-02-05 08:00:32",1),(32,"Elementium, Road","2021-02-03 08:00:26",5),(33,"Dolores Avenue","2021-02-04 15:00:17",8),(34,"Leggy Road","2021-02-05 13:00:48",6),(35,"Ace Avenue","2021-02-05 11:00:28",5),(36,"2912 Enigma Road","2021-02-03 12:00:29",6),(37,"Suspense Avenue","2021-02-06 10:00:31",3),(38,"Tortor Street","2021-02-04 08:00:21",2),(39,"Rising Street","2021-02-01 14:00:18",8),(40,"Eagle Avenue","2021-02-023 15:00:47",9);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (41,"Tempor Street","2021-02-02 10:00:54",5),(42,"Vita Close","2021-02-04 15:00:52",6),(43,"Nuclear Road","2021-02-07 08:00:17",3),(44,"Marius Avenue","2021-02-02 10:00:26",3),(45,"Premium Road","2021-02-01 12:00:14",7),(46,"Omaha Road","2021-02-06 10:00:15",2),(47,"Nelson Road","2021-02-05 14:00:55",8),(48,"Varian Street","2021-02-05 13:00:26",9),(49,"Red Lane","2021-02-04 14:00:35",10),(50,"Weller Street","2021-02-01 12:00:28",6);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (51,"Teller Road","2021-02-03 11:00:22",3),(52,"Quaser Street","2021-02-04 12:00:39",7),(53,"Musk Road","2021-02-07 13:00:45",10),(54,"Lester Avenue","2021-02-07 13:00:40",6),(55,"Turnpin Road","2021-02-03 12:00:44",7),(56,"Allegory Road","2021-02-05 12:00:22",10),(57,"Vulpera Way","2021-02-02 15:00:26",7),(58,"Commando Road","2021-02-07 08:00:20",5),(59,"Eagle Avenue","2021-02-05 13:00:46",7),(60,"East Street","2021-02-05 08:00:09",3);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (61,"Savoury Avenue","2021-02-06 09:00:50",3),(62,"Victory Road.","2021-02-06 10:00:59",1),(63,"Curry Avenue","2021-02-02 08:00:27",4),(64,"Justice Avenue","2021-02-02 14:00:43",10),(65,"Rum Street","2021-02-05 12:00:24",7),(66,"Auction Avenue","2021-02-03 11:00:39",1),(67,"New Street","2021-02-04 10:00:38",5),(68,"Valhalla Way","2021-02-04 15:00:56",7),(69,"Penne Street","2021-02-02 13:00:44",9),(70,"Present Street","2021-02-07 10:00:07",1);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (71,"Avery Avenue","2021-02-03 09:00:37",3),(72,"Liberty Drive","2021-02-05 09:00:02",4),(73,"United Street","2021-02-07 15:00:54",9),(74,"Leggy Avenue","2021-02-06 15:00:50",6),(75,"Premium Road","2021-02-06 15:00:39",10),(76,"Auction Avenue","2021-02-07 11:00:39",3),(77,"Industrial Avenue","2021-02-04 14:00:47",9),(78,"Liberty Drive","2021-02-04 08:00:43",4),(79,"Triton Road","2021-02-03 15:00:56",10),(80,"Construction Road","2021-02-06 15:00:42",9);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (81,"Mole Road","2021-02-01 11:00:00",5),(82,"Marius Street.","2021-02-07 08:00:36",4),(83,"Moss Road","2021-02-04 08:00:04",2),(84,"Valentine Road","2021-02-04 08:00:12",5),(85,"Archer Street","2021-02-07 09:00:33",2),(86,"Omaha Road","2021-02-04 08:00:30",1),(87,"Electric Avenue","2021-02-05 12:00:29",6),(88,"Rising Street","2021-02-02 12:00:34",7),(89,"Triton Road","2021-02-04 15:00:56",10),(90,"Semper Avenue","2021-02-04 09:00:41",3);
INSERT INTO `gps_device` (`gps_device_id`,`gps_device_location`,`gps_device_date_time`,`vehicle_id`) VALUES (91,"Main Street","2021-02-05 15:00:06",9),(92,"Appiah Way","2021-02-05 12:00:36",10),(93,"Hymn Street","2021-02-05 14:00:26",8),(94,"Avon Avenue","2021-02-07 15:00:06",10),(95,"Grass Road","2021-02-05 10:00:42",5),(96,"Nelson Road","2021-02-06 12:00:17",9),(97,"East Avenue","2021-02-04 12:00:42",9),(98,"Eagle Avenue","2021-02-04 08:00:33",4),(99,"Red Lane","2021-02-05 11:00:23",5),(100,"Penne Street","2021-02-07 11:00:52",3);



-- 4.1. The location of any vehicle and its driver at any hour during the working day.

-- SELECT gps_device_location, vehicle_name,driver_name, gps_device_date_time
-- FROM Driver
-- JOIN Vehicle
-- ON Vehicle.driver_id = Driver.driver_id
-- JOIN gps_device
-- ON gps_device.vehicle_id = Vehicle.vehicle_id
-- JOIN Parcel
-- ON Parcel.driver_id = Driver.driver_id
-- WHERE gps_device_date_time like '%2021-02-01 14:00%' AND vehicle_name like 'Volkswagon Transporter';

-- 4.2. Number of parcels delivered by any specific driver during a day’s work.
-- SELECT Driver.driver_id, driver_name,count(parcel_id) as number_of_parcels
-- FROM Driver
-- JOIN Parcel
-- ON Parcel.driver_id = Driver.driver_id
-- JOIN Shift
-- ON Shift.shift_id = Driver.shift_id
-- WHERE parcel_delivery_date like '%2021-02-01%' AND parcel_status like 'Delivered'
-- GROUP BY Driver.driver_id,parcel_delivery_date;

-- 4.3. A listing of all drivers.

-- SELECT Driver.driver_id, driver_name, driver_address, vehicle_name, vehicle_colour
-- FROM Driver
-- JOIN Vehicle
-- ON Vehicle.driver_id = Driver.driver_id;

-- 4.4. A listing of drivers who have driven only during morning hours shifts.
-- SELECT Driver.driver_id, driver_name, driver_address, shift_start, shift_end
-- FROM Driver
-- JOIN Shift
-- ON Shift.shift_id = Driver.shift_id
-- WHERE shift_start like '08:00:00' AND shift_end like '11:55:00';

-- 5. Choose any two queries from the above and implement them as Procedures.

-- 1. Procedure - Number of parcels delivered by any specific driver during a day’s work.
DELIMITER //
CREATE PROCEDURE parcel_count
(IN delivery_date DATE, IN status VARCHAR(255) )
BEGIN
  SELECT Driver.driver_id, driver_name,count(parcel_id) as number_of_parcels
	FROM Driver
	JOIN Parcel
	ON Parcel.driver_id = Driver.driver_id
	JOIN Shift
	ON Shift.shift_id = Driver.shift_id
	WHERE parcel_delivery_date like CONCAT('%',delivery_date,'%') AND parcel_status like status
	GROUP BY Driver.driver_id,parcel_delivery_date;

END //
DELIMITER ;
CALL parcel_count('2021-02-06','Delivered');


-- 2. Procedure - A listing of drivers who have driven only during morning hours shifts.
DELIMITER //
CREATE PROCEDURE driver_list_morning
(IN start_time time, IN end_time time )
BEGIN
    SELECT Driver.driver_id, driver_name, driver_address, shift_start, shift_end
	FROM Driver
	JOIN Shift
	ON Shift.shift_id = Driver.shift_id
	WHERE shift_start like start_time  AND shift_end like end_time ;

END //
DELIMITER ;
CALL driver_list_morning('08:00:00','11:55:00');




