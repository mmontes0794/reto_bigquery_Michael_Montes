SELECT
  c.nombre_cliente,
  i.nombre_articulo,
  v.fecha,
  v.cantidad,
  i.costo,
  v.precio,
FROM
  `bootcamp-tismart.retos_Michael_Montes.registro_clientes` c
INNER JOIN
  `bootcamp-tismart.retos_Michael_Montes.registro_ventas` v
ON
  c.codigo_cliente = v.codigo_cliente
INNER JOIN
  `bootcamp-tismart.retos_Michael_Montes.registro_inventarios` i
ON
  i.codigo_articulo = v.codigo_articulo
GROUP BY c.nombre_cliente, i.nombre_articulo, v.fecha, i.costo, v.precio, v.cantidad