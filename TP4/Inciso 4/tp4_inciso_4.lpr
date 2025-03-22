program tp4_inciso_4;
function
        resul(x,n:integer):integer;

var
   i:integer;
begin
     resul:=x;
     for i:=1 to n-1 do                 //Es muy importante hacer una prueba de escritorio de estas cosas, o saber cuando hay que restarle uno o no
         begin                  //Cuando hacemos el ciclo este para calcular la potencia hay que tener en cuenta que solo debemos multiplicar dos veces
                                //por el mismo numero, porque al hacer 2x2 ya estamos haciendo 2 al cuadrado, luego para 2 al cubo es 2x2x2
              resul:=resul*x;
         end;

end;

var
   x,n:integer;

begin
     Writeln('Ingrese el numero X');
     readln(x);
     Writeln('Ingrese el numero n');
     readln(n);
     Writeln('X elevado a la n es igual a ',resul(x,n));
     readln();
end.

