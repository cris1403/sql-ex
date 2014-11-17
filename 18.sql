SELECT DISTINCT p2.maker, p1.price
FROM printer p1, product p2
WHERE p1.model = p2.model
AND p1.color = 'y'
AND p1.price = (SELECT min(price) FROM printer WHERE color = 'y')
