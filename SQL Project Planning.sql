/*
You are given a table, Projects, containing three columns: Task_ID, Start_Date 
and End_Date. It is guaranteed that the difference between the End_Date and the
Start_Date is equal to 1 day for each row in the table.
If the End_Date of the tasks are consecutive, then they are part of the same 
project. Samantha is interested in finding the total number of different projects 
completed.

Write a query to output the start and end dates of projects listed by the number
of days it took to complete the project in ascending order. If there is more than
one project that have the same number of completion days, then order by the start
date of the project.

*/
select s.Start_Date, min(e.End_Date) from 
(select Start_Date from Projects where Start_Date not in (select End_Date from Projects)) as s,
(select End_Date from Projects where End_Date not in (select Start_Date from Projects)) as e
where s.Start_Date < e.End_Date Group by s.Start_Date
order by datediff(min(e.End_Date), s.Start_Date), s.Start_Date;
