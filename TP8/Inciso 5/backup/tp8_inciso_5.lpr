program tp8_inciso_5;

type
     Tv=array[1..9]of byte;

const
     Vent:tv=(1,2,3,4,5,6,7,8,8);
     n=9;


function suma(vent:tv;n:byte):byte;

begin
     if n=0 then
        suma:=0
     else
     suma:=vent[n]+suma(vent,n-1);

end;

procedure mostrar(vent:tv;n:byte);  //DE ESTA FORMA SE MUESTRA DESCENDENTE

begin
     if n>0 then                          //Debemos poner una condicion para n, para que no trabaje con valores anteriores a los 9 valores del vector
     begin                               //Cuando n llega a 0, llega al procedimiento, y no hace nada, simplemente lo saltea
         write(vent[n]);                 //En si siempre en recursividad, va una condicion final y una general, SIEMPRE
         mostrar(vent,n-1);
                                         //Hay que hacer por separado esto, ya que los procedimientos, no devuelven un valor como las funciones
     end;                                               //Un write que escriba el elemento actual y otro mostrar aparte para que muestre el siguiente

end;

procedure alreves(vent:tv;n:byte);    //DE ESTA FORMA SE MUESTRA DE FORMA DESCENDENTE

begin
     if n=1 then
     write(vent[n])
     else
     begin
         alreves(vent,n-1);
         write(vent[n]);
     end;



end;

{Function MayorElem(vent:tv;n:byte):byte;          //Habia que usar Procedimiento

begin
        if n>0 then
        begin
         if n>mayorElem(vent,n-1) then
            mayorElem:=n
         else
            mayorElem:=mayorElem(vent,n-1);
        end;

end; }

Function MayorElem(vent:tv;n:byte):byte;          //Habia que usar Procedimiento
var
   temp:byte;
begin
        if n=1 then
        mayorElem:=vent[n];
        begin
            temp:=mayorElem(vent,n-1);
         if vent[n]>temp then
            mayorElem:=vent[n]
         else
            mayorElem:=temp;
        end;

end;

function promedio(vent:tv;n:byte):real;

var
   tempsuma:byte;
begin
     if n>0 then
     begin
          tempsuma:=vent[n]+suma(vent,n-1);     //Uso la funcion suma antes creada para ahorrarme codigo, pongo tempsuma refiriendome a suma
          promedio:=(tempsuma/n)                 //ya que debe llamarse diferente a suma porque ya esta ocupada por la funcion que hago llamar
     end;


end;

begin

     writeln('La suma del vector dado es ',suma(Vent,n));

     Writeln('A continuacion se muestra al vector');
     Mostrar(vent,n);
     writeln();


     writeln('A continuacion se muestra el vector al revez');
     Alreves(vent,n);
     writeln();
     writeln('El mayor de los elementos es ',mayorelem(vent,n));

     Writeln('El promedio de los elementos del vector es ',promedio(vent,n):0:2);


     readln();

end.

