
WITH Top_paying_job AS (
 SELECT job_id,
       job_title_short,
       salary_year_avg AS salary,
       job_posted_date,
       name AS company_name


 FROM job_postings_fact
 LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
 WHERE (salary_year_avg IS NOT NULL 
       AND job_location = 'Anywhere')
 ORDER BY salary_year_avg DESC
 LIMIT 10)

SELECT 
  Top_paying_job.*,
  skills
 FROM Top_paying_job
INNER JOIN skills_job_dim ON Top_paying_job.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary DESC 


-- KEY INSIGHT--
--* **More skills do not necessarily mean higher pay**; the $550K role required only SQL and Python.
--* **SQL and Python are the strongest recurring skills**, appearing across most high-paying roles.
--* **Engineering roles require broader skill stacks**, but this did not translate into higher salaries in this dataset.
--* **Skill combinations matter more than skill quantity**, with SQL + Python showing a particularly strong salary association.
--* Overall, **salary appears to depend more on the role and value of the skills than the number of skills required**.


-- JSON FILE--
[
  {
    "job_id": 40145,
    "job_title_short": "Data Scientist",
    "salary": "550000.0",
    "job_posted_date": "2023-08-16 16:05:16",
    "company_name": "Selby Jennings",
    "skills": "sql"
  },
  {
    "job_id": 40145,
    "job_title_short": "Data Scientist",
    "salary": "550000.0",
    "job_posted_date": "2023-08-16 16:05:16",
    "company_name": "Selby Jennings",
    "skills": "python"
  },
  {
    "job_id": 1714768,
    "job_title_short": "Data Scientist",
    "salary": "525000.0",
    "job_posted_date": "2023-09-01 19:24:02",
    "company_name": "Selby Jennings",
    "skills": "sql"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "sql"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "python"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "java"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "c++"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "cassandra"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "spark"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "hadoop"
  },
  {
    "job_id": 627602,
    "job_title_short": "Senior Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-08-30 10:06:34",
    "company_name": "Algo Capital Group",
    "skills": "tableau"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "sql"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "python"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "java"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "cassandra"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "spark"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "hadoop"
  },
  {
    "job_id": 1131472,
    "job_title_short": "Data Scientist",
    "salary": "375000.0",
    "job_posted_date": "2023-07-31 14:05:21",
    "company_name": "Algo Capital Group",
    "skills": "tableau"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "python"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "scala"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "aws"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "excel"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "terraform"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "kubernetes"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "docker"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "chef"
  },
  {
    "job_id": 1480102,
    "job_title_short": "Machine Learning Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-21 22:37:17",
    "company_name": "Harnham",
    "skills": "ansible"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "python"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "spark"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "pandas"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "numpy"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "pyspark"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "hadoop"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "kafka"
  },
  {
    "job_id": 157003,
    "job_title_short": "Data Engineer",
    "salary": "325000.0",
    "job_posted_date": "2023-02-17 18:11:49",
    "company_name": "Engtal",
    "skills": "kubernetes"
  }
]--