--Ex1
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 120000;
--Ex2
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';
--Ex3
SELECT CITY, STATE
FROM STATION; 
--Ex4 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%'
   OR CITY LIKE 'e%'
   OR CITY LIKE 'i%'
   OR CITY LIKE 'o%'
   OR CITY LIKE 'u%';
--Ex5
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE '%a'
   OR CITY LIKE '%e'
   OR CITY LIKE '%i'
   OR CITY LIKE '%o'
   OR CITY LIKE '%u';
--Ex6 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'a%'
  AND CITY NOT LIKE 'e%'
  AND CITY NOT LIKE 'i%'
  AND CITY NOT LIKE 'o%'
  AND CITY NOT LIKE 'u%';
--Ex7
SELECT name
FROM Employee
ORDER BY name ASC;
--Ex8
SELECT name
FROM Employee
WHERE salary >2000 
AND months <10
ORDER BY employee_id ASC; 
--Ex9
SELECT product_id FROM Products
WHERE low_fats = 'Y'
AND recylable = 'Y'
--Ex10
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
--Ex11
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;
--Ex12
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;
--Ex13
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
--Ex14
SELECT *
FROM lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000;
--Ex15
SELECT advertising_channel
FROM uber_advertising
WHERE year = 2019 AND money_spent > 100000;
