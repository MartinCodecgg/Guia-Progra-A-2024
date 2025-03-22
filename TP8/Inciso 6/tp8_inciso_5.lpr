program tp8_inciso_5;

type
    Tv=array[1..4]of char;
const
     Vletra:tv=('d','c','b','a');    //Recordar que los char en array deben ir con comillas, no pueden ir sueltos como los numeros
     n=4;

function Posicion(vletra:Tv;n:byte;x:char):byte;

begin
     if n>0 then
        begin
             if Vletra[n]=x then
                posicion:=n
             else
                posicion:=posicion(vletra,n-1,x)
        end
     else
         posicion:=0;
end;


var
   x:char;
   pos:byte;
begin
     Writeln('Ingrese el elemento que quisiera verificar su existencia');
     readln(x);

     pos:=posicion(vletra,n,x);

     if pos<>0 then
        writeln('El elemento se encuentra en la posicion ',pos)
     else
        writeln('No se encontro el elemento');

     readln();

end.

