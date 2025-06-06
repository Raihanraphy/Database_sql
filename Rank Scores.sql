SELECT score, DENSE_RANK() over (order by score desc) AS `rank`
from Scores
order by score desc
