CREATE SEQUENCE DIM_PRODUTO_ID_SEQ
INCREMENT BY
1
MINVALUE 1
MAXVALUE 999999 START 200;

CREATE TABLE DIM_PRODUTO (
SK_PRODUTO INTEGER PRIMARY KEY NOT NULL DEFAULT NEXTVAL('dim_produto_id_seq'),
NK_PRODUTO VARCHAR(100),
NM_PRODUTO VARCHAR(100),
CAT_PRODUTO VARCHAR(100),
VL_PRODUTO NUMERIC(12, 4),
STATUS_PRODUTO VARCHAR(50),
DT_CARGA TIMESTAMP NOT NULL
);