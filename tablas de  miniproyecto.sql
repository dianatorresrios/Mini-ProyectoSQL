SELECT c.ID, c.Nombre
FROM Clientes c
JOIN Ventas v ON c.ID = v.Cliente_ID
GROUP BY c.ID, c.Nombre
HAVING COUNT(DISTINCT v.Producto_ID) = (SELECT COUNT(*) FROM Productos);

SELECT c.ID, c.Nombre
FROM Clientes c
JOIN Ventas v ON c.ID = v.Cliente_ID
GROUP BY c.ID, c.Nombre
HAVING COUNT(DISTINCT v.Producto_ID) = (SELECT COUNT(*) FROM Productos);

SELECT c.ID, c.Nombre, SUM(v.Cantidad) AS "Suma total"
FROM Clientes c
JOIN Ventas v ON c.ID = v.Cliente_ID
GROUP BY c.ID, c.Nombre;

SELECT p.ID
FROM Productos p
LEFT JOIN Ventas v ON p.ID = v.Producto_ID
LEFT JOIN Clientes c ON v.Cliente_ID = c.ID
WHERE c."Barrio o Colonia" != 'Guadalajara' OR c.ID IS NULL;

SELECT v1.Producto_ID
FROM Ventas v1
JOIN Clientes c1 ON v1.Cliente_ID = c1.ID
JOIN Ventas v2 ON v1.Producto_ID = v2.Producto_ID
JOIN Clientes c2 ON v2.Cliente_ID = c2.ID
WHERE c1."Barrio o Colonia" = 'Monterrey' AND c2."Barrio o Colonia" = 'Cancún';

SELECT c."Barrio o Colonia"
FROM Clientes c
JOIN Ventas v ON c.ID = v.Cliente_ID
GROUP BY c."Barrio o Colonia"
HAVING COUNT(DISTINCT v.Producto_ID) = (SELECT COUNT(*) FROM Productos);