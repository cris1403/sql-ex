WITH damaged AS (
SELECT DISTINCT o.ship, b.*
FROM outcomes o, battles b
WHERE o.result = 'damaged'
AND o.battle = b.name
)
SELECT DISTINCT o.ship
FROM outcomes o, damaged d, battles b
WHERE o.battle = b.name
AND o.ship = d.ship
AND EXISTS (SELECT ship FROM damaged)
AND d.date < b.date
