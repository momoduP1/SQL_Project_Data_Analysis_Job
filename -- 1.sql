-- 1. Create a temporary staging table matching structure
CREATE TEMP TABLE temp_company_dim (LIKE company_dim INCLUDING ALL);

-- 2. Load CSV into temporary table
copy temp_company_dim FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/company_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- 3. Insert only new records that do not conflict
INSERT INTO company_dim
SELECT * FROM temp_company_dim
ON CONFLICT (company_id) DO NOTHING;

-- 4. Clean up
DROP TABLE temp_company_dim;

SELECT setval(
    pg_get_serial_sequence('company_dim', 'company_id'),
    COALESCE(MAX(company_id), 1)
) FROM company_dim;

SELECT COUNT(*) AS total_companies FROM company_dim;




copy skills_dim FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/skills_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

copy job_postings_fact FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/job_postings_fact.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

copy skills_job_dim FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/skills_job_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');




TRUNCATE TABLE skills_job_dim, job_postings_fact, skills_dim, company_dim RESTART IDENTITY CASCADE;

copy company_dim FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/company_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

copy skills_dim FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/skills_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

copy job_postings_fact FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/job_postings_fact.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

copy skills_job_dim FROM 'C:/Users/MOMODU/Downloads/SQL_Project_Data_Analysis_Job/csv_files/skills_job_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');