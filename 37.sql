WITH temp as (
SELECT s.class, s.name
FROM ships s, classes c
WHERE s.class = c.class
UNION
SELECT o.ship, o.ship
FROM outcomes o, classes c
WHERE o.ship = c.class
)
SELECT class
FROM temp
GROUP BY class
HAVING count(*) = 1
