INSERT INTO DIM_PRODUTO
SELECT
NEXTVAL('dim_produto_id_seq'),
CD_PRODUTO,
NOME_PRODUTO,
CAT_PRODUTO,
PRECO_PRODUTO,
STATUS_PRODUTO,
CURRENT_DATE
FROM
ST_PRODUTOS;