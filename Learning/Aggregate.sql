--1. SUM()
SELECT SUM(columnn)
FROM table_name;
--2. AVG() : Average
SELECT AVG(columnn)
FROM table_name;
--3. GROUP BY: The GROUP BY statement groups rows of data with the same values into buckets. It’s often used with aggregate functions to group the result by one or more columns.
SELECT *
FROM table_name
GROUP BY column;
--4. HAVING: WHERE clause won't work for this because it doesn't allow you to filter on aggregate columns—that's where the HAVING clause comes in
SELECT 
  column1, 
  column2,
  AGGREGATE(column3) AS agg_column3
FROM table_name
GROUP BY column1, column2
HAVING AGGREGATE(column3) = "X"
ORDER BY column1, column2;
--5. CASE: The CASE statement is SQL's way of handling if/then logic. The CASE statement is followed by at least one pair of WHEN and THEN statements—SQL's equivalent of IF/THEN in Excel
SELECT 
  column1, 
  column2,
  CASE WHEN column1 = "X" 
      THEN 'value1'
      ELSE 'value2'
  END AS new_col_return_value1_value2
FROM table_name;
--You can also string together multiple conditional statements with AND and OR the same way you might in a WHERE clause
--6. DISTINCT: 
--If you include two (or more) columns in a SELECT DISTINCT clause, your results will contain all of the unique pairs of those two columns:
SELECT DISTINCT column1, column2
FROM table_name;
--You can use DISTINCT when performing an aggregation. You'll probably use it most commonly with the COUNT function.
SELECT COUNT(DISTINCT column1) AS distinctcount_column1
FROM table_name;
