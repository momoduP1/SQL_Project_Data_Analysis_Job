
SELECT 
       skills,
       ROUND(AVG(salary_year_avg),0) AS avg_salary

FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' 
AND salary_year_avg IS NOT NULL AND job_work_from_home = TRUE
GROUP BY
        skills
ORDER BY
       avg_salary DESC
LIMIT 25;



--KEY INSIGHTS--

--PySpark stands out significantly, with the highest average salary at $208K, suggesting strong demand for big-data/large-scale processing skills.
--Cloud/data engineering skills such as Databricks, Kubernetes, GCP, and Airflow show solid salary associations, generally around $120K–$142K.
--Python ecosystem skills—Pandas, NumPy, Jupyter, and Scikit-learn—cluster around $126K–$153K, showing consistent value across data roles.
--DevOps/developer tools like Bitbucket, GitLab, Jenkins, and Kubernetes also appear relatively well-paid, particularly Bitbucket at $189K.--
--Overall, the trend suggests that specialized big-data, ML, and engineering skills command higher salaries than general-purpose supporting tools in this dataset--