CREATE FUNCTION concatenarkendall(codigo IN PRODXTIPO.CODPROD%TYPE) RETURN VARCHAR IS
    CURSOR cursor1(codigo NUMBER) IS SELECT * FROM PRODXTIPO where CODPROD= codigo order by id;
    contador_pos number:=0;
    String_result varchar(32767):='';
    begin
        for recorredor in cursor1(codigo) loop
            if contador_pos<1 then
                String_result:=recorredor.tipo;
                contador_pos:=contador_pos+1;
            else
                String_result:=String_result||'-'||recorredor.tipo;
            end if;
        end loop;
        return String_result;
    end;