create database HRdata;
use HRdata;
select * from trainingdata;
select distinct region from trainingdata;

-- Q1: Display number of employees region wise:
select count(*) as No_of_employees, region from trainingdata
group by region;

-- Q2: Coount of total employees in each department?
SELECT department, COUNT(*) AS num_employees
FROM trainingdata
GROUP BY department;

-- Q3: What is the average length of service of employee for each region:
SELECT region, AVG(length_of_service) AS avg_length_of_service
FROM trainingdata
GROUP BY region;

-- Q4: No. of employees who have attended more than one training session:
SELECT count(*) as MoreThanOneTraining
FROM trainingdata
WHERE no_of_trainings > 1;

-- Q5: Find Employees with their respective Highest Previous Year Ratings in each Department:
SELECT employee_id, MAX(previous_year_rating) AS Highest_rating
FROM trainingdata
GROUP BY employee_id;

-- Q6: Find only the employees with the highest previous year ratings with respect to each department {window functions}:
SELECT 
    department,
    employee_id,
    previous_year_rating
FROM (
    SELECT 
        department,
        employee_id,
        previous_year_rating,
        RANK() OVER (PARTITION BY department ORDER BY previous_year_rating DESC) AS rank_within_department
    FROM 
        trainingdata
) ranked_employees
WHERE 
    rank_within_department = 1;
    
-- Q7: List Employees Who Have Met KPIs >80% and Won Awards:
SELECT *
from trainingdata
WHERE "KPIs_met >80%" = 1 AND 'awards_won?' = 1;

-- Q8: Calculate Bonus Based on Performance(PYR) {case_statements}:
SELECT employee_id, department, previous_year_rating,
       CASE
           WHEN previous_year_rating >= 4.0 THEN 'High Performer'
           WHEN previous_year_rating = 3.0 THEN 'Average Performer'
           ELSE 'Low Performer'
       END AS performance_category,
       CASE
           WHEN previous_year_rating >= 4.0 THEN 10000
           WHEN previous_year_rating = 3.0 THEN 5000
           ELSE 0
       END AS bonus_amount
FROM trainingdata;

-- Q9: Identify Employees with Below Average Training Scores by Department:
SELECT *
FROM trainingdata e
WHERE avg_training_score < (
    SELECT AVG(avg_training_score)
    FROM trainingdata
    WHERE department = e.department
    );
    
-- Q10: Calculate Average Age and Length of Service by Department {using CTE}:
WITH department_stats AS (
    SELECT department, AVG(age) AS avg_age, AVG(length_of_service) AS avg_service_length
    FROM trainingdata
    GROUP BY department
)
SELECT *
FROM department_stats;    

-- Q11: Identify Employees with the Highest Previous Year Ratings in Operations Department {using-subquery}:
SELECT *
FROM trainingdata
WHERE previous_year_rating = (
    SELECT MAX(previous_year_rating)
    FROM trainingdata
    WHERE department = 'Operations'
) AND department = 'Operations';

-- Q12: Rank Employees by Average Training Score within Each Department:
SELECT *,
       RANK() OVER (PARTITION BY department ORDER BY avg_training_score DESC) AS training_score_rank
FROM trainingdata;

-- Q13: Find Total promotions count w.r.t departments:
SELECT 
    department,
    COUNT(CASE WHEN is_promoted = 1 THEN 1 END) AS total_promotions
FROM 
    trainingdata
GROUP BY 
    department
ORDER BY 
    total_promotions DESC
LIMIT 5;

-- Q14: Find promotion rate by department:
SELECT 
    department,
    COUNT(CASE WHEN is_promoted = 1 THEN 1 END) AS promoted_count,
    COUNT(*) AS total_employees,
    (COUNT(CASE WHEN is_promoted = 1 THEN 1 END) * 100.0 / COUNT(*)) AS promotion_rate
FROM 
    trainingdata
GROUP BY 
    department;

-- Q15: Factors influencing promotion:
Select is_promoted,
avg(previous_year_rating) as Avg_rating,
avg(length_of_service) as Avg_service_length,
avg(no_of_trainings) as Avg_of_trainings,
avg(age) as Avg_age
From trainingdata
group by is_promoted ;

-- Q15: Analysis of promotions by demographics such as age group and gender:
SELECT 
    CASE 
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50 and above'
    END AS age_group,
    gender,
    COUNT(CASE WHEN is_promoted = 1 THEN 1 END) AS promoted_count,
    COUNT(*) AS total_employees,
    (COUNT(CASE WHEN is_promoted = 1 THEN 1 END) * 100.0 / COUNT(*)) AS promotion_rate
FROM 
    trainingdata
GROUP BY 
    age_group, gender;
    


