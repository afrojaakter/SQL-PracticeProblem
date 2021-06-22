/*
source: HackerRank- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
Problem: 
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

/*Solution(MySQL):*/

SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE IN (SELECT CODE FROM COUNTRY WHERE CONTINENT = 'Asia')
