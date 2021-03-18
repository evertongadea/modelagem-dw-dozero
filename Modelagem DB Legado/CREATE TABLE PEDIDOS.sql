CREATE TABLE PEDIDOS (
NUMEROPEDIDO INTEGER NOT NULL,
DATAPEDIDO TIMESTAMP NOT NULL,
DATAPAGAMENTOPEDIDO TIMESTAMP DEFAULT NULL,
DATAENTREGAPEDIDO TIMESTAMP DEFAULT NULL,
STATUSPEDIDO VARCHAR(100) NOT NULL,
COMENTARIOS TEXT,
NUMEROCLIENTE INTEGER NOT NULL,
PRIMARY KEY (NUMEROPEDIDO)
);