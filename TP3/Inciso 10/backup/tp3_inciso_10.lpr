program Tp3_inciso_10;
var
   arch:text;
   num,anterior:integer;
begin
     assign(arch,'numeros.text');
     anterior:=0;
     reset(arch);

     while not eof(arch) do
       begin
          readln(arch,num);

          if num>=anterior then
             write(num)
          else
             writeln('archivo invalido');

       end;

    readln();
end.

