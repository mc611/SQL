select round (
    ( 
        avg(salary) - avg(REPLACE(Salary,'0','')) 
    )+0.5,
    0)
from EMPLOYEES