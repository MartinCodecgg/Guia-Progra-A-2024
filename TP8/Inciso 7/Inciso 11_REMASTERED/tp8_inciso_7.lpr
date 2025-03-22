program tp8_inciso_7;

const
     N=3;M=3;

type
    tmt=array[1..N,1..M]of byte;

Const
     mt:tmt=((1,2,3),(4,5,6),(7,8,9));

Function Minfila(mt:tmt;n,m:byte):byte;

var
   aux:byte;
begin
     if M=1 then
        minfila:=mt[n,m]
     else
         begin
              aux:=minfila(mt,n,m-1);
              if mt[n,m]<aux then
                 minfila:=mt[n,m]
              else
                  minfila:=aux;
         end;
end;

Function HallarMin(mt:tmt;n,m,min:byte):byte;
var
   aux:byte;
begin
     if N=0 then
        HallarMin:=min
     else
         begin
              aux:=minfila(mt,n,m);
              if aux<min then
                 min:=aux;
              hallarmin:=hallarmin(mt,n-1,m,min);
         end;
end;

begin
     writeln('el minimo hallado es ',hallarmin(mt,n,m,255)); //No hacia falta la variable min en el var, lo paso como 255 y ya esta
     readln();
end.
