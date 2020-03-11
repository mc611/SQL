select 
    id,
    sum(c) as num
from(
    select 
        requester_id as id,
        count(accepter_id) as c
    from request_accepted 
    group by requester_id
union all
    select 
        accepter_id as id,
        count(requester_id) as c
    from request_accepted 
    group by accepter_id
) t
group by id
order by num desc
limit 1