select w.id, p.age, w.coins_needed, w.power from Wands as w 
join Wands_Property as p
on w.code = p.code
where w.coins_needed = (select min(coins_needed)
                       from Wands w2 inner join Wands_Property p2 
                       on w2.code = p2.code 
                       where p2.is_evil = 0 and p.age = p2.age and w.power = w2.power)
order by w.power desc, p.age desc;
