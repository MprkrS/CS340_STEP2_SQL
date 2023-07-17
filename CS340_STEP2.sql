SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT = 0;
-- Create Zoo_Animals table
CREATE TABLE Zoo_Animals (
  animal_id INT UNIQUE AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  species VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  birthdate DATE,
  classification VARCHAR(30) NOT NULL
  PRIMARY KEY(animal_id)
);

-- Create Locations table
CREATE TABLE Locations (
  location_id INT UNIQUE AUTO_INCREMENT,
  zoo_area VARCHAR(30) NOT NULL,
  enclosure VARCHAR(30) NOT NULL,
  animals_at_location INT NOT NULL,
  avg_daily_visitors INT NOT NULL
  PRIMARY KEY(location_id)
);

-- Create Employees table
CREATE TABLE Employees (
  employee_id INT UNIQUE AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  birthdate DATE NOT NULL,
  role_id INT NOT NULL,
  animals_under_care INT NOT NULL
  PRIMARY KEY(employee_id)
);

-- Create Employee_Roles table
CREATE TABLE Employee_Roles (
  role_id INT UNIQUE AUTO_INCREMENT,
  role_name VARCHAR(30) NOT NULL
  PRIMARY KEY(role_id)
);

-- Create Visitors table
CREATE TABLE Visitors (
  visitor_id INT UNIQUE AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  birthdate DATE,
  visitor_type VARCHAR(30) NOT NULL
  PRIMARY KEY(visitor_id)
);

-- Create Tickets table
CREATE TABLE Tickets (
  ticket_id INT UNIQUE AUTO_INCREMENT,
  visitor_id INT NOT NULL,
  visit_date DATE NOT NULL,
  ticket_price INT NOT NULL
  PRIMARY KEY(ticket_id)
);

-- Create Animal_Location_Histories table
CREATE TABLE Animal_Location_Histories (
  locations_history_id INT UNIQUE AUTO_INCREMENT,
  animal_id INT NOT NULL,
  location_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
  PRIMARY KEY(locations_history_id)
);

-- Data inserts for Entity Zoo_Animals
INSERT INTO `cs340_simmomat`.`Zoo_Animals` (`animal_id`, `name`, `species`, `sex`, `birthdate`, `classification`) VALUES ('1', 'Winter', 'Fennec Fox', 'Female', '2021-07-10', 'Fox');
INSERT INTO `cs340_simmomat`.`Zoo_Animals` (`animal_id`, `name`, `species`, `sex`, `birthdate`, `classification`) VALUES ('2', 'Simba', 'Lion', 'Male', '2019-11-02', 'Big Cat');
INSERT INTO `cs340_simmomat`.`Zoo_Animals` (`animal_id`, `name`, `species`, `sex`, `birthdate`, `classification`) VALUES ('3', 'Giselle', 'Reticulated Giraffe', 'Female', '2019-02-14', 'Mammal');
INSERT INTO `cs340_simmomat`.`Zoo_Animals` (`animal_id`, `name`, `species`, `sex`, `birthdate`, `classification`) VALUES ('4', 'Pippin', 'Gentoo Penguin', 'Male', '2020-07-25', 'Bird');
INSERT INTO `cs340_simmomat`.`Zoo_Animals` (`animal_id`, `name`, `species`, `sex`, `birthdate`, `classification`) VALUES ('5', 'Layla', 'Asian Elephant', 'Female', '2015-09-02', 'Mammal');
-- Data inserts for Entity Visitors
INSERT INTO `cs340_simmomat`.`Visitors` (`visitor_id`, `first_name`, `last_name`, `birthdate`, `visitor_type`) VALUES ('1', 'Jackson', 'Mitchell', '1990-07-15', 'Adult');
INSERT INTO `cs340_simmomat`.`Visitors` (`visitor_id`, `first_name`, `last_name`, `birthdate`, `visitor_type`) VALUES ('2', 'Savannah', 'Williams', '2001-03-20', 'Child');
INSERT INTO `cs340_simmomat`.`Visitors` (`visitor_id`, `first_name`, `last_name`, `birthdate`, `visitor_type`) VALUES ('3', 'Mason', 'Turner', '1978-09-10', 'Senior');
INSERT INTO `cs340_simmomat`.`Visitors` (`visitor_id`, `first_name`, `last_name`, `birthdate`, `visitor_type`) VALUES ('4', 'Harper', 'Collins', '1995-05-08', 'Adult');
INSERT INTO `cs340_simmomat`.`Visitors` (`visitor_id`, `first_name`, `last_name`, `birthdate`, `visitor_type`) VALUES ('5', 'Amelia', 'Johnson', '1985-12-12', 'Adult');
-- Data inserts for Entity Tickets
INSERT INTO `cs340_simmomat`.`Tickets` (`ticket_id`, `visitor_id`, `visit_date`, `ticket_price`) VALUES ('1', '1', '2023-01-05', '20');
INSERT INTO `cs340_simmomat`.`Tickets` (`ticket_id`, `visitor_id`, `visit_date`, `ticket_price`) VALUES ('2', '2', '2023-06-12', '12');
INSERT INTO `cs340_simmomat`.`Tickets` (`ticket_id`, `visitor_id`, `visit_date`, `ticket_price`) VALUES ('3', '3', '2023-07-10', '15');
INSERT INTO `cs340_simmomat`.`Tickets` (`ticket_id`, `visitor_id`, `visit_date`, `ticket_price`) VALUES ('4', '4', '2023-02-28', '20');
INSERT INTO `cs340_simmomat`.`Tickets` (`ticket_id`, `visitor_id`, `visit_date`, `ticket_price`) VALUES ('5', '5', '2022-09-15', '20');
-- Data inserts for Entity Employee_Roles
INSERT INTO `cs340_simmomat`.`Employee_Roles` (`role_id`, `role_name`) VALUES ('1', 'Big Cat Feeder');
INSERT INTO `cs340_simmomat`.`Employee_Roles` (`role_id`, `role_name`) VALUES ('2', 'Education Specialist');
INSERT INTO `cs340_simmomat`.`Employee_Roles` (`role_id`, `role_name`) VALUES ('3', 'Veterinary Technician');
INSERT INTO `cs340_simmomat`.`Employee_Roles` (`role_id`, `role_name`) VALUES ('4', 'Trainer');
INSERT INTO `cs340_simmomat`.`Employee_Roles` (`role_id`, `role_name`) VALUES ('5', 'Dietary Specialist');
-- Data inserts for Entity Employees
INSERT INTO `cs340_simmomat`.`Employees` (`employee_id`, `role_id`, `first_name`, `last_name`, `birthdate`, `animals_under_care`) VALUES ('1', '1', 'Phillip', 'Baker', '1982-05-01', '1');
INSERT INTO `cs340_simmomat`.`Employees` (`employee_id`, `role_id`, `first_name`, `last_name`, `birthdate`, `animals_under_care`) VALUES ('2', '1', 'Maya', 'Smith', '1986-12-05', '2');
INSERT INTO `cs340_simmomat`.`Employees` (`employee_id`, `role_id`, `first_name`, `last_name`, `birthdate`, `animals_under_care`) VALUES ('3', '2', 'Ali', 'Davis', '1972-10-11', '3');
INSERT INTO `cs340_simmomat`.`Employees` (`employee_id`, `role_id`, `first_name`, `last_name`, `birthdate`, `animals_under_care`) VALUES ('4', '1', 'Nour', 'Johnson', '1987-01-27', '4');
INSERT INTO `cs340_simmomat`.`Employees` (`employee_id`, `role_id`, `first_name`, `last_name`, `birthdate`, `animals_under_care`) VALUES ('5', '3', 'Omar', 'Anderson', '1990-07-15', '5');
-- Data inserts for Entity Locations
INSERT INTO `cs340_simmomat`.`Locations` (`location_id`, `zoo_area`, `enclosure`, `animals_at_location`, `total_visitors`) VALUES ('1', 'Jackson', 'Mitchell', '1990-07-15', 'Adult');
INSERT INTO `cs340_simmomat`.`Locations` (`location_id`, `zoo_area`, `enclosure`, `animals_at_location`, `total_visitors`) VALUES ('2', 'Savannah', 'Williams', '2001-03-20', 'Child');
INSERT INTO `cs340_simmomat`.`Locations` (`location_id`, `zoo_area`, `enclosure`, `animals_at_location`, `total_visitors`) VALUES ('3', 'Mason', 'Turner', '1978-09-10', 'Senior');
INSERT INTO `cs340_simmomat`.`Locations` (`location_id`, `zoo_area`, `enclosure`, `animals_at_location`, `total_visitors`) VALUES ('4', 'Harper', 'Collins', '1995-05-08', 'Adult');
INSERT INTO `cs340_simmomat`.`Locations` (`location_id`, `zoo_area`, `enclosure`, `animals_at_location`, `total_visitors`) VALUES ('5', 'Amelia', 'Johnson', '1985-12-12', 'Adult');
-- Data inserts for Entity Animal_Location_Histories
INSERT INTO `cs340_simmomat`.`Animal_Location_Histories` (`location_history_id`, `animal_id`, `start_date`) VALUES ('1', '2', '2020-07-16');
INSERT INTO `cs340_simmomat`.`Animal_Location_Histories` (`location_history_id`, `animal_id`, `start_date`, `end_date`) VALUES ('2', '1', '2020-01-01', '2023-01-10');
INSERT INTO `cs340_simmomat`.`Animal_Location_Histories` (`location_history_id`, `animal_id`, `start_date`, `end_date`) VALUES ('3', '4', '2019-03-12', '2023-07-16');
INSERT INTO `cs340_simmomat`.`Animal_Location_Histories` (`location_history_id`, `animal_id`, `start_date`, `end_date`) VALUES ('4', '5', '2022-02-20', '2022-11-10');
INSERT INTO `cs340_simmomat`.`Animal_Location_Histories` (`location_history_id`, `animal_id`, `start_date`, `end_date`) VALUES ('5', '3', '2021-06-10', '2022-12-31');

SET FOREIGN_KEY_CHECKS=1;
COMMIT;