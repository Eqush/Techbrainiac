-- USE hospital_db;

-- adding data to patients
-- SELECT * FROM patients;
-- INSERT INTO patients
--    (first_name, last_name, date_of_birth, gender, language)
-- VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');

-- changing language 
-- SELECT * FROM patients;
-- UPDATE patients
-- SET language = 'Spanish'
-- WHERE patient_id = 946;

-- deletting patient records
-- DELETE FROM patients
-- WHERE patient_id = 10 ;

-- replacing null email_address with N/A
-- SELECT 
-- first_name,
-- last_name, 
-- IFNULL(email_address, 'N/A') AS email_address_found
-- FROM providers;

-- SELECT 
-- first_name,
-- last_name,
-- COALESCE(phone_number, 'missing') AS missing_details
-- FROM providers;

-- bonus quiz
-- SELECT * 
-- FROM providers
-- WHERE provider_specialty = 'pediatrics'
-- AND (phone_number IS NULL OR email_address IS NULL);









