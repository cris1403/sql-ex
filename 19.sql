SELECT DISTINCT p.maker, avg(l.screen) as mean
FROM product p, laptop l
WHERE p.model = l.model
GROUP BY p.maker
