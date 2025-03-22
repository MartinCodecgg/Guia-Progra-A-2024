program project1;
 var
    alumno,condicion:string;
   aprobados,cantAlum:integer;
    nota1,nota2,nota3,promedio:real;
begin
  aprobados:=0;
  cantAlum:=0;
  writeln('Ingrese nombre del alumno');
  readln(alumno);


  while (alumno<>'***') do
        begin
             cantAlum:=cantAlum+1;
             writeln('A continuacion ingrese, Nota1,Nota2,Nota3');
             readln(nota1);
             readln(nota2);
             readln(nota3);

             promedio:=(nota1+nota2+nota3)/3;
             if promedio>4 then
                begin
                condicion:='aprobado';
                aprobados:=aprobados+1;
                end
             else
                condicion:='desaprobado';

                writeln(alumno, 'Su condicion es ', condicion);

                writeln('Ingrese nombre del alumno');
                readln(alumno);


        end;

      if cantalum>0 then
         begin
              writeln('El porcentaje de alumnos aprobados es ',((aprobados*100)/cantAlum):0:2,'%');

         end;
      readln();
end.

