CREATE TABLE FATO_VENDA (
SK_DATA INTEGER NOT NULL,
SK_CLIENTE INTEGER NOT NULL,
SK_PRODUTO INTEGER NOT NULL,
QTD_VENDA INTEGER NOT NULL,
VL_VENDA_UNI NUMERIC(12, 4) NOT NULL,
VL_VENDA_TOTAL NUMERIC(12, 2) NOT NULL,
DT_CARGA TIMESTAMP NOT NULL,
CONSTRAINT FATO_VENDA_DIM_CLIENTE_FK FOREIGN KEY (SK_CLIENTE)
REFERENCES DIM_CLIENTE (SK_CLIENTE),
CONSTRAINT FATO_VENDA_DIM_PRODUTO_FK FOREIGN KEY (SK_PRODUTO)
REFERENCES DIM_PRODUTO (SK_PRODUTO),
CONSTRAINT FATO_VENDA_DIM_DATA_FK FOREIGN KEY (SK_DATA)
REFERENCES DIM_DATA (SK_DATA)
);