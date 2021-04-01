use vk;

select DAYOFWEEK(DATE_ADD(birthday,INTERVAL YEAR(CURRENT_DATE)-YEAR(birthday) YEAR )) as day, count(id) as cnt
from users
         join profiles on id = user_id
group by day;
