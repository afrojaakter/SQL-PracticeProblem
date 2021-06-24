/*
question: A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  
decimal places.

sol explanation:
Enter your query here.
setting a index number variable idx = -1. 
create a new table with columns idx number and sorted lat_n
now take the middle two values if there is even number or just the middle 
value if there is odd number of lat_n, which will give the median value. 
*/
SET @IDX = -1;
SELECT ROUND(AVG(T.LAT_N),4) FROM 
(SELECT @IDX := @IDX + 1 AS IDX, S.LAT_N FROM STATION AS S ORDER BY S.LAT_N) AS T
WHERE T.IDX IN (FLOOR(@IDX/2), CEIL(@IDX/2));
