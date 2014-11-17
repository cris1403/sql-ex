WITH temp as (
SELECT p.model, pc.price
FROM product p, pc
WHERE p.maker = 'A'
AND p.model = pc.model
UNION ALL
SELECT p.model, l.price
FROM product p, laptop l
WHERE p.maker = 'A'
AND p.model = l.model
)
SELECT avg(price)
FROM temp

