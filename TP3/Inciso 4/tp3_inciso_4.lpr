program tp3_inciso_4;
var
  n,i,number,anterior,diferencia,diferenciaAnterior,mayorDiferencia:integer;


begin
     writeln('Ingrese la cantidad de numeros enteros a ingresar en orden descendente');
     readln(n);
     diferencia:=0;

     for i:=1 to n do
         begin
               writeln('Ingrese los numeros en forma descendente');
               readln(number);
               if i=1 then
                  anterior:=number
               else
                   begin
                        diferenciaAnterior:=diferencia;

                        diferencia:=(anterior-number);

                        if (diferencia>diferenciaAnterior) then
                           mayorDiferencia:=diferencia;

                        anterior:=number
                   end;





         end;
     writeln('La mayor diferencia de numeros fue ',mayorDiferencia);
     readln();
end.

