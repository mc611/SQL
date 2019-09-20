select concat(Name, '(', LEFT(Occupation,1), ')') 
from occupations
Order by Name;

select concat('There are a total of',' ', count(occupation),' ',lower(occupation),'s.') as total
from occupations
group by occupation
order by total