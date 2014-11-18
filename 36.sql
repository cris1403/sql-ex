SELECT s.name
FROM ships s, classes c
WHERE s.name = c.class
union
SELECT o.ship
FROM  outcomes o, classes c
WHERE o.ship = c.class
