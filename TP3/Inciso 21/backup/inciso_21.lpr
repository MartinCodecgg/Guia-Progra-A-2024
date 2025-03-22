program inciso_21;
var
   arch:text;
   n,maximo,contDis0,Contnumeroso:integer;
   dentrociclo,cierre1,condcierre:boolean;
begin
     dentrociclo:=false;
     condcierre:=false;
     contDis0:=0;
     ContNumeroso:=0;
     maximo:=0;
     assign(arch,'datos.txt');
     reset(arch);
     read(arch,n);

     while  (condcierre=false) and (not eof(arch)) do
           begin
                if n=0 then
                   begin
                        if cierre1=true then
                           condcierre:=true
                        else
                        cierre1:=true;
                        if maximo<>0 then
                           begin
                           writeln('Maximo del subconjunto es ',maximo);
                           if contDis0>contNumeroso then
                              contNumeroso:=contDis0;
                           end;


                        ContDis0:=0;
                        maximo:=0;
                   end

                else
                    if n>maximo then
                       begin
                            maximo:=n;
                            contDis0:=contDis0+1;
                            cierre1:=false;
                       end;

                       read(arch,n);

           end;
       writeln('El conjunto mas numeroso fue ',ContNumeroso);
       readln();

end.

