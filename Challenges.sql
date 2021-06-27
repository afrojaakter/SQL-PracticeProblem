/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, 
name, and the total number of challenges created by each student. Sort your results by the total 
number of challenges in descending order. If more than one student created the same number of challenges,
then sort the result by hacker_id. If more than one student created the same number of challenges and the
count is less than the maximum number of challenges created, then exclude those students from the result.

*/
select c.hacker_id, h.name, count(c.challenge_id) as cnt 
from Hackers as h join Challenges as c on h.hacker_id = c.hacker_id
group by c.hacker_id, h.name having 
cnt = (select count(c1.challenge_id) from Challenges as c1 group by c1.hacker_id order by count(*) desc limit 1) or
cnt not in (select count(c2.challenge_id) from Challenges as c2 group by c2.hacker_id having c2.hacker_id <> c.hacker_id)
order by cnt desc, c.hacker_id;
