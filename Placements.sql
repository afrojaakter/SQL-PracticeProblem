/*
You are given three tables: Students, Friends and Packages. Students contains 
two columns: ID and Name. Friends contains two columns: ID and Friend_ID 
(ID of the ONLY best friend). Packages contains two columns: ID and Salary
(offered salary in $ thousands per month).
Write a query to output the names of those students whose best friends 
got offered a higher salary than them. Names must be ordered by the salary
amount offered to the best friends. It is guaranteed that no two students 
got same salary offer.



_________________________________________________________________________
Name of students whose best friends got offered a higher salary than them
Name is ordered by best friend's salary amount
*/

select s.Name from Students as s 
join Packages as ps on s.ID = ps.ID
join Friends as f on s.ID = f.ID
join Packages as pf on f.Friend_ID = pf.ID
where ps.Salary < pf.Salary
order by pf.Salary;
