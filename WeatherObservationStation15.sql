/*
source: HackerRank- https://www.hackerrank.com/challenges/weather-observation-station-15/problem
Problem: 
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
*/

/*Solution(MySQL):*/

SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);
