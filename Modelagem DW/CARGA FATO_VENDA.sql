INSERT INTO FATO_VENDA (
SELECT
TO_NUMBER(TO_CHAR(ST_VENDA.DT_VENDA, 'yyyymmdd'), '99999999'),
COALESCE(DIM_CLIENTE.SK_CLIENTE, - 1),
COALESCE(DIM_PRODUTO.SK_PRODUTO, - 1),
ST_VENDA.QTD_VENDIDA,
ST_VENDA.VL_VENDIDO,
ST_VENDA.QTD_VENDIDA * ST_VENDA.VL_VENDIDO,
CURRENT_DATE
FROM
ST_VENDA
LEFT JOIN DIM_CLIENTE ON ST_VENDA.CD_CLIENTE = DIM_CLIENTE.NK_CLIENTE
LEFT JOIN DIM_PRODUTO ON ST_VENDA.CD_PRODUTO = DIM_PRODUTO.NK_PRODUTO);