WITH base AS(
    SELECT
    s.ID,
    s.Name,
    s.Marks,
    g.Grade
    FROM Students s 
    LEFT JOIN Grades g ON s.marks BETWEEN g.min_mark AND g.max_mark
    
)
SELECT 
CASE WHEN grade <8 THEN 'NULL' ELSE Name END AS Name,
Grade,
marks
FROM base
ORDER BY Grade desc, Name asc, Marks asc; 
