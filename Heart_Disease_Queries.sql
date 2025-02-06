-- 1. Count total patients
SELECT COUNT(*) AS total_patients FROM heart_disease_data;

-- 2. Count patients based on Target values
SELECT 
    COUNT(*) AS total_patients, 
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases,
    SUM(CASE WHEN Target = 'No' THEN 1 ELSE 0 END) AS no_target_cases
FROM heart_disease_data;

-- 3. Average cholesterol by gender
SELECT Gender, AVG(Cholesterol) AS avg_cholesterol 
FROM heart_disease_data
GROUP BY Gender;

-- 4. Count of patients by age with target cases
SELECT Age, 
       COUNT(*) AS total_patients, 
       SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases
FROM heart_disease_data
GROUP BY Age
ORDER BY Age;

-- 5. Count of patients with heart disease by Resting_Bps
SELECT Resting_Bps, COUNT(*) AS patient_count
FROM heart_disease_data
WHERE Target = 'Yes'
GROUP BY Resting_Bps
ORDER BY Resting_Bps DESC;

-- 6. Count of patients and target cases by Chest Pain Type
SELECT Chest_Pain_Type, 
       COUNT(*) AS total_patients, 
       SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases
FROM heart_disease_data
GROUP BY Chest_Pain_Type
ORDER BY target_cases DESC;

-- 7. Age group classification and target cases
SELECT 
    CASE 
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        WHEN Age BETWEEN 50 AND 59 THEN '50-59'
        WHEN Age BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS age_group, 
    COUNT(*) AS total_patients,
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases
FROM heart_disease_data
GROUP BY age_group
ORDER BY age_group;

-- 8. Average cholesterol and Resting_Bps by target
SELECT 
    Target, 
    AVG(Cholesterol) AS avg_cholesterol,
    AVG(Resting_Bps) AS avg_Resting_Bps
FROM heart_disease_data
GROUP BY Target;

-- 9. Gender-wise analysis of heart disease percentage
SELECT 
    Gender, 
    COUNT(*) AS total_patients,
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases,
    ROUND((SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS target_percentage
FROM heart_disease_data
GROUP BY Gender;

-- 10. Count of patients with Exercise Angina by Target
SELECT 
    Exercise_Angina, 
    COUNT(*) AS total_patients,
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases
FROM heart_disease_data
GROUP BY Exercise_Angina;

-- 11. Patients with high cholesterol and heart disease
SELECT * 
FROM heart_disease_data
WHERE Cholesterol > 250 AND Target = 'Yes'
ORDER BY Cholesterol DESC;

-- 12. Chest Pain Type and risk percentage
SELECT 
    Chest_Pain_Type, 
    COUNT(*) AS total_patients, 
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases,
    ROUND((SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS risk_percentage
FROM heart_disease_data
GROUP BY Chest_Pain_Type
ORDER BY risk_percentage DESC;

-- 13. Blood Pressure Category and target cases
SELECT 
    CASE 
        WHEN Resting_Bps < 120 THEN 'Low'
        WHEN Resting_Bps BETWEEN 120 AND 139 THEN 'Normal'
        WHEN Resting_Bps BETWEEN 140 AND 159 THEN 'High'
        ELSE 'Very High'
    END AS bp_category,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases
FROM heart_disease_data
GROUP BY bp_category
ORDER BY target_cases DESC;

-- 14. Count of patients based on Fasting Blood Sugar
SELECT 
    Fasting_Blood_Sugar, 
    COUNT(*) AS total_patients, 
    SUM(CASE WHEN Target = 'Yes' THEN 1 ELSE 0 END) AS target_cases
FROM heart_disease_data
GROUP BY Fasting_Blood_Sugar;

-- 15. Patients with high cholesterol or Resting_Bps and heart disease
SELECT Patient_No, Age, Gender, Cholesterol, Resting_Bps, Target 
FROM heart_disease_data
WHERE Target = 'Yes' 
AND (Cholesterol > 250 OR Resting_Bps > 140)
ORDER BY Cholesterol DESC, Resting_Bps DESC;

-- 16. Patients with high cholesterol, Resting_Bps, or Exercise Angina but no heart disease
SELECT Patient_No, Age, Gender, Cholesterol, Resting_Bps, Exercise_Angina
FROM heart_disease_data
WHERE Target = 'No'
AND (Cholesterol > 240 OR Resting_Bps > 150 OR Exercise_Angina = 'Yes');
