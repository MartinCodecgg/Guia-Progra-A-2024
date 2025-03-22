program tp3_inciso_18;
var
   precioBase,monto,totaldescuento,preciofinal:real;
   nombre,NombreClienteMasDescuento:string;
   cantArticulos,i,contArtDescuento,ClienteMasDescuento,ClienteSoloArtDescuento,N:integer;
   condDescuento:char;
   arch:text;
begin
     N:=1;
     assign(arch,'datos.txt');
     reset(arch);
     //INICIALIZAR VARIABLES
     clienteSoloArtDescuento:=0;
     //INICIALIZAR VARIABLES
     writeln('Hola');
     readln(arch,nombre);
     while nombre<> '***' do
           begin
                preciofinal:=0;
                totaldescuento:=0;
                monto:=0;
                contArtDescuento:=0;
                readln(arch,cantArticulos);
                if n=1 then
                begin
                      NombreClienteMasDescuento:=nombre;
                      N:=0;
                end;
                for i:=1 to cantArticulos do
                    begin
                         readln(arch,preciobase);
                         monto:=monto+preciobase;
                         readln(arch,condDescuento);
                         condDescuento:=upcase(condDescuento);




                         if condDescuento='S' then
                            begin
                            preciofinal:=preciofinal+preciobase*0.9;
                            contArtDescuento:=contArtDescuento+1;
                            totalDescuento:=totaldescuento+preciobase*0.1;

                            end
                         else
                           preciofinal:=preciofinal+preciobase;

                         end;

                         if cantArticulos=contArtDescuento then
                            ClienteSoloArtDescuento:=ClienteSoloArtDescuento+1;

                         if contArtDescuento>ClienteSoloArtDescuento then
                            NombreClienteMasDescuento:=nombre;



                  writeln('El monto total de la venta es ', monto:0:2);
                  writeln('El total del descuento es ',totaldescuento:0:2);
                  writeln('El precio final es ',PrecioFinal:0:2);

                  Writeln('Ingrese el nombre del cliente');
                  readln(arch,nombre);
                  end;

           close(arch);
           writeln('El cliente que compro mas articulos en descuento es ',NombreClienteMasDescuento);
           writeln('La cantidad de clientes que compraron articulos solo con descuento ',ClienteSoloArtDescuento);
           readln();

end.
