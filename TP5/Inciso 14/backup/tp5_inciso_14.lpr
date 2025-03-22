program tp5_inciso_14;

type tipoPatente=array[1..64]of string[7];
     tipoRecau=array[1..64]of real;
     st7=string[7];

//const
    // Xa=2000;

procedure
         cargar(var vPat:tipopatente;var Vrecau:tipoRecau;var a:byte);

var
     arch:text;
     patente:st7;
     recaudado:word;
     i:byte;
begin
     a:=0;
     assign(arch,'datos.txt');reset(Arch);


     while not eof(arch) do
           begin
                writeln('entro if');
                read(arch,patente);
                readln(arch,recaudado);
                a:=a+1;
                vpat[a]:=patente;
                vrecau[a]:=recaudado;
           end;
      for i:=1 to a do
          begin
          write(vpat[i]);
          write(' ');
          write((vrecau[i]):0:2);
          write(' ');
          end;
end;

procedure
          AyB(var vPat:tipopatente;var Vrecau:tipoRecau;var a:byte;x:real);
var
     acumpromedio,minPat:real;
     i,j,k:byte;
     patenteMin:st7;
begin
     acumPromedio:=0;
     MinPat:=99999999999;
     for i:=1 to a do
         acumPromedio:=acumPromedio+vrecau[i];

     writeln('El promedio recaudado por autos es ',(acumpromedio/a):0:2);

     for j:=1 to a do
         if Vrecau[j]>X then
            writeln('La patente ',vpat[j],'Supero a X en recaudacion');

     for k:=1 to a do
         if vrecau[k]<minPat then
            begin
                 minPat:=vrecau[k];
                 patenteMin:=vpat[k]
            end;
     writeln('La patente que menos recaudo es ',PatenteMin);

end;





var
     vpat:tipopatente;
     vrecau:tiporecau;
     a:byte;
     x:real;
begin

     cargar(vpat,vrecau,a);

     writeln('Ingrese X');
     readln(x);

     AyB(vpat,vrecau,a,x);
     readln();
end.

