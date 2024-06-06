--1. CAST: change data type
SELECT CAST(column1 AS datatype)
FROM table_name;
--2.Date/time format: YYYY-MM-DD
--Cast a field as TIMESTAMP: 
SELECT column_n::timestamp
FROM table_name;
--INTERVAL: The interval is defined using plain-English terms like '10 seconds' or '5 months'. Also note that adding or subtracting a date column and an interval column results in another date column
SELECT column_n::timestamp + INTERVAL '2 weeks'
FROM table_name;
