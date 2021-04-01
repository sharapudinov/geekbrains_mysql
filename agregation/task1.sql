use vk;

select YEAR(FROM_DAYS(avg(DATEDIFF(now() , birthday))))
from users
         join profiles on id = user_id;
