--Ex1
SELECT DISTINCT CITY 
FROM STATION
WHERE  ID%2=0
--Ex2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION
--Ex3

--Ex4
