/*
source: HackerRank
Problem:
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).


SOLUTION:
*/

SET @NUMBER = 0;
SELECT REPEAT('* ', @NUMBER := @NUMBER + 1) FROM INFORMATION_SCHEMA.TABLES WHERE @NUMBER < 20;

/* OR */
SET @NUMBER = 0;
SELECT REPEAT('* ', @NUMBER := @NUMBER + 1) FROM INFORMATION_SCHEMA.TABLES LIMIT 20;
