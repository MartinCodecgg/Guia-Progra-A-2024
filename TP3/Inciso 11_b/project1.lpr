program TP3_INCISO_11_b; //NO HACE FALTA USAR EL i PARA DIFERENCIAR LOS CICLOS. LO HICE DEVUELTA Y MAS CORTO EN EL ARCHIVO V2
var
   arch:text;
   nota1,nota2,nota3,i:integer;
   promedio:real;
   nombre,condicion:string;
begin
     writeln('hola');
     assign(arch,'notas.txt');
     reset(arch);
     readln(arch,nombre);
     i:=1;
     writeln(nombre);

     while nombre<>'***' do
       begin
           if i=1 then
              begin
                   i:=0;
                   readln(arch,nota1);
                   readln(arch,nota2);
                   readln(arch,nota3);
                   promedio:=((nota1+nota2+nota3)/3);
                   if promedio>=4 then
                      condicion:='Aprobado'
                   else
                       condicion:='Desaprobado';
              end
           else
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

