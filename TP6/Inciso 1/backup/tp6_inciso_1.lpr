program tp6_inciso_1;

type
    TV1= array[1..32]of byte;
    MT1= array[1..32,1..32]of byte;


Procedure ArmarMatriz(var mt:mt1; var n,m:byte);

var
   i,j,num:byte;
   arch:text;


begin
     assign(Arch,'datos.txt');reset(arch);

     read(arch,n,m);

     for i:=1 to n do
         begin
              readln(arch);

              for j:=1 to m do
                  begin
                       read(arch,num);
                       mt[i,j]:=num;
                  end;

         end;

     for i:=1 to n do
         begin
              for j:=1 to m do
                  begin
                       write(mt[i,j],' ');
                  end;


         end;
         writeln();
end;


procedure InciA(mt:MT1; var v1:tv1; n,m:byte);

var
   i,j,comparar:byte;


begin
     for i:=1 to n do
         begin
              comparar:=0;
              for j:=1 to m do
                  begin
                       if mt[i,j]>comparar then
                          comparar:=mt[i,j];
                  end;
              v1[i]:=comparar;
              writeln('El maximo es ',comparar);

         end;


end;





procedure InciB(mt:mt1; var v2:tv1 ; n,m:byte);

var
   i,j,av2,contImpar:byte;


begin
     av2:=0;
     for j:=1 to m do
         begin
              contImpar:=0;
              for i:=1 to n do
                  begin
                       if not (mt[i,j] mod 2 =0) then
                          contImpar:=contImpar+1;

                  end;
              if contImpar<>0 then
                 begin
                      av2:=av2+1;
                      v2[av2]:=contImpar;
                 end;

         end;
end;

Function InciC(mt:mt1; n,m,x:byte):real;

var
   i,j,suma:byte;
   prom:real;

begin
     suma:=0;
     for i:=1 to n do
         begin
              suma:=suma+mt[i,x];
         end;
     prom:=suma/n

end;






var
   n,m,x:byte;
   v1,v2:TV1;
   mt:mt1;
begin

     armarMatriz(mt,n,m);

     InciA(mt,v1,n,m);

     inciB(mt,v2,n,m);

     writeln('Ingrese X');
     readln(x);

     Writeln('El promedio es ',InciC(mt,n,m,x));

     readln();

end.

