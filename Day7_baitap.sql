--Ex 1
SELECT name 
FROM STUDENTS 
WHERE Marks >75
ORDER BY RIGHT(name,3),ID
--Ex 2
select
user_id,
concat(upper(left(name,1), lower(right(name, length(name)-1)))as name,
from users 
order by user_id
--Ex 3
SELECT
manufacturer,
'$'||round(sum(total_sales)/1000000,0)||' '||'million'as sale
from pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer
--Ex 4
SELECT 
extract(month from submit_date) as mth,
product_id,
round(avg(stars),2) as avg_stars
from
reviews
group by mth,products_id
order by mth,products_id
--Ex 5
SELECT
sender_id,
count(message_id) as message_count
from messages
where extract(month from sent_date)=8
and extract(year from sent_date)=2022
group by sender_id
order by message_count desc
limit 2
--Ex 6
select 
from Tweets
WHERE length(content)>15
--Ex 7
select DISTINCT user_id, activity_date
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
--Ex 8
select 
count(employee_id) as number_employee
from employees
where extract(month from joining_date) between 1 and 7
abd extract(year from joining_date)=2022
--Ex 9
select 
position('a'in first_name) as position
from worker
where first_name='Amitah'
--Ex 10
select 
substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'
  
