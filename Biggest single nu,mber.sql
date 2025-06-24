select max(x.num) as num from (
  select num from MyNumbers group by num having count(*) = 1
) x
