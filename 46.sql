SELECT s.name, c.displacement, c.numGuns
FROM outcomes o, classes c, ships s
WHERE o.ship = s.name
AND s.class = c.class
AND o.battle = 'Guadalcanal'
UNION
SELECT DISTINCT o.ship, c.displacement, c.numGuns
FROM outcomes o, classes c
WHERE o.ship = c.class
AND o.battle = 'Guadalcanal'
UNION
SELECT o.ship, NULL, NULL
FROM outcomes o
WHERE o.battle = 'Guadalcanal'
AND o.ship not in (SELECT class FROM classes)
AND o.ship not in (SELECT name FROM ships)

