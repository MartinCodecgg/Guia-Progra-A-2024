program tp5_inciso_15;

type
    VecNombre=array[1..32]of string[20];
    VecPatente=array[1..32]of string[7];
    VecTipo=array[1..32]of byte;
    VecToneladas=array[1..32]of real;
    st7=string[7];
    st20=string[20];

procedure
         armarVec(var Vcli:vecNombre;var Vpat:vecPatente;var Vtipo:vectipo;var VTons:vecToneladas;var a:byte);


var
    tipo,i:byte;
    arch:text;
    cliente:st20;
    patente:st7;
    toneladas:real;
begin
     a:=0;
     assign(Arch,'datos.txt');reset(arch);
     while not eof(arch) do
           begin
                a:=a+1;
                readln(arch,cliente);
                readln(arch,patente);
                readln(arch,tipo);
                readln(arch,toneladas);
                vcli[a]:=cliente;
                vpat[a]:=patente;
                vtipo[a]:=tipo;
                vtons[a]:=toneladas;
           end;
     for i:=1 to a do
         begin
              writeln(vpat[i]);
              writeln();

         end;
end;

procedure
         InciA(vtipo:VecTipo;vtons:vecToneladas;a:byte);
var
   i,j:byte;
   acumTons,acumtrigo,acumGirasol,acumSoja,acumMaiz,acumTempo:real;

begin
     acumTons:=0;
     acumtrigo:=0;
     acumGirasol:=0;
     acumSoja:=0;
     acumMaiz:=0;
      for i:=1 to a do
          begin
               acumTons:=acumTons+vtons[i];
          end;
      writeln('Toneladas acumuladas',acumtons);
      for i:=1 to a do
      begin
           case vtipo[i] of
           1:begin


                       acumtrigo:=acumtrigo+vtons[i];



              end;
           2:begin


                       acumGirasol:=acumGirasol+vtons[i];



              end;
           3:begin


                       acumSoja:=acumSoja+vtons[i];



              end;
           4:begin


                       acumMaiz:=acumMaiz+vtons[i];



              end;
           end;
           writeln('El porcentaje de trigo de la produccion es: ',((acumTrigo*100)/acumTons):0:2);
           writeln('El porcentaje de girasol de la produccion es: ',((acumGirasol*100)/acumTons):0:2);
           writeln('El porcentaje de soja de la produccion es: ',((acumSoja*100)/acumTons):0:2);
           writeln('El porcentaje de maiz de la produccion es: ',((acumMaiz*100)/acumTons):0:2);


end;

end;


procedure
         InciB(vcli:Vecnombre;vpat:vecPatente;vtipo:Vectipo;vtons:Vectoneladas;a:byte;patente:st7);


var
   i:byte;
   cond:boolean;

begin
     cond:=false;
     for i:=1 to a do
     begin
          writeln('entro for');
         if vpat[i]=patente then
               begin
                    writeln('Entro iff');
                    cond:=true;
                    writeln(vtipo[i]);
                    writeln((vtons[i]):0:2);
                    writeln(vcli[i]);
               end;

     end;
         writeln('salio for');
         if not cond then
            writeln('La patente Ingresada no existe');

end;

procedure
         InciC(Vcli:VecNombre;Vtons:Vectoneladas;a:byte;x:real;var arreg:VecNombre);

var
   i,j,b:byte;
   comparar,temp:st20;
begin
     b:=0;
     comparar:='a';
     for i:=1 to a do
         begin

              if vtons[i]>X then
                 b:=b+1;
                 arreg[i]:=vcli[i];
         end;


     for i:=1 to b do
         begin
              writeln(arreg[i]);

         end;


     //Ordenar por nombre a arregDesord
   {  writeln('A continuacion se muestra la patente ordenada');
     writeln(b);
     for i:=1 to b do
         begin
              if arregDesord[i]>comparar then
              begin
                   writeln('entro if');
                   writeln(arregDesord[i]); writeln(comparar);
                 comparar:=arregDesord[i];
                 arreg[i]:=comparar;
              end;

         end;

     for i:=1 to b do
         writeln(arreg[i]);
                               }


     // Ordenar el array arregDesord usando burbuja


    for i := 1 to b - 1 do         //Se usan dos for ya que uno tiene que ver con la cantidad de elementos y el segundo con la cantidad de veces a compararse
    begin
        for j := 1 to b - i do   //Se le resta uno al b para que no compare el ultimo elemento del array con nadie
        begin
            if arreg[j] > arreg[j + 1] then
            begin                                              //EN RESUMEN lo que hace el codigo es ir viendo si el siguiente es consecutivo o no
                                                               //Si es consecutivo no hace nada, si no lo es invierte de lugar
                // Se Intercambian los elementos
                temp := arreg[j];
                arreg[j] := arreg[j + 1];
                arreg[j + 1] := temp;
            end;
        end;                                    //Si no se cumple el if no hace nada
    end;

    // Mostrar el array ordenado
    writeln('A continuacion se muestra la patente ordenada:');
    for i := 1 to b do
        writeln(arreg[i]);
end;


var
   vcli,arreg:vecnombre;
   vpat:vecpatente;
   vtipo:vectipo;
   vtons:vectoneladas;
   a,opcion:byte;
   x:real;
   patente:st7;

begin

     armarvec(vcli,vpat,vtipo,vtons,a);

     writeln('Ingrese una opcion del menu de opciones');
     readln(opcion);

     case opcion of
     1: InciA(vtipo,vtons,a);
     2: begin writeln('Que patente desea analizar'); readln(patente); InciB(vcli,vpat,vtipo,vtons,a,patente); end;
     3: begin writeln('Ingrese X'); readln(x); InciC(vcli,Vtons,a,x,arreg); end;
     end;


     readln();
end.

