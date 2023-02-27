-- Comments in SQL Start with dash-dash --

-- 1. Find the app with an ID of 1880.

SELECT * 
FROM analytics WHERE id = 1880;

-- 2. Find the ID and app name for all apps that were last updated on August 01, 2018.

SELECT id, app_name 
FROM analytics WHERE last_updated ='08-01-2018';

-- 3. Count the number of apps in each category, e.g. “Family | 1972”.

SELECT category AS family, COUNT(*) AS number 
FROM analytics 
GROUP BY category ;

-- 4. Find the top 5 most-reviewed apps and the number of reviews for each.

SELECT app_name, reviews 
FROM analytics 
ORDER BY reviews DESC LIMIT 5;

-- 5. Find the app that has the most reviews with a rating greater than equal to 4.8.

SELECT app_name, reviews ,rating  
FROM analytics where rating >=4.8;

-- 6. Find the average rating for each category ordered by the highest rated to lowest rated.

SELECT category , avg(rating) 
FROM analytics 
GROUP BY category 
ORDER BY avg(rating) DESC 

-- 7. Find the name, price, and rating of the most expensive app with a rating that’s less than 3.

SELECT app_name, price, rating
FROM analytics
WHERE rating < 3
GROUP BY price,app_name,rating  
HAVING price = max(price) 
ORDER BY price DESC limit 1;

-- 8. Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.


-- 9. Find the names of all apps that are rated less than 3 with at least 10000 reviews.


-- 10. Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.


-- 11. Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/


-- 12. Find the most expensive app (the query is very similar to #11).


-- 13. Count all the reviews in the Google Play Store.



-- 14. Find all the categories that have more than 300 apps in them.


-- 15. Find the app that has the highest proportion of min_installs to 
-- reviews, among apps that have been installed at least ``100,000`` times.
-- Display the name of the app along with the number of reviews, the min_installs, and the proportion.