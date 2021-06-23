/*
source: HackerRank
Problem:
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/

SET @NUMBER = 21;
SELECT REPEAT('* ', @NUMBER := @NUMBER - 1) FROM INFORMATION_SCHEMA.TABLES WHERE @NUMBER > 0;
