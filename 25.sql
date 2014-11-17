SELECT DISTINCT maker
FROM product 
WHERE type = 'Printer'
AND maker IN (SELECT DISTINCT maker 
              FROM product p, pc
              WHERE p.model = pc.model
              AND pc.ram = (SELECT min(ram) 
                            FROM pc) 
              AND pc.speed = (SELECT max(speed)
                              FROM pc
                              WHERE ram = (SELECT min(ram)
                                           FROM pc)
                              )
              )
