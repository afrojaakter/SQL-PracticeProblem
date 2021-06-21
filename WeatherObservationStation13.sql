/*
source: HackerRank- https://www.hackerrank.com/challenges/weather-observation-station-13/problem
Problem: 
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
*/

/*Solution(MySQL):*/

SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE 38.7880 < LAT_N AND LAT_N < 137.2345;
