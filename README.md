SQL Job Market Analysis Project

📊 Overview

This project contains a comprehensive set of SQL queries designed to analyze job market trends, top-paying roles, skill demands, and optimal skill combinations for data professionals (with a primary focus on Data Analysts and related fields) working remotely.

The analysis is structured into multiple sequential project files that explore compensation trends, high-demand tools, and the direct correlation between specific tech stacks and salary potential.

---

🛠️ Project File Breakdown

1. Top-Paying Jobs (`Project 1 Top_paying_job.sql`)

* **Objective:** Identifies the highest-paying remote job postings (filtered by `Anywhere` location) with specified yearly salaries.
* **Key Focus:** Pinpoints elite compensation packages across data roles.

2. Skills Required for Top-Paying Jobs (`Project_2 Skills required_Top_paying_jobs.sql`)

* **Objective:** Joins top-paying roles with associated skill requirements and company data.
* **Key Insights:**
* **More skills do not mean higher pay:** For instance, the top role paying $550K required only **SQL** and **Python**.
* **SQL and Python** are the most robust, recurring core skills across high-paying roles.
* **Skill combinations matter more than skill quantity**, with the SQL + Python pairing showing an exceptionally strong salary correlation.


. In-Demand Skills (`Project_3 In_demand_skills.sql`)

* **Objective:** Aggregates job postings to find the most frequently requested skills for remote Data Analyst roles.
* **Key Focus:** Highlights market saturation and the foundational tools every analyst should learn first.

4. Top-Paying Skills (`Project _4 Top_paying_skills.sql`)

* **Objective:** Computes the average yearly salary associated with specific skills for remote Data Analyst positions.
* **Key Insights:**
* **PySpark** leads significantly with the highest average salary (~$208K), highlighting massive demand for big-data processing capability.
* **Cloud & Data Engineering tools** (Databricks, Kubernetes, GCP, Airflow) command strong salaries ranging from $120K to $142K.
* **Python ecosystem tools** (Pandas, NumPy, Jupyter, Scikit-learn) cluster consistently between $126K and $153K.
* **DevOps tools** (Bitbucket, GitLab, Jenkins) also show strong salary associations, with Bitbucket peaking near $189K.



5. Optimal Skills to Learn (`Project_5 Optimal_skills.sql`)

* **Objective:** Combines demand metrics and average salary data to pinpoint "optimal" skills—those that are both in high demand (occurring in >10 postings) and command high pay.
* **Implementation:** Provided with both a CTE-based structure and a streamlined, optimized version utilizing `HAVING` clauses for efficiency.

---

 💡 Summary of Key Findings

* **Core Competencies:** SQL and Python remain non-negotiable baselines for securing high-tier compensation.
* **Specialization Pays:** Moving beyond basic reporting into big data infrastructure (PySpark, Spark, Hadoop) and cloud orchestration (Databricks, Kubernetes, GCP) drastically scales earning potential.
* **Quality Over Quantity:** A lean, targeted tech stack optimized for data pipelines and querying yields better financial returns than stacking an excessive number of generalized supporting tools.
