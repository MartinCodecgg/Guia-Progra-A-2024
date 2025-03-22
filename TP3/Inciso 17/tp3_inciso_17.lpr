program tp3_inciso_17;
var
   precioBase,monto,totaldescuento,preciofinal:real;
   nombre,NombreClienteMasDescuento:string;
   cantArticulos,i,contArtDescuento,ClienteMasDescuento,ClienteSoloArtDescuento:integer;
   condDescuento:char;
begin
     monto:=0;
     contArtDescuento:=0;
     clienteMasDescuento:=0;
     clienteSoloArtDescuento:=0;
     preciofinal:=0;
     totaldescuento:=0;
     writeln('Hola');
     Writeln('Ingrese el nombre del cliente');
     readln(nombre);
     while nombre<> '***' do
           begin
                Writeln('Ingrese la cantidad de articulos que compro el cliente');
                readln(cantArticulos);
                for i:=1 to cantArticulos do
                    begin
                         Writeln('Ingrese el precio base del articulo');
                         readln(preciobase);
                         monto:=monto+preciobase;
                         writeln('El articulo esta en promocion? Si(S),NO(N)');
                         readln(condDescuento);
                         condDescuento:=upcase(condDescuento);

                         if i=1 then
                            begin
                               NombreClienteMasDescuento:=nombre;

                               if condDescuento='S' then
                               begin
                               preciofinal:=preciofinal+preciobase*0.9;
                               contArtDescuento:=contArtDescuento+1;
                               totalDescuento:=totaldescuento+preciobase*0.1;
                               if (contartdescuento>clientemasdescuento) then
                                  clientemasdescuento:=contartdescuento;

                               end

                               else
                               preciofinal:=preciofinal+preciobase;

                            end



                         else

                         if condDescuento='S' then
                            begin
                            preciofinal:=preciofinal+preciobase*0.9;
                            contArtDescuento:=contArtDescuento+1;
                            totalDescuento:=totaldescuento+preciobase*0.1;

                            end
                         else
                           preciofinal:=preciofinal+preciobase;

                         if cantArticulos=contArtDescuento then
                            ClienteSoloArtDescuento:=ClienteSoloArtDescuento+1;


                    end;


                  writeln('El monto total de la venta es ', monto:0:2);
                  writeln('El total del descuento es ',totaldescuento:0:2);
                  writeln('El precio final es ',PrecioFinal:0:2);

                  Writeln('Ingrese el nombre del cliente');
                  readln(nombre);


           end;
           writeln('El cliente que compro mas articulos en descuento es ',NombreClienteMasDescuento);
           writeln('La cantidad de clientes que compraron articulos solo con descuento ',ClienteSoloArtDescuento);
           readln();

end.
