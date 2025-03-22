program tp3_inciso_20;
var
   arch: text;
   dentroconjun: boolean;
   n, acum, contPositivos: integer;
   promedio: real;

begin
    assign(arch, 'numeros.txt');
    reset(arch);

    dentroconjun := false;
    contPositivos := 0;
    acum := 0;

    while not eof(arch) do
    begin
        read(arch, n);

        { Ignorar ceros }
        while (n = 0) and not eof(arch) do
            read(arch, n);

        if n < 0 then
        begin
            { Si estamos dentro de un subconjunto y hay positivos contados, imprimir el promedio }
            if dentroconjun and (contPositivos > 0) then
            begin
                promedio := acum / contPositivos;
                writeln('El promedio del subconjunto es: ', promedio:0:2);
            end;

            { Preparar para el próximo subconjunto }
            dentroconjun := true;
            contPositivos := 0;
            acum := 0;
        end
        else if n > 0 then
        begin
            acum := acum + n;
            contPositivos := contPositivos + 1;
        end;
    end;

    { Manejo del último subconjunto, si existe }
    if dentroconjun and (contPositivos > 0) then
    begin
        promedio := acum / contPositivos;
        writeln('El promedio del subconjunto es: ', promedio:0:2);
    end;

    close(arch);
    readln();
end.
