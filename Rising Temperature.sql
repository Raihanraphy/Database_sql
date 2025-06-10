SELECT W1.id as Id
FROM Weather W1
INNER JOIN Weather W2
WHERE W1.recordDate = DATE_ADD(W2.recordDate, INTERVAL 1 DAY)
     AND W1.temperature > W2.temperature; 
