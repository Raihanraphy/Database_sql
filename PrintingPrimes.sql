
WITH RECURSIVE Numbers AS (
    SELECT 2 AS L 
    UNION
    SELECT L + 1
    FROM Numbers
    WHERE L < 1000
)

SELECT GROUP_CONCAT(L SEPARATOR '&') AS PrimeNumbers
FROM Numbers
WHERE NOT EXISTS (
    SELECT 1
    FROM Numbers AS N2
    WHERE N2.L > 1 AND N2.L < Numbers.L AND Numbers.L % N2.L = 0
) AND L <= 1000;