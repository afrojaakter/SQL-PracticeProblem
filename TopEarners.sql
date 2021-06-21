/*
source: HackerRank- https://www.hackerrank.com/challenges/earnings-of-employees/problem

Problem: 
We define an employee's total earnings to be their monthly  worked, 
and the maximum total earnings to be the maximum total earnings for 
any employee in the Employee table. Write a query to find the maximum
total earnings for all employees as well as the total number of employees
who have maximum total earnings. Then print these values as  space-separated integers.
*/

/*Solution(MySQL):*/

select (salary*months) as earnings, count(*) from Employee group by earnings order by earnings desc limit 1;
