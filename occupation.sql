SELECT MIN(IF(Occupation = 'Doctor',Name,NULL)),MIN(IF(Occupation = 'Professor',Name,NULL)),MIN(IF(Occupation = 'Singer',Name,NULL)),MIN(IF(Occupation = 'Actor',Name,NULL)) 
FROM(
    SELECT ROW_NUMBER() OVER(PARTITION BY Occupation
                             ORDER BY Name) AS row_num,
            Name, 
            Occupation
    FROM OCCUPATIONS) AS ord
GROUP BY row_num 