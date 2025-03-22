program tp4_inciso_1;
function TipoLetra(letra:char):boolean;

begin
     if (letra>='A') and (letra<='Z') then
        tipoletra:=true
     else
         tipoletra:=false



end;


var
   letra:char;

begin
     Writeln('Ingrese la letra a evaluar');
     Readln(letra);
     letra:=upcase(letra);
     if Tipoletra(letra) then
        writeln('Si es una letra')
     else
        writeln('No es una letra');
readln();
end.
