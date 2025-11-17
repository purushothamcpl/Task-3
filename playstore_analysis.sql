-- ============================================
-- SQL for Data Analysis (Play Store Dataset)
-- ============================================

-- 1. Basic SELECT
SELECT * FROM play_store_data_2;

-- 2. SELECT with WHERE
SELECT *
FROM play_store_data_2
WHERE Rating > 4;

-- 3. ORDER BY
SELECT * FROM play_store_data_2
ORDER BY Reviews ASC;

SELECT * FROM play_store_data_2
ORDER BY Reviews DESC;

-- 4. GROUP BY
SELECT type, COUNT(*) AS total_apps
FROM play_store_data_2
GROUP BY type;

SELECT Category, COUNT(*) AS total_apps
FROM play_store_data_2
GROUP BY Category;

-- 5. INNER JOIN
SELECT * 
FROM play_store_data_2 p 
INNER JOIN user_reviews_data_2 u 
ON u.app = p.app;

-- 6. LEFT JOIN
SELECT * 
FROM play_store_data_2 p 
LEFT JOIN user_reviews_data_2 u 
ON u.app = p.app;

-- 7. RIGHT JOIN
SELECT * 
FROM play_store_data_2 p 
RIGHT JOIN user_reviews_data_2 u 
ON u.app = p.app;

-- 8. Subqueries
SELECT MAX(reviews) 
FROM play_store_data_2
WHERE reviews < (
    SELECT MAX(reviews) 
    FROM play_store_data_2
);

SELECT app, category, rating 
FROM play_store_data_2
WHERE size > (
    SELECT AVG(size) 
    FROM play_store_data_2
);

SELECT app, category, rating 
FROM play_store_data_2
WHERE rating > (
    SELECT AVG(rating) 
    FROM play_store_data_2
);

-- 9. COUNT
SELECT COUNT(*) 
FROM play_store_data_2
WHERE rating > 3;

SELECT COUNT(*) 
FROM play_store_data_2;

-- 10. SUM
SELECT SUM(installs) 
FROM play_store_data_2;

SELECT SUM(reviews) 
FROM play_store_data_2;

-- 11. AVG
SELECT AVG(price) 
FROM play_store_data_2;

SELECT AVG(size) 
FROM play_store_data_2;

-- 12. MIN
SELECT MIN(price) 
FROM play_store_data_2;

SELECT app, MIN(size) 
FROM play_store_data_2;

-- 13. MAX
SELECT MAX(reviews) 
FROM play_store_data_2;

SELECT MAX(price) 
FROM play_store_data_2;

-- 14. Create View for Monthly Installs
CREATE VIEW monthly_installs AS
SELECT strftime('%Y-%m', last_updated) AS month,
       SUM(installs) AS total_installs
FROM playstore
GROUP BY strftime('%Y-%m', last_updated)
ORDER BY month;

-- View usage example
SELECT app, rating
FROM play_store_data_2
WHERE category = 'GAME';
