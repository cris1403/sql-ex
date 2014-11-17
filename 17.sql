SELECT DISTINCT 'laptop' as type, model, speed
FROM laptop 
WHERE speed < ALL(select distinct pc.speed from pc)

