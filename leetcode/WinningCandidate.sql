select Name 
from Candidate 
where id = (select CandidateId
                 from vote 
                 group by CandidateId
                 order by count(*) desc
                 limit 1)