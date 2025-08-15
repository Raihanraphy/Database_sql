# Write your MySQL query statement below
WITH all_friends AS (
    SELECT requester_id AS person, accepter_id AS friend FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS person, requester_id AS friend FROM RequestAccepted
),
friend_counts AS (
    SELECT person AS id, COUNT(DISTINCT friend) AS num
    FROM all_friends
    GROUP BY person
)
SELECT id, num
FROM friend_counts
ORDER BY num DESC, id
LIMIT 1;
