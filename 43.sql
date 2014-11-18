WITH bat AS (
SELECT name, datepart(yyyy, date) as year
FROM battles
)
SELECT DISTINCT bat.name
FROM bat
WHERE bat.year NOT IN (SELECT DISTINCT launched 
                       FROM ships
                       WHERE launched is not null)
