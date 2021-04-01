#два варианта
#1
SELECT *
FROM storehouses_products
ORDER BY CASE WHEN value = 0 THEN ~0 ELSE value END;

#2
SELECT *, 0 AS line
FROM storehouses_products
WHERE value > 0
UNION
SELECT *, 1 AS line
FROM storehouses_products
WHERE value < 1
ORDER BY line, value;
