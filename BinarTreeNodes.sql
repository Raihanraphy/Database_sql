SELECT b.N,
       (CASE WHEN b.P IS NULL
             THEN 'Root' 
             WHEN (SELECT COUNT(*) FROM BST b2 WHERE b2.P = b.N) > 0 
             THEN 'Inner'
             ELSE 'Leaf'
        END)
FROM bst b 
ORDER BY N;