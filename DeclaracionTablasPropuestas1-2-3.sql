//Declaracion tablas necesarias Propuesta 1

CREATE TABLE factura(
codigof NUMBER(20) PRIMARY KEY,
fecha DATE NOT NULL);

CREATE TABLE detalle(
    codigod NUMBER(20) PRIMARY KEY,
    codproducto NUMBER(20) NOT NULL,
    nro_unidades NUMBER(20) NOT NULL,
    valor_unitario NUMBER(20) NOT NULL,
    codfact NUMBER(20) NOT NULL REFERENCES factura
);

------------------------------------------------------------------------------------------------------------------------------------------------------------

//Declaracion tablas necesarias Propuesta 2

CREATE TABLE factura(
codigof NUMBER(20) PRIMARY KEY,
fecha DATE NOT NULL);

CREATE TABLE detalle(
    codigod NUMBER(20) PRIMARY KEY,
    codproducto NUMBER(20) NOT NULL,
    nro_unidades NUMBER(20) NOT NULL,
    valor_unitario NUMBER(20) NOT NULL,
    codfact NUMBER(20) NOT NULL REFERENCES factura
);

create index indice on detalle(codfact);

------------------------------------------------------------------------------------------------------------------------------------------------------------

//Declaracion tablas necesarias Propuesta 3

CREATE CLUSTER mi_cluster
(codigo number(20));

CREATE INDEX cluster_factura ON CLUSTER mi_cluster;

CREATE TABLE factura(
codigof NUMBER(20) PRIMARY KEY,
fecha DATE NOT NULL) CLUSTER mi_cluster(codigof);

CREATE TABLE detalle(
codigod NUMBER(20) PRIMARY KEY,
codproducto NUMBER(20) NOT NULL,
nro_unidades NUMBER(20) NOT NULL,
valor_unitario NUMBER(20) NOT NULL,
codfact NUMBER(20) NOT NULL REFERENCES factura
) CLUSTER mi_cluster(codfact); 
