INSERT INTO DIM_CLIENTE
SELECT
NEXTVAL('dim_cliente_id_seq'),
CD_CLIENTE,
NOME_CLIENTE,
EMAIL_CLIENTE
FROM
ST_CLIENTE;