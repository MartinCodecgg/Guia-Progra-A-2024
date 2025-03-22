program tp4_inciso_12;

procedure succesion(cota:byte);

var
   ant,sig,act,i:byte;
begin
              ant:=1;
              act:=1;
              i:=1;
              writeln(1); writeln(1);
              for i:=1 to cota-1 do          //Muestra los dos primeros numeros, y luego muestra hasta la cota-1
                                       //Porque como ya los dos primeros ya estan impresos, para que muestre hasta el termino 5 seria cota-2
                                       //Pero como queremos que muestre uno mas, le sumamos 1 y queda cota-1
                  begin
                       sig:=act;
                       act:=act+ant;
                       ant:=sig;
                       writeln(act);
                  end;

end;


var
   cotas,t,mostrar:byte;
   cota:word;


begin
     writeln('A continuacion ingrese la cantidad de cotas que desea ingresar');
     readln(cotas);

     for t:=1 to cotas do
         begin
              writeln('Ingrese la cota');
              readln(cota);
              writeln();
              succesion(cota);     //Le damos el valor de la cota, y hacemos que el procedimiento haga todo

         end;
    readln();
end.

