/*
source: HackerRank
Problem:
Consider  p1 and p2 to be two points on a 2D plane where  are the respective minimum and maximum values 
of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude 
(LONG_W) in STATION.

Query the Euclidean Distance between points p1 and p2 and format your answer to display 4 decimal digits.
--------------------------------------------------
SOLUTION:
*/
SELECT ROUND(SQRT(POW(MIN(LAT_N) - MAX(LAT_N), 2) + POW(MIN(LONG_W) - MAX(LONG_W), 2)), 4) FROM STATION;

