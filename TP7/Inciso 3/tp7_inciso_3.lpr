program tp7_inciso_3;

Type
    Treg=record
    cordX:shortint;
    cordY:shortint;
    Dis:real;
    cuadran:byte;
    end;
    TVreg=array[1..32]of treg;


{function  Cuadrado(N:byte):byte;     // SE PUEDE USAR SQR EN PASCAL

var
   i:byte;
begin
     Result:=N;
     for i:=1 to N-1 do
         begin
              Result:= Result*N
         end;
     cuadrado:=result;
end; }

procedure
         armarVec(var vreg:tvreg;var av:byte);
var
   arch:text;
   x,y:shortint;
begin
     av:=0;
     assign(arch,'puntos.txt');reset(arch);

     while not eof(arch) do
           begin
                av:=av+1;
                read(arch,x,y);

                vreg[av].cordx:=x;
                vreg[av].cordy:=y;
                vreg[av].dis:=sqrt(sqr(x)+sqr(y));

                if x>0 then
                   begin
                        if y>0 then
                           vreg[av].cuadran:=1
                        else
                           vreg[av].cuadran:=4;
                   end
                else
                begin
                     if y>0 then
                        vreg[av].cuadran:=2
                     else if y<0 then
                        vreg[av].cuadran:=3
                     else if (x=0) and (y=0) then
                          vreg[av].cuadran:=0;
                end;
                readln(arch);
           end;

end;

Procedure InciA(vreg:tvreg;av:byte);

var
   compararMin,compararMax:real;
   i:byte;
   xmin,xmax,ymin,ymax:shortint;
begin
     compararmin:=255;
     compararmax:=0;
     for i:=1 to av do
         begin
              if vreg[i].dis<compararmin then
                 begin
                 compararMin:=vreg[i].dis;
                 xmin:=vreg[i].cordx; ymin:=vreg[i].cordy;
                 end;
              if vreg[i].dis>compararMax then
                 begin
                 compararMax:=vreg[i].dis;
                 xmax:=vreg[i].cordx; ymax:=vreg[i].cordy;
                 end;
         end;
     writeln('El punto mas cercano al centro es ',xmin,' ',ymin);
     writeln('El punto mas alejado al centro es ',xmax,' ',ymax);
end;


Procedure InciB(vreg:tvreg;av:byte);             //PREGUNTAR, a que se referia con eje y centro en el enunciado????

var
   primerC,segunC,tercerC,cuartoC:byte;
   i:byte;                     //
begin
     primerC:=0;segunC:=0;tercerC:=0;cuartoC:=0;
     for i:=1 to av do
         begin
              case vreg[i].cuadran of
              1:primerC:=primerC+1;
              2:segunC:=segunC+1;
              3:tercerC:=tercerC+1;
              4:cuartoC:=cuartoC+1;
              end;
         end;
     writeln('Porcentaje de puntos en el 1er cuadrante fue ',(primerC/av)*100:0:2);
     writeln('Porcentaje de puntos en el 2do cuadrante fue ',(segunC/av)*100:0:2);
     writeln('Porcentaje de puntos en el 3er cuadrante fue ',(tercerC/av)*100:0:2);
     writeln('Porcentaje de puntos en el 4to cuadrante fue ',(cuartoC/av)*100:0:2);    //Para promedio si dividis el acumulador por av
                                                                                              //Para el porcentaje solo multiplicas por 100
end;

Function Distancia(x1,y1,x2,y2:shortint):real;

begin
     distancia:=sqrt(sqr(x2-x1)+sqr(y2-y1));

end;

var
    vreg:tvreg;
    av,x,y:byte;
    x1,x2,y2,y1:shortint;

begin
     armarVec(vreg,av);

     InciA(vreg,av);

     InciB(vreg,av);

     writeln('Ingrese x1,y1 ; x2,y2');
     Readln(x1,y1,x2,y2);

     Writeln('Su distancia es ',(Distancia(x1,y1,x2,y2)):0:2);

     readln();

end.

