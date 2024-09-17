-- USE hospital_db;
 
-- retrieving total number of patients in admission table
-- SELECT COUNT(*) AS total_admissions
-- FROM admissions;
 
 -- calculating average length of stay from patients
 -- SELECT AVG (DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay
--  FROM admissions;

-- grouping by admissions and calculating total number of admissions
-- SELECT primary_diagnosis, COUNT(*) AS total_admissions
-- FROM admissions
-- GROUP BY primary_diagnosis;

-- grouping by admissions by service and calculating by average stay
-- SELECT service, AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay
-- FROM admissions
-- GROUP BY service;

-- grouping discharge disposition and counting
-- SELECT discharge_disposition, COUNT(*) AS discharge_count
-- FROM discharges
-- GROUP BY discharge_disposition;

-- grouping admissions by service and total nuumber of admissions
-- SELECT service, 
-- COUNT(*) AS total_admissions
-- FROM admissions
-- GROUP BY service
-- HAVING COUNT(*) > 5;

-- calculating avg length of stay for patients admitted with stroke
-- SELECT
-- AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_of_stay
-- FROM admissions
-- WHERE primary_diagnosis = 'stroke'

-- grouping ed_visits by acuity and calculating total visits
-- SELECT acuity,
-- COUNT(*) as total_visit
-- FROM ed_visits
-- GROUP BY acuity;

-- grouping admissions by primary_diagnosis and service
-- SELECT primary_diagnosis, service,
-- COUNT(*)  AS total_admissions
-- FROM admissions
-- GROUP BY primary_diagnosis, service;
          
-- grouping admissions by month and calculating total number of admissions          
-- SELECT
-- FORMAT(admission_date , 'YYYY-MM') AS admission_month,
-- COUNT(*) AS total_admissions
-- FROM admissions
-- GROUP BY FORMAT(admission_date, 'YYYY-MM')
-- ORDER BY admission_month;

-- Finding the maximum length of stay for each primary_diagnosis
-- SELECT primary_diagnosis,
-- MAX(DATEDIFF(discharge_date, admission_date)) AS max_length_of_stay
-- FROM admissions
-- GROUP BY primary_diagnosis;





