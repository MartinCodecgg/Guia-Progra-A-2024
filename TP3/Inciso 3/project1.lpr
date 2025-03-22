program TP3_INCISO_3;
 var
   contMayor,comparar,n,i,number:integer;
begin
  writeln('A continuacion ingrese la cantidad de numeros enteros que desea ingresar');
  readln(n);
  contMayor:=0;

  for i:=1 to n do
      begin
           writeln('Ingrese un numero entero');
           readln(number);

           if i=1 then
              comparar:=number;

           if i<>1 then
              begin
                if number>comparar then
                  contMayor:=contmayor+1;

                comparar:=number;


              end;


      end;
  writeln('La cantidad de veces que un numero es mayor que otro es ',contMayor);
  readln();
end.

