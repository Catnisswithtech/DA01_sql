--Ex1
SELECT
    SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
    SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views
FROM
    viewership;
--Ex2
SELECT
    x,
    y,
    z,
    CASE 
        WHEN (x + y > z) AND (x + z > y) AND (y + z > x) THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM
    Triangle;
--Ex3
SELECT 
    ROUND(
        (SUM(CASE WHEN call_category = 'n/a' OR call_category IS NULL THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        1
    ) AS uncategorised_call_pct
FROM 
    callers;
--Ex4
SELECT 
    name
FROM 
    Customer
WHERE 
    referee_id IS NULL OR referee_id != 2;
--Ex5
SELECT 
    CASE 
        WHEN pclass = 1 THEN 'first_class'
        WHEN pclass = 2 THEN 'second_class'
        WHEN pclass = 3 THEN 'third_class'
    END AS class,
    SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS survivors,
    SUM(CASE WHEN survived = 0 THEN 1 ELSE 0 END) AS non_survivors
FROM 
    titanic
GROUP BY 
    pclass;
