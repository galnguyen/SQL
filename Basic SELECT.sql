--1. SELECT:
-- Select all fields from a table:
  SELECT *
  FROM table_name;
-- Select specific columns:
  SELECT column1, column2, column3
  FROM table_name;
-- Select distinct values:
  SELECT DISTINCT columnn
  FROM table_name;
-- Select with condition:
  SELECT *
  FROM table_name;
  WHERE column...;
Comparison operators: =, !=, >, <, >=, <=
--2. LIKE: The LIKE operator can be used to search for a pattern in a column. It’s used in the WHERE clause
  SELECT * 
  FROM table_name 
  WHERE columnn LIKE '%...%';
--3. BETWEEN: The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range. The range must be separated by an AND keyword
  SELECT * 
  FROM table_name 
  WHERE columnn
  BETWEEN value1 AND value2;
--4. ORDER BY: 
  SELECT * 
  FROM table_name
  ORDER BY columnn DESC/ASC
--5. COUNT:
  SELECT COUNT(*)
  FROM table_name;
--6. MIN & MAX:
  SELECT column1, column2,
  MIN/MAX(columnn)
  FROM table_name;

