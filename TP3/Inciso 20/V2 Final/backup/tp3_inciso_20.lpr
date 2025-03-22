program tp3_inciso_20;
var
   arch:text;
   dentroconjun:boolean;
   n,acum,contPositivos:integer;

begin
     assign(arch,'numeros.txt');
     reset(arch);
     dentroconjun:=false;
     contPositivos:=0; acum:=0;

     read(arch,n);

     if n<0 then
     dentroconjun:=true;

     while not eof(arch) do
     begin
          if n<0 then
          begin
             dentroconjun:=true;
             if (dentroconjun=true) and (contpositivos>0) then
             writeln('el promedio del subconjunto es',(acum/contpositivos):0:2,'%');
             contPositivos:=0;
             acum:=0;
          end

          else
          acum:=acum+n;
          if n>0 then                            //Control de arriba a abajo, hacer la prueba de escritorio fijandome bien que puede estar mal
                                                 //Cualquier minimo detalle cambia todo
          contPositivos:=contPositivos+1;

          read(arch,n);

     end;

     readln();
end.

