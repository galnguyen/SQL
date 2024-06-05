--1. SELECT:
-- Select all fields from a table:
  SELECT *
  FROM table_name;
-- Select specific columns:
  SELECT column1, column2, column3
  FROM table_name;
-- Select distinct values:
  SELECT DISTINCT column_n
  FROM table_name;
-- Select with condition:
  SELECT *
  FROM table_name;
  WHERE column_n...;
/*Comparison operators: =, !=, >, <, >=, <=
Conditions are combined by AND/OR*/
--2. LIKE: The LIKE operator can be used to search for a pattern in a column. It’s used in the WHERE clause
  SELECT * 
  FROM table_name 
  WHERE column_n LIKE '%...%';
--3. BETWEEN: The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range. The range must be separated by an AND keyword
  SELECT * 
  FROM table_name 
  WHERE column_n
  BETWEEN value1 AND value2;
--4. ORDER BY: 
  SELECT * 
  FROM table_name
  ORDER BY column_n DESC/ASC
--5. COUNT:
  SELECT COUNT(*)
  FROM table_name;
--6. MIN & MAX:
  SELECT column1, column2,
  MIN/MAX(column_n)
  FROM table_name;
--7. IN: specify a list of values that you'd like to include in the results
  SELECT * 
  FROM table_name
  WHERE coulmn_n IN (value1, value2, value3,...value_n);
-- 8. AS: change column name:
  SELECT column_n AS "Column N"
  FROM table_name;
--Or:
  SELECT column_n AS column_x
  FROM table_name;

