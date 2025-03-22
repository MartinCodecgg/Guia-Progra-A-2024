program tp8_inciso_6_b;

type
    Tv=array[1..5]of byte;

const
     vnum:tv=(1,2,3,4,5);
     n=5;

function Posicion(vnum:tv;ini,fin,x:byte):byte;
var
    m:byte;
begin
      m:=trunc((ini+fin)/2); //RECORDAR QUE EN PASCAL, LA DIVISION TIENE MAYOR PRECEDENCIA QUE LA SUMA, ASI QUE INI+FIN DEBE IR ENTRE PARENTESIS
                            //Se pudo haber usado div tambien. Ini+fin es igual a la cantidad de elementos que estamos manejando pero manteniendo
                                //su respectiva posicion
      if ini>fin then     //Se dara porque ini= m+1  en algun momento si queres buscar el 6 por ej que claramente no esta, en algun momento m sera igual
         posicion:=0     //A 5 por lo que ini=6 y se dara que 6>5 entonces se concluye que el elemento no esta
      else
      begin
          if x=vnum[m] then
             posicion:=m
          else if x>vnum[m] then
                  posicion:=posicion(vnum,m+1,fin,x)
          else
              posicion:=posicion(vnum,ini,m-1,x);
     end;
end;


var
    x:byte;
begin
     Writeln('Ingrese X y que averigue su posicion si existe');
     readln(x);

     Writeln('La posicion es ',posicion(vnum,1,n,x));

     readln();
end.

