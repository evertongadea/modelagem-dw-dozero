INSERT INTO ST_PRODUTOS
SELECT
CDPRODUTO,
NOMEPRODUTO,
CATEGORIAPRODUTO,
PRECOPRODUTO,
STATUSPROD,
CURRENT_DATE
FROM
LEG_PRODUTOS;