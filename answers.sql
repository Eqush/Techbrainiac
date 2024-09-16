-- USE hospital_db;

-- Select only first name,last name and date of birth
-- SELECT * FROM patients;
-- SELECT first_name, last_name and date_of_birth
-- FROM patients;

-- Select only providers id,first name and provider specialty
-- SELECT * FROM providers;
-- SELECT provider_id, first_name and provider_specialty
-- FROM providers;

-- retrieving names of patients whose name starts with "Ab"
-- SELECT * FROM patients
-- WHERE first_name LIKE "Ab%";

-- retrieving providers whose specialties end with "y"
-- SELECT * FROM providers
-- WHERE provider_specialty LIKE "y%";

-- retrieve all patients born after 01 January 1980
-- SELECT * FROM patients
-- WHERE date_of_birth > "1980-01-01";

-- retrieving visits where acuity level is 2 or higher
--  SELECT * FROM ed_visits
 -- WHERE acuity > "2";

-- retrieving the language spoken
-- SELECT * FROM patients;
-- SELECT language= ="spanish"
-- FROM patients;

-- retrieving visits with reason and disposition
-- SELECT * FROM ed_visits
-- WHERE reason_for_visit ="migraine"
-- AND disposition = "admissions";

-- retrieving birth date of patients born between 1975 nad 1980
-- SELECT * FROM patients
-- WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';

-- retrieving patients names and sorting them in alphabetical order
-- SELECT first_name, last_name
-- FROM patients
-- ORDER BY first_name ASC;
 
-- retrieving all visits starting from the most recent
-- SELECT* FROM visits
-- ORDER BY date_of_visit DESC;
  
-- retrieve primary diagnosis is "Stroke"  discharge disposition is "Home".
-- SELECT *
-- FROM admissions
-- WHERE primary_diagnosis = "stroke"
-- AND disharge_disposition = "Home";

-- providers who joined after 1995 and specialize in Pediatrics or Cardiology
-- SELECT *
-- FROM providers
-- WHERE date_joined > "1995-12-31"
-- AND provider_specialty IN ("pediatrics, cardiology");
   






