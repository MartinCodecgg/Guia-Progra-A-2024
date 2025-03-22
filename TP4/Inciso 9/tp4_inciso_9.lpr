program tp4_inciso_9;
Function
        suma(n1,d1,n2,d2:integer):real;

begin
      suma:=(n1/d2+n2/d2)
end;

Function
        producto(n1,d1,n2,d2:integer):real;

begin
      producto:=((n1/d2)*(n2/d2))
end;

var
   n1,n2,d1,d2:integer;
   arch:text;


begin
     assign(arch,'fracciones.txt');
     reset(arch);
     readln(arch,n1);
     readln(arch,d1);
     readln(arch,n2);
     readln(arch,d2);

     if (d1<>0) and (d2<>0) then
        begin
        writeln('La suma de las dos fracciones del archivo es ',suma(n1,d1,n2,d2):0:2);
        writeln('El Producto de las dos fracciones del archivo es ',producto(n1,d1,n2,d2):0:2);
        end
     else
        writeln('los denominadores deben ser distintos de cero');


     readln();
end.

