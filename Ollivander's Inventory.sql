/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's
old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold
galleons needed to buy each non-evil wand of high power and age. Write a query to print
the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in 
order of descending power. If more than one wand has same power, sort the result in order 
of descending age.

*/
select w.id, p.age, m.coins_needed, m.power from
(select code, power, min(coins_needed) as coins_needed from Wands group by code, power) as m
join Wands as w on w.code = m.code and w.power and m.power and w.coins_needed = m.coins_needed
join Wands_Property as p on p.code = w.code
where p.is_evil = 0
order by m.power desc, p.age desc;
