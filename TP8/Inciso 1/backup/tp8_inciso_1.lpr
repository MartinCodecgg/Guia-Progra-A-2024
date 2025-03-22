program tp8_inciso_1;

function
        Potencia(x:byte;n:word):word;
begin
     writeln('entro ciclo');
     if n=0 then               //Es n=0 ya que si fuese uno estariamos calculando un numero menos
        potencia:=1               //aparte cuando n=1 tambien se debe multiplicar a x, solo en el 0 ya no
     else if n>0 then
         begin
         Result:=X*potencia(x,n-1);
         end;
end;


var
   n:word;
   x:byte;
begin
     writeln('Ingrese X');
     readln(x);
     writeln('Ingrese N');
     readln(n);
     Writeln('El resultado es ', Potencia(x,n));

     readln();
end.

