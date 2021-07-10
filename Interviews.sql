/*
Enter your query here.
contest_id, hacker_id, name, sums of total_submission
total_accepted_submissions, total_views, total_unique_views
for each contest sorted by contest_id
Excluede the contest from the result if all four sums are 0
Note: a specific contest can be used to screen candidates at more than
one college, but each college only holds 1 screening contest.
*/
select c.contest_id, c.hacker_id, c.name, 
sum(s.total_submission), sum(s.total_accepted_submission), 
sum(v.total_views), sum(v.total_unique_views)
from Contests as c join 
Colleges as cl on c.contest_id = cl.contest_id join 
Challenges as ch on cl.college_id = ch.college_id 
left join
(select ss.challenge_id, sum(ss.total_submissions) as total_submission, sum(ss.total_accepted_submissions) as total_accepted_submission from Submission_Stats as ss group by ss.challenge_id) as s 
on ch.challenge_id = s.challenge_id 
left join
(select vs.challenge_id, sum(vs.total_views) as total_views, sum(vs.total_unique_views) as total_unique_views from View_Stats as vs group by vs.challenge_id) as v
on ch.challenge_id = v.challenge_id
group by c.contest_id, c.hacker_id, c.name
having sum(s.total_submission) + 
    sum(s.total_accepted_submission) + 
    sum(v.total_views) +
    sum(v.total_unique_views) > 0
order by c.contest_id;
