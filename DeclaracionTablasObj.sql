CREATE TABLE factura OF fact_tipo(
    codigof PRIMARY KEY,
    fecha NOT NULL
);

CREATE TABLE detalle OF det_tipo(
    codigod PRIMARY KEY,
    codproducto NOT NULL,
    nro_unidades NOT NULL,
    valor_unitario NOT NULL,
    SCOPE FOR (codfact) IS factura,
    codfact NOT NULL
);

commit;

insert into factura values(fact_tipo(10, TO_DATE('2000/10/03', 'YYYY/MM/DD')));

insert into detalle values(1,1,35,35,
(select ref(f)
 from factura f
 where f.codigof = 10)
);

SELECT codigod, codproducto, nro_unidades, valor_unitario,
       d.codfact.codigof AS codigof, d.codfact.fecha AS fecha
FROM detalle d;

