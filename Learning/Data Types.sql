--1. CAST: change data type
SELECT CAST(column1 AS datatype)
FROM table_name;

--Data types:
INT64: integer
DATE: date
STRING: string

--2.Date/time format: YYYY-MM-DD
--Cast a field as TIMESTAMP: 
SELECT column_n::timestamp
FROM table_name;
--INTERVAL: The interval is defined using plain-English terms like '10 seconds' or '5 months'. Also note that adding or subtracting a date column and an interval column results in another date column
SELECT column_n::timestamp + INTERVAL '2 weeks'
FROM table_name;
--3. Date functions:
CURRENT_DATE([timezone])
EXTRACT(year/month/day/week FROM date_column) --get the year/month/day from a date field
DATE_ADD(date_coulmn,interval X days) --add X days
SELECT DATE_SUB(date_column,interval X days) --minus X days
DATE_DIFF(date X, date Y,DAY) --subtract 2 dates
DATE_TRUNC(date_column,MONTH) --truncate
PARSE_DATE('%Y%m',CAST(column_n AS STRING)) --convert a field to string, then convert it to date
