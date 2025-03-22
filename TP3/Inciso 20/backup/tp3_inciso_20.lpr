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
     { Ignorar ceros }
        while (n = 0) and not eof(arch) do
        begin
          if n<0 then
          begin
             dentroconjun:=true;
             if (dentroconjun=true) and (contpositivos>0) then
             writeln('el promedio del subconjunto es',(acum/contpositivos),'%');
             contPositivos:=0;
             acum:=0;
          end

          else
          acum:=acum+n;
          contPositivos:=contPositivos+1;

          read(arch,n);


        end;
      end;

     readln();
end.

