--1. LEFT/RIGHT/LENGTH: similar to Excel
SELECT *,
LEFT (column1,num_of_characters) AS col1_p1,
RIGHT (column1,LENGTH(column1)-num_of_characters_left)) AS col1_p2
FROM table_name;
--2. TRIM: you have to specify whether you want to remove characters from the beginning ('leading'), the end ('trailing'), or both ('both')
SELECT column_n,
       TRIM(both/leading/trailing 'character_you_want_to_trim' FROM column_n)
FROM table_name;
--3. POSITION & STRPOS: 
/*Importantly, both the POSITION and STRPOS functions are case-sensitive. If you want to look for a character regardless of its case, you can make your entire string a single by using the UPPER or LOWER*/
SELECT column_n,
       POSITION('X' IN column_n)
FROM table_name;
--or:
SELECT column_n,
       STRPOS(column_n,'X')
FROM table_name;
--4. SUBSTR: similar to MID in Excel
SELECT column_n,
       SUBSTRING(column_n,'starting_position','num_characters') AS substring
FROM table_name;
--5. CONCAT:
SELECT column1,
      column2,
       CONCAT(column1,'& ',column2)
FROM table_name;
--or:
SELECT column1,
       column2,
       column1||'& '||column2
FROM table_name;
--6. UPPER & LOWER: similar to Excel
--7. EXTRACT: deconstruct a date field
SELECT cleaned_date,
       EXTRACT('year'   FROM cleaned_date) AS year,
       EXTRACT('month'  FROM cleaned_date) AS month,
       EXTRACT('day'    FROM cleaned_date) AS day,
       EXTRACT('hour'   FROM cleaned_date) AS hour,
       EXTRACT('minute' FROM cleaned_date) AS minute,
       EXTRACT('second' FROM cleaned_date) AS second,
       EXTRACT('decade' FROM cleaned_date) AS decade,
       EXTRACT('dow'    FROM cleaned_date) AS day_of_week
FROM table_name;
--8. COALESCE: Replace NULL values with values
SELECT COALESCE(column1, '0')
FROM table_name;
