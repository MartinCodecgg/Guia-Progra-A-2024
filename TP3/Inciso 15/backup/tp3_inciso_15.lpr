program tp3_inciso_15;
var
   palabra,letra:char;
   arch:text;
   cont:integer;
begin
     cont:=0;
     Assign(arch,'palabras.txt');
     reset(arch);
     writeln('Hola');
     write('Ingrese la letra que desea verificar');
     readln(letra);
     readln(arch, palabra);
     repeat
         if palabra=letra then
            cont:=cont+1;

         readln(arch, palabra);

     until palabra='.';

     writeln('El numero de veces que una palabra empezo con esa letra fue',cont);
     readln();
end.

