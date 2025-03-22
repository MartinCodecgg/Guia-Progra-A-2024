program tp4_inciso_5;
{Aclarar para este inciso que x=(det(x)/det(sistema)) , tambien y=(det(y)/det(sistema)) , el determinante de x es
Para por ej 4x-3y=-5 y 2x+5y=-9   det(sistema)= det l a   b l     es decir  det l 4  -3 l   y det(x)= det l -5  -3 l    es decir a izquierda los resultados
                                                    l c   d l                   l 2   5 l                 l -9   5 l    y derecha las y , lo mismo pero con
                                                                                                                        x y los resultados a derecha, para det(y);}

function
        x(a,b,c,d,e,f:integer):real;

var
  detx,detS:integer;
begin
     dets:=(a*e)-(b*d);
     detx:=(c*e)-(b*f);

     x:=(detx/dets);
end;

function
        y(a,b,c,d,e,f:integer):real;

var
  dety,detS:integer;
begin
     dets:=(a*e)-(b*d);
     dety:=(a*f)-(c*d);

     y:=(dety/dets);
end;

var
   a,b,c,d,e,f:integer;

begin
     writeln('Ingrese los valores de a,b,c,d,e,f para hallar el resultado de las ecuaciones de la forma ax+by=c y dx+ey=f');
     writeln('Ingrese a');
     readln(a);
     writeln('Ingrese b');
     readln(b);
     writeln('Ingrese c');
     readln(c);
     writeln('Ingrese d');
     readln(d);
     writeln('Ingrese e');
     readln(e);
     writeln('Ingrese f');
     readln(f);

     writeln('Las soluciones de la ecuacion son x=',(x(a,b,c,d,e,f)):0:2, ' e y=' ,(y(a,b,c,d,e,f)):0:2);
     readln();

end.

