program tp8_inciso_7;

type
    Tm=array[1..32,1..32]of byte;

Procedure
         AlmacenarMatriz(var mt:tm; var n:byte);
var
   arch:text;
   m,elem:byte;
   i,j:byte;
begin
     assign(arch,'matriz.txt'); reset(arch);
     n:=0;

     while not eof(arch) do
           begin
                n:=n+1;
                m:=0;
                while not eoln(arch) do
                      begin
                           m:=m+1;
                           read(arch,elem);
                           mt[n,m]:=elem;
                      end;
                readln(arch);
           end;
     for i:=1 to n do
         begin
              for j:=1 to m do
                  begin
                       write(mt[i,j],' ');
                  end;
              writeln();
         end;

end;

function MayorElem(mt:tm; n,m,av:byte):byte;

var
   temp:byte;
begin
 if n>0 then    //Si n=0 significa que ya recorrio todas las filas, debe saltear y no hacer nada
    begin
     if m=1 then
        begin
             m:=av;    //Cuando llego al ultimo elemento de la fila debe compararse con el ultimo de la fila de arriba, hay que reasignar m a av que contiene el limite
             temp:=mayorElem(mt,n-1,m,av);    //Saltear a siguiente fila (Recordar se compara de ultimo a primero elemento)
             if mt[n,m]<temp then
                mayorElem:=mt[n,m]
             else
                mayorElem:=temp;
        end
     else
         begin
              temp:=mayorElem(mt,n,m-1,av);    //Se usa temp para evitar que calcule dos veces la funcion innecesariamente
              if (mt[n,m]<temp) then
                 mayorElem:=mt[n,m]
              else
                  mayorElem:=temp;
         end;
    end
  else
      mayorElem:=255;     //Importante ya que cuando llega al final donde n-1=0, el valor que toma minElement es 0, y pasa a ser el minimo, por ello le damos el valor
end;                       //mas alto a este     //Aclarar que toma cero porque no entra al ciclo



var
   mt:tm;
   m,n,av:byte;

begin

     almacenarMatriz(mt,n);
     m:=n;
     av:=n;
     Writeln('De la matriz en cuestion, el mayor elemento es ',MayorElem(mt,n,m,av));    //Dice mayor pero es el minimo

     readln();
end.

