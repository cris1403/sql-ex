WITH temp AS (
SELECT model, price FROM pc
UNION ALL
SELECT model, price FROM laptop
UNION ALL
SELECT model, price FROM printer
)
SELECT DISTINCT model
FROM temp
WHERE price = (SELECT max(price) FROM temp)

