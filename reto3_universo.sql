SELECT
  *
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