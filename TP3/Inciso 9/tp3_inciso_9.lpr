program tp3_inciso_9;
var
   arch:text;
   anterior,num:integer;   //siendo num la variable donde va arrojando los datos//
   cond:char;
begin
     assign(arch,'numeros2.txt');
     reset(arch);
     anterior:=0;

     writeln('Desea comenzar (S)?');
     Read(cond);
     cond:=upcase(cond);

     while cond<>'S' do
     begin
          writeln('Desea comenzar?');
          Readln(cond);
          cond:=upcase(cond);
     end;


     while not eof(arch) do
           begin
                readln(arch,num); //va leyendo los datos como que son la variable num, dentro de arch//
                if anterior<num then
                   begin
                   anterior:=num;
                   writeln('Ordenado en forma ascendete')
                   end
                else
                    writeln('No esta ordenados de forma ascendente');


           end;
      readln();
      readln();
end.

