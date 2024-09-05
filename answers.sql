-- CREATE DATABASE hospital_db

-- USE hospital_db;

-- CREATE TABLE patients(
--   patient_id INT PRIMARY KEY AUTO_INCREMENT,
--    first_name VARCHAR(255) NOT NULL,
--  last_name VARCHAR(255) NOT NULL,
--    date_of_birth DATE NOT NULL,
--    gender VARCHAR(255),
--    language VARCHAR(255) NOT NULL
-- );

 -- CREATE TABLE patients(
 -- patient_id INT PRIMARY KEY AUTO_INCREMENT,
 -- first_name VARCHAR(50) NOT NULL,
 -- last_name VARCHAR(50) NOT NULL,
 -- date_of_birth DATE NOT NULL,
 -- gender VARCHAR(10),
 -- language VARCHAR(20) NOT NULL
-- );

-- CREATE TABLE visits(
--  visit_id INT PRIMARY KEY AUTO_INCREMENT,
--  patient_id INT NOT NULL,
--  provider_id INT NOT NULL,
--  date_of_visit DATE NOT NULL,
--  date_scheduled DATE NOT NULL,
--  visit_department_id INT NOT NULL,
--  visit_type VARCHAR(255) NOT NULL,
--  blood_pressure_systollic INT,
--  blood_pressure_diastollic DECIMAL,
--  pulse DECIMAL,
--  visit_status VARCHAR(255) NOT NULL
-- );

-- CREATE TEABLE ed_visits(
--  ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
-- visit_id INT NOT NULL,
-- patient_id INT NOT NULL,
-- acuity INT NOT NULL,
-- reason_for_visit VARCHAR(255) NOT NULL,
-- disposition VARCHAR(255) NOT NULL
--  );


--  CREATE TABLE admissions(
--  admission_id INT PRIMARY KEY AUTO_INCREMENT,
--  patient_id INT NOT NULL,
--  admission_date DATE NOT NULL,
--  discharge_date DATE NOT NULL,
--  disharge_disposition VARCHAR(255) NOT NULL,
--  service VARCHAR(255) NOT NULL,
--  primary_diagnosis VARCHAR(255) NOT NULL
--  );
    
--  CREATE TABLE discharges(
--  discharge_id INT PRIMARY KEY AUTO_INCREMENT,
--  admission_id INT NOT NULL,
--  patient_id INT NOT NULL,
--  discharge_date DATE NOT NULL,
--  discharge_disposition VARCHAR(255) NOT NULL
--  );