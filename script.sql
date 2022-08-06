/*
Question 1: How many rows are in the data_analyst_jobs table? 1793
SELECT COUNT (title) 
FROM data_analyst_jobs;
*/


/*
Question 2: Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? ExxonMobil
SELECT *
FROM data_analyst_jobs
LIMIT 10;
*/

/*
Question 3: How many postings are in Tennessee? How many are there in either Tennessee or Kentucky? 21 in TN, 27 in TN or KY. 
SELECT count (location)
FROM data_analyst_jobs
WHERE location = 'TN';
SELECT count (location)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
*/

/*
Question 4: How many postings in Tennessee have a star rating above 4? 573
SELECT count (star_rating)
FROM data_analyst_jobs
WHERE star_rating >=4;
*/

/*
Question 5: How many postings in the dataset have a review count between 500 and 1000? 151
SELECT count (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
*/

/*
Question 6: Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating? NE
SELECT AVG (star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;
*/

/*
Question 7: Select unique job titles from the data_analyst_jobs table. How many are there? 881
SELECT COUNT (DISTINCT (title))
FROM data_analyst_jobs;
*/

/*
Question 8: How many unique job titles are there for California companies? 230

SELECT COUNT (DISTINCT (title))
FROM data_analyst_jobs
WHERE location = 'CA';
*/

/*
Question 9: Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. 
How many companies are there with more that 5000 reviews across all locations? 40 (1 company was "null")

SELECT company, AVG (star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;
*/

/*
Question 10: Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? 
What is that rating? General Motors, 4.199999
SELECT company, AVG (star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_rating DESC;
*/

/*
Question 11: Find all the job titles that contain the word ‘Analyst’. 
How many different job titles are there? 1636
SELECT COUNT (title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';
*/

/*
Question 12: How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’?
What word do these positions have in common? 4. Tableau
SELECT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%' 
AND title NOT LIKE '%Analytics%' 
AND title NOT LIKE '%ANALYST%' 
AND title NOT LIKE '%analyst%' 
AND title NOT LIKE '%ANALYTICS%' 
AND title NOT LIKE '%analytics%';
*/

/*
Bonus: You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks. 
 - Disregard any postings where the domain is NULL. 
 - Order your results so that the domain with the greatest number of `hard to fill` jobs is at the top. 
 - Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4? Consulting and Business Services, Consumer Goods and Services, Computers and Electronics, and Internet and Software. 4,2,1,and 1. 

SELECT count (title), domain, days_since_posting
FROM data_analyst_jobs
WHERE days_since_posting > 21 
AND skill = 'SQL'
AND domain NOT LIKE 'null'
GROUP BY days_since_posting, domain
ORDER BY count (title) DESC;
Bonus: Consulting and Business Services, Consumer Goods and Services, Computers and Electronics, and Internet and Software. 4,2,1,and 1. 
*/













