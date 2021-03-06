SELECT
DIM_DATA.NR_ANO,
DIM_DATA.NR_MES,
DIM_DATA.NM_MES,
SUM(FATO_VENDA.QTD_VENDA) AS QTD_VENDA,
SUM(FATO_VENDA.VL_VENDA_TOTAL) AS VL_VENDA_TOTAL,
DIM_PRODUTO.NM_PRODUTO,
DIM_CLIENTE.NM_CLIENTE
FROM
FATO_VENDA
INNER JOIN DIM_DATA ON FATO_VENDA.SK_DATA = DIM_DATA.SK_DATA
INNER JOIN DIM_CLIENTE ON FATO_VENDA.SK_CLIENTE = DIM_CLIENTE.SK_CLIENTE
INNER JOIN DIM_PRODUTO ON FATO_VENDA.SK_PRODUTO = DIM_PRODUTO.SK_PRODUTO
GROUP BY
DIM_PRODUTO.NM_PRODUTO,
DIM_DATA.NR_ANO,
DIM_DATA.NM_MES,
DIM_DATA.NR_MES,
DIM_CLIENTE.NM_CLIENTE
ORDER BY
DIM_DATA.NR_MES;