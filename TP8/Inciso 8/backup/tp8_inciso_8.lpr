program tp8_inciso_8;

type
    Tmt=array[1..3,1..4]of byte;
    Tv=array[1..3]of byte;


const
     Mt:tmt=((1,8,3,1),(4,5,6,1),(7,8,8,2));   //Asi se usa const en una matriz
     n=3;
     m=4;


Procedure HallarMax(var mt:tmt;n,m,max:byte; var vmax:tv);   //El amigo del vector coincide con la cantidad de filas, asi que se usa n directamente

var
   temp:byte;
begin
   if m>0 then     //2) Cuando llega al final de la columna(m=0) debe dejar de analizar esa fila y analizar la anterior, lleva a 3)
     begin
     if n>0 then
        begin
             hallarMax(mt,n,m-1,max,vmax);
             if mt[n,m]>vmax[n] then       //1)Inicialmente viene en 0, por cada vez que llamo a HallarMax, comparo el valor del vector en la respectiva
                vmax[n]:=mt[n,m]            //fila, si es menor reemplazo el nuevo
        end;
    end;
     if (n>1) and (m=0) then     //Verificamos que no estemos en la ultima fila, y si m=0, viniendo de 2), pasamos a analizar la fila anterior
        begin
                   //Max lleva la cantidad de columnas, a m se le da max
             HallarMax(mt,n-1,max,max,vmax);
        end;

end;

var
   vmax:tv;
   max,i:byte;
begin
     max:=m;
     Writeln('Los maximos encontrados son');
     //Inicializar el vector(Para asegurarse que compare con el cero y no con otro otro valor basura(cualquiera)

     for i:=1 to n do
         begin
              vmax[i]:=0;
         end;
     HallarMax(mt,n,m,max,vmax);

     for i:=1 to n do
         write(vmax[i],' ');

     readln();
end.
