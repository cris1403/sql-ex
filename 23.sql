SELECT maker
FROM product
WHERE model= ANY (SELECT model FROM pc WHERE speed >= 750)
INTERSECT
SELECT maker
FROM product
WHERE model = ANY (SELECT model FROM laptop WHERE speed >= 750)
