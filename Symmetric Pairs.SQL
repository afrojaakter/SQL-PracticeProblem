
/*
 Problem:
You are given a table, Functions, containing two columns: X and Y.

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. 
List the rows such that X1 ≤ Y1.

Solution:
*/
(SELECT X, Y FROM Functions 
WHERE X = Y GROUP BY X, Y HAVING COUNT(*) > 1)
UNION
(SELECT X, Y FROM Functions AS f1
WHERE EXISTS(SELECT X, Y FROM Functions WHERE f1.X = Y AND f1.Y = X AND f1.X < X))
ORDER BY X;
