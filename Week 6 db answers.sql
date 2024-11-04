-- show databases;
-- use newschema;

-- question 1
SELECT first_name, last_name, provider_specialty
from providers;

-- question 2
SELECT 
    p.patient_id, 
    p.first_name, 
    p.last_name, 
    pr.provider_specialty
FROM 
    Patients p
INNER JOIN 
    Visits v ON p.patient_id = v.patient_id
INNER JOIN 
    Providers pr ON v.provider_id = pr.provider_id;
    
-- question 3
 SELECT 
    p.patient_id, 
    p.first_name, 
    p.last_name, 
    v.date_of_visit
FROM 
    Patients p
LEFT JOIN 
    Visits v ON p.patient_id = v.patient_id;
  
 -- question 4 
SELECT providers.provider_name, COUNT(visits.visit_id) AS visit_count
FROM providers
INNER JOIN visits ON providers.provider_id = visits.provider_id
GROUP BY providers.provider_name;

-- question 5
SELECT 
    p.patient_id,
    p.first_name,
    p.last_name,
    a.admission_date,
    a.discharge_date
FROM 
    Patients p
JOIN 
    Admissions a ON p.patient_id = a.patient_id
WHERE 
    a.admission_id IN (
        SELECT admission_id 
        FROM Visits 
        WHERE visit_type = 'Admission'
    );

 
    
    
    
    
    
    
    
    
    
    
    
    
