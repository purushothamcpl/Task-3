# SQL for Data Analysis – Play Store Dataset

# Overview
This project demonstrates SQL queries for data analysis using a Play Store dataset.  
It covers the full range of SQL operations commonly used in analytics interviews and real-world projects:
Basic SELECT
Filtering with WHERE
Sorting with ORDER BY
Grouping with GROUP BY
Joins (INNER, LEFT, RIGHT)
Subqueries
Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
Views for reusable analysis

# File Contents
playstore_analysis.sql - Contains all queries organized by topic with comments.

# Queries Included

# 1. Basic Selection
Extract all rows from the dataset.

# 2. Filtering
Use WHERE to filter apps by rating, installs, etc.

# 3. Sorting
Use ORDER BY to sort apps by reviews (ascending/descending).

#4. Grouping
Use GROUP BY with aggregates to summarize installs, ratings, and categories.

# 5. Joins
Combine app data with user reviews using INNER JOIN, LEFT JOIN, and RIGHT JOIN.

# 6. Subqueries
Compare apps against averages (e.g., apps with a rating above average).
Find the second-highest reviews using nested queries.

# 7. Aggregate Functions
 COUNT() → Count apps, reviews, or categories.
 SUM() → Total installs or reviews.
 AVG() → Average rating, price, or size.
 MIN() → Smallest app size or lowest price.
 MAX() → Most reviews or highest price.

# 8. Views
Create reusable views for monthly installs, average rating per category, and top reviewed apps.

# How to Use
1. Load the dataset into your SQL environment (SQLite, MySQL, PostgreSQL).
2. Run queries from `playstore_analysis.sql` to explore the data.
3. Use the views for repeated analysis or dashboards.

# Why This Matters
These queries demonstrate:
Core SQL skills expected in data analyst/data scientist interviews.
Ability to transform raw data into insights.
Practical techniques for reporting and dashboards.

# Example Usage
sql
Find categories with average rating above 4.5
SELECT category, AVG(rating) AS avg_rating
FROM play_store_data_2
GROUP BY category
HAVING AVG(rating) > 4.5;
