Program Inciso_2;

var
   i,n,anterior:integer; cont:integer;


begin
     cont:=0;

     writeln('Ingrese cantidad de numeros');

     readln(n);

     for i:=1 to n do
         begin
              writeln('Ingrese N'); readln(n);
              if i=1 then
                 begin
                 anterior:=n;
                 end
              else
                  begin
                  if N>Anterior then
                     cont:=cont+1;
                     anterior:=n;
                  end;
         end;
     writeln(cont);
     readln();
end.

