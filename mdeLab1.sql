DROP TABLE empresa;
DROP TABLE edificios;
DROP TABLE divisoes;
DROP TABLE equipEletricos;
DROP TABLE consumosEnergia;
DROP TABLE anomalias;

create table empresa (
    id NUMBER,
    name varchar(20)
);

create table edificios (
    id NUMBER(4),
    company_id NUMBER(4),
    endereco VARCHAR(20),
    localidade VARCHAR(20),
    gps VARCHAR(20),
    area NUMBER(4),
    tipologia VARCHAR(1)
);

create table divisoes (
    id NUMBER(4),
    edificio_id NUMBER(4),
    piso NUMBER,
    area NUMBER,
    altura NUMBER,
    janelas NUMBER
);

create table equipEletricos (
    id NUMBER,
    divisao_id NUMBER,
    consumoEnergetico_id NUMBER,
    referencia VARCHAR(20),
    modelo VARCHAR(20),
    tensaoAlim NUMBER,
    potAtiva NUMBER
);

create table consumosEnergia (
    id NUMBER,
    divisao_id NUMBER,
    edificio_id NUMBER,
    empresa_id NUMBER,
    IncFunc DATE,
    FimFunc DATE,
    consumo NUMBER
);

create table anomalias (
    id NUMBER,
    equipEletrico_id NUMBER,
    consumoAnomalo_id NUMBER,
    tipoAnomalia VARCHAR(20)
);


















