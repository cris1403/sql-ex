SELECT model, type
FROM Product
WHERE model not LIKE '%[^A-Z]%'
OR model not LIKE '%[^0-9]%'
