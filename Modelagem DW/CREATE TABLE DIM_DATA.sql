CREATE TABLE DIM_DATA (
SK_DATA INTEGER NOT NULL,
DATA DATE NOT NULL,
DESC_DATA_COMPLETA VARCHAR(60) NOT NULL,
NR_ANO INTEGER NOT NULL,
NM_TRIMESTRE VARCHAR(20) NOT NULL,
NR_ANO_TRIMESTRE VARCHAR(20) NOT NULL,
NR_MES INTEGER NOT NULL,
NM_MES VARCHAR(20) NOT NULL,
ANO_MES VARCHAR(20) NOT NULL,
NR_SEMANA INTEGER NOT NULL,
ANO_SEMANA VARCHAR(20) NOT NULL,
NR_DIA INTEGER NOT NULL,
NR_DIA_ANO INTEGER NOT NULL,
NM_DIA_SEMANA VARCHAR(20) NOT NULL,
FLAG_FINAL_SEMANA CHAR(3) NOT NULL,
FLAG_FERIADO CHAR(3) NOT NULL,
NM_FERIADO VARCHAR(60) NOT NULL,
DT_CARGA TIMESTAMP NOT NULL,
CONSTRAINT SK_DATA_PK PRIMARY KEY (SK_DATA)
);