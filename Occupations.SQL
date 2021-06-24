/*
source: HackerRank
Problem:
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.


SOLUTION:
*/
SET @C1 = 0, @C2= 0, @C3 = 0, @C4 = 0;
SELECT MIN(DOCTOR), MIN(PROFESSOR), MIN(SINGER), MIN(ACTOR) FROM
(SELECT CASE OCCUPATION WHEN 'DOCTOR' THEN @C1 := @C1 + 1
                        WHEN 'PROFESSOR' THEN @C2 := @C2 + 1
                        WHEN 'SINGER' THEN @C3 := @C3 + 1
                        WHEN 'ACTOR' THEN @C4 := @C4 + 1 END
 AS COL,
 CASE WHEN OCCUPATION = 'DOCTOR' THEN NAME END AS DOCTOR,
 CASE WHEN OCCUPATION = 'PROFESSOR' THEN NAME END AS  PROFESSOR,
 CASE WHEN OCCUPATION = 'SINGER' THEN NAME END AS SINGER,
 CASE WHEN OCCUPATION = 'ACTOR' THEN NAME END AS ACTOR
 FROM OCCUPATIONS ORDER BY NAME) AS T GROUP BY COL;
