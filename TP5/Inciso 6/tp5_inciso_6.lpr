program tp5_inciso_6;
type tipovec1=array[1..32] of string;
     st20=string[20];


procedure
         ArmarVec(var v:tipovec1;var av:byte);
var
     arch:text;
     car:char;
     palabra:st20;
     i:byte;
begin
     assign(arch,'datos.txt');reset(arch);
     av:=0;

      while not eof(arch) do
      begin
            writeln('entro primer while');
            palabra:='';
            read(arch,car);
            while (car<>' ') and (car<>',') and (car<>'.') do
            begin
                  writeln('Entro segundo while');
                  palabra:=palabra+car;
                  read(arch,car);
            end;
            av:=av+1;
            v[av]:=palabra;

      end;
      for i:=1 to av do
      begin
          writeln(v[i]);
          writeln(av);
          writeln(length(v[i]));
      end;

end;


{function
        funcionCar(v:tipovec1;i:byte);
var

begin

        ncar:=0;
        while (v[i])[ncar]
end }

procedure A(var v:tipovec1;av:byte; var contPal:byte);

var
   i:byte;
begin
     for i:=1 to av do
     begin
         contPal:=contPal+1;
     end;


end;


procedure B(var v:tipovec1;var longMasLarga:byte;av:byte);

var
   i,contcantPal,compararPal:byte;

begin
     compararPal:=0;
     for i:=1 to av do
     begin
         if (length(v[i])>compararPal) then
         begin
            writeln('entro if de b');
            compararPal:=length(v[i]);
         end;
     end;
     longMasLarga:=compararPal
end;

procedure C(var v:tipovec1;av:byte;var palabraAnt:st20);

var
    compPalabra:st20;
    i:byte;
begin
     compPalabra:='³';  //poner alt 252 es una letra muy alta para no tener problemas en esto
      for i:=1 to av do
      begin
          if v[i]<compPalabra then
             compPalabra:=v[i];
      end;

     palabraAnt:=compPalabra;
end;


procedure D(var v:tipovec1;av:byte);

var
   i:byte;

begin
     for i:=1 to length(v[1]) do
         if (v[1][i]) in ['a'..'z']  then        //Hago solo para la primer palabra

             writeln(v[1][i],' es minuscula')
         else
             writeln(v[1][i],' es mayuscula');

end;






var
    opcion:char;
    v:tipovec1;
    av,contPal,LongMasLarga:byte;
    PalabraAnt:st20;



begin

     ArmarVec(v,av);
     writeln('A continuacion ingrese una opcion del menu de opciones a,b,c,d');
     readln(opcion);
     case opcion of
     'a':begin
              A(v,av,contPal);
              writeln('Contiene ',contPal,' Palabras');
         end;
     'b':begin
              B(v,LongMasLarga,av);
              writeln('Palabra mas larga es ',LongMasLarga);
         end;
     'c':begin
              C(v,av,PalabraAnt);
              writeln('Palabra mas larga es ',PalabraAnt);
         end;
     'd': D(v,av);        //
     end;
     readln();
end.

