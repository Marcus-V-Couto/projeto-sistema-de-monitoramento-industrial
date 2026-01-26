CREATE DATABASE monitoramento_industrial;

CREATE TABLE maquinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    tempo_ciclo_ideal_segundos NUMERIC
);

CREATE TABLE log_producao (
    id SERIAL PRIMARY KEY,
    id_maquina INT REFERENCES maquinas(id),
    turno VARCHAR(10),
    inicio TIMESTAMP,
    fim TIMESTAMP,
    qtde_producao INT,
    qtde_qualitativa INT
);

CREATE TABLE log_inatividade (
    id SERIAL PRIMARY KEY,
    id_maquina INT REFERENCES maquinas(id),
    inicio TIMESTAMP,
    fim TIMESTAMP,
    causa VARCHAR(100)
);

CREATE TABLE defeitos (
    id SERIAL PRIMARY KEY,
    id_producao INT REFERENCES log_producao(id),
    tipo_defeito VARCHAR(50),
    qtde INT
);

SELECT * from maquinas;

SELECT * from log_producao;

SELECT * from log_inatividade;

SELECT * from defeitos;