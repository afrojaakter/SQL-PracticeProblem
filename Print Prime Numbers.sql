/*
source: HackerRank
Problem:
Write a query to print all prime numbers less than or equal to 1000. Print your result on a 
single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers <= 10 would be:
2&3&5&7

-------------------
Explanation:
-------------------
Enter your query here.
two inner SELECTs (SELECT @potential_prime and SELECT @divisor) create two lists 
of numbers from 1 to 1000. The first list is list_of_potential_primes and the 
second is list_of_divisors.

Then, terate over LIST_OF_POTENTIAL_PRIMES (the outer SELECT). for each number
look for divisors (SELECT * FROM clause) that can divide the number without a 
reminder and are not equal to the number (WHERE MOD... clause). 
If at least one such divisor exists, the number is not prime and is
not selected (WHERE NOT EXISTS... clause). 
*/

SET @POTENTIAL_PRIME = 1;
SET @DIVISOR = 1;

SELECT GROUP_CONCAT(POTENTIAL_PRIME SEPARATOR '&') FROM
    (SELECT @POTENTIAL_PRIME := @POTENTIAL_PRIME + 1 AS POTENTIAL_PRIME 
     FROM INFORMATION_SCHEMA.TABLES T1, INFORMATION_SCHEMA.TABLES T2 LIMIT 1000)
    AS LIST_OF_POTENTIAL_PRIMES
WHERE NOT EXISTS(SELECT * FROM (SELECT @DIVISOR := @DIVISOR +1 AS DIVISOR FROM 
    INFORMATION_SCHEMA.TABLES T4, INFORMATION_SCHEMA.TABLES T5 LIMIT 1000) AS LIST_OF_DIVISORS
    WHERE MOD(POTENTIAL_PRIME, DIVISOR) = 0 AND POTENTIAL_PRIME <> DIVISOR);
