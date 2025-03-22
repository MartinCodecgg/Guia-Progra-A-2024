program project1;
 var
    patente,patenteMasViajes:string[4];
    cantKm,contKm,contKmAutoAnterior,autoconmenoskm:real;
    contViajes,AutoMasViajes,combustible,i:integer;
    arch:text;
begin
     contkm:=0;
     contviajes:=0;
     contkmAutoAnterior:=0;
     AutoMasViajes:=0;
     i:=1;
     assign(arch,'patentes.txt');
     reset(arch);
     writeln('hola');

     while not eof(arch) do
     begin
          contkm:=0;
          readln(arch,patente);
          readln(arch,combustible);
          readln(arch,cantKm);
          contkm:=contkm+cantkm;
          while cantKm<>0 do
          begin
                writeln('iteracion');
                readln(arch,cantKm);
                contviajes:=contviajes+1;
                contkm:=contkm+cantkm;


          end;
          if i=1 then
             begin
             contkmAutoanterior:=contkm;
             autoconmenoskm:=combustible;
             i:=0;
             end
          else if contkm<contkmAutoanterior then
               autoconmenoskm:=combustible;



          contkmAutoAnterior:=contkm;

          if contviajes>AutoMasViajes then
                   begin
                        automasviajes:=contviajes;
                        patentemasviajes:=patente;
                   end;
         writeln('La patente ',patente,' recorrio un total de ',contkm:0:0,' kilometros');


     end;

      writeln('La patente que mas viajes hizo fue ',patentemasviajes);
      writeln('El total de litros consumidos por el auto con menos km fue ',autoconmenoskm:0:2);
      readln();
end.

