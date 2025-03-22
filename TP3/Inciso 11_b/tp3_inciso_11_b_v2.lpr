program tp3_inciso_11_b_v2;
var
   arch:text;
   nota1,nota2,nota3:integer;
   promedio:real;
   nombre,condicion:string;
begin
     writeln('hola');
     assign(arch,'notas.txt');
     reset(arch);
     readln(arch,nombre);
     writeln(nombre);

     while nombre<>'***' do
       begin
              begin
                   readln(arch,nota1);
                   readln(arch,nota2);
                   readln(arch,nota3);
                   promedio:=((nota1+nota2+nota3)/3);
                   if promedio>=4 then
                      condicion:='Aprobado'
                   else
                       condicion:='Desaprobado';

              end;
           writeln('El alumno ',nombre,' esta ',condicion);
           readln(arch,nombre);
       end;
     writeln('finciclo');
     readln();
end.

