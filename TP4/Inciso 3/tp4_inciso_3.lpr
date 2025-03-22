program tp4_inciso_3;

function
        suma(n:integer):integer;
var
  i:integer;

begin
     suma:=0;
     for i:=n downto 1 do
         begin
              suma:=suma+i;

         end;

end;

var
   n:integer;

begin
     writeln('Ingrese su numero natural;');
     readln(n);
     writeln('La suma de todos los numeros naturales hasta ',n,' es ',suma(n));
     readln();
end.

