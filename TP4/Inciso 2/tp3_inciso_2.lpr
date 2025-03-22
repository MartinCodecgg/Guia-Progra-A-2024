program tp3_inciso_2;
function
        factorial(num:integer):integer;
var
   acum,i:integer;

begin
        if num=0 then
           factorial:=1
        else
           begin
                for i:=num downto 1 do
                    begin
                    if i=num then
                       acum:=i         //Lo que debo hacer es multiplicar por i y no por num, si hago con num, multiplicare siempre por el mismo
                    else
                       acum:=acum*i

                    end;
                    factorial:=acum;



           end;


end;


var
   num:integer;
begin
     writeln('Ingrese el numero a evaluar su factorial');
     readln(num);
     write('Su factorial es ',factorial(num));
     readln();
end.

