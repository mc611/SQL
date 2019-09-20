select (salary * months) as earnings, count(employee_id) 
from employee 
group by earnings 
order by earnings desc 
limit 1;
