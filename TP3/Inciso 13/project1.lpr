program project1;
var
tipo:char;
precio:real;
begin
 writeln('Ingrese su opcion {P=panadería, F=fiambrería, A=almacén}');
 Readln( Tipo, Precio);
 Tipo := Upcase(Tipo);

 While (Tipo<>'P') and (Tipo<>'F') and (Tipo<>'A') do
 Begin
   writeln('Ingrese su opcion {P=panadería, F=fiambrería, A=almacén}');
   Readln( Tipo, Precio); Tipo := Upcase(Tipo);
   write(tipo);
 End;
    write(tipo);
    readln();

end.



//Reescribiendo usando repeat until

program Project1;
var
tipo:char;
precio:real;
begin
 writeln('Ingrese su opcion {P=panadería, F=fiambrería, A=almacén}');
 Readln( Tipo, Precio);
 Tipo := Upcase(Tipo);

 repeat                                                  //EL CICLO REPEAT ES MAS COMODO Y EFICIENTE CLARAMENT
                                                           //CIERRA EL CICLO CUANDO LA CONDICON DEL UNTIL ES VERDADERA
                                                    //EN CAMBIO EL WHILE CIERRA EL WHILE DESDE EL PRINCIPIO CUANDO LA CONDICION ES FALSA

 writeln('Ingrese su opcion {P=panadería, F=fiambrería, A=almacén}');
 Readln( Tipo, Precio);
 Tipo := Upcase(Tipo);

 until (Tipo<>'P') and (Tipo<>'F') and (Tipo<>'A')

        write(tipo);
    readln();

end.

