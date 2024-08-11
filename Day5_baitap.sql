--Ex1
SELECT DISTINCT CITY 
FROM STATION
WHERE  ID%2=0
--Ex2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION
--Ex3

--Ex4
SELECT 
ROUND(CAST(SUM(item_count * order_occurrences) / SUM(order_occurrences)as DECIMAL ,1) as mean
FROM items_per_order;
