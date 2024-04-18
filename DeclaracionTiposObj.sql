CREATE TYPE fact_tipo AS OBJECT(
    codigof NUMBER(20),
    fecha DATE
);

CREATE TYPE det_tipo AS OBJECT(
    codigod NUMBER(20),
    codproducto NUMBER(20),
    nro_unidades NUMBER(20),
    valor_unitario NUMBER(20),
    codfact REF  fact_tipo
);

commit;