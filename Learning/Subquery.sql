--Similar to Var in PowerBI: Once the inner query runs, the outer query will run using the results from the inner query as its underlying table
--1. Subquery:
SELECT subquery_name.*
  FROM (
       <<results from inner query go here>>
       ) subquery_name
 WHERE subquery_name.column1 = 'X';
--2. Using subqueries to aggregate in multiple stages
/*What if you wanted to figure out how many incidents get reported on each day of the week? Better yet, what if you wanted to know how many incidents happen, on average, on a Friday in December? In January? There are two steps to this process: counting the number of incidents each day (inner query), then determining the monthly average (outer query)*/
SELECT LEFT(sub.date, 2) AS cleaned_month,
       sub.day_of_week,
       AVG(sub.incidents) AS average_incidents
  FROM (
        SELECT day_of_week,
               date,
               COUNT(incidnt_num) AS incidents
          FROM tutorial.sf_crime_incidents_2014_01
         GROUP BY 1,2
       ) sub
 GROUP BY 1,2
 ORDER BY 1,2;
--3. Subqueries in conditional logic: in conjunction with WHERE, JOIN/ON, or CASE
SELECT *
  FROM tutorial.sf_crime_incidents_2014_01
 WHERE Date = (SELECT MIN(date)
                 FROM tutorial.sf_crime_incidents_2014_01
              )
/*The above query works because the result of the subquery is only one cell. Most conditional logic will work with subqueries containing one-cell results. However, IN is the only type of conditional logic that will work when the inner query contains multiple results*/
SELECT *
  FROM tutorial.sf_crime_incidents_2014_01
 WHERE Date IN (SELECT date
                 FROM tutorial.sf_crime_incidents_2014_01
                ORDER BY date
                LIMIT 5
              )
/*Note that you should not include an alias when you write a subquery in a conditional statement. This is because the subquery is treated as an individual value (or set of values in the IN case) rather than as a table.*/
--4. Joining subqueries:
--5. UNION with subquery: perform operations on the entire combined dataset rather than on the individual parts
SELECT function
  FROM (
        SELECT *
          FROM part1

         UNION ALL

        SELECT *
          FROM tpart2
       ) sub


