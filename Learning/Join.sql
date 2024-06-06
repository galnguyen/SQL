--You can give a table an alias by adding a space after the table name and typing the intended name of the alias. As with column names, best practice here is to use all lowercase letters and underscores instead of spaces
--1. INNER JOIN: ows from either table that are unmatched in the other table are not returned
SELECT column1, column2
FROM table1_name alias1
JOIN table2_name alias2
ON alias1.identical_column_table1 = alias2.identical_column_table2;
--2. LEFT JOIN: LEFT JOIN command tells the database to return all rows in the table in the FROM clause, regardless of whether or not they have matches in the table in the LEFT JOIN clause
SELECT column1, column2
FROM table1_name alias1
LEFT JOIN table2_name alias2
ON alias1.identical_column_table1 = alias2.identical_column_table2;
--3. RIGHT JOIN: Right joins are similar to left joins except they return all rows from the table in the RIGHT JOIN clause and only matching rows from the table in the FROM clause
SELECT column1, column2
FROM table1_name alias1
RIGHT JOIN table2_name alias2
ON alias1.identical_column_table1 = alias2.identical_column_table2;
--4. FULL JOIN: returns unmatched rows from both tables
SELECT column1, column2
FROM table1_name alias1
FULL JOIN table2_name alias2
ON alias1.identical_column_table1 = alias2.identical_column_table2;
--5. UNION: joins combines 2 datasets side-by-side, UNION stacks one dataset on top of the other
--UNION only appends distinct values, if want to append all repeated values use UNION ALL
/*SQL has strict rules for appending data:
- Both tables must have the same number of columns
- The columns must have the same data types in the same order as the first table*/

--6. JOIN with condition by using AND (before tables are joined) or WHERE (after tables are joined)
SELECT column1, column2
FROM table1_name alias1
JOIN table2_name alias2
ON alias1.identical_column_table1 = alias2.identical_column_table2
AND/WHERE column_n = "%X%";
--7. JOIN with multiple keys: make queries run faster than when only 1 key is used.
SELECT column1, column2
FROM table1_name alias1
JOIN table2_name alias2
ON alias1.identical_column_table1 = alias2.identical_column_table2
AND alias1.identical_column_table3 = alias2.identical_column_table4
AND/WHERE column_n = "%X%";
--8. Self join
