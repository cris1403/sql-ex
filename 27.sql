SELECT p.maker, avg(pc.hd) as mean
FROM product p, pc
WHERE p.model = pc.model
AND p.maker IN (SELECT maker
                FROM product
                WHERE type = 'Printer')
GROUP BY p.maker
