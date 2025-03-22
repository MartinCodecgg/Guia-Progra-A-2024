program tp4_inciso_11;
type ST20=string[20];


function E(a,b:real):real;
var
   x1:real;
begin
     x1:=-b/(2*a);
     E:=x1
end;

function O(a:real):ST20;

begin                                    //NO puede haber una funcion y variable en el programa principal con el mismo nombre
      if a>0 then
      O:='CONCAVA HACIA ARRIBA'
      else
      O:='CONCAVA HACIA ABAJO'


end;

function discri(a,b,c:real):boolean;

begin
     if  ((b*2)-(4*a*c))>=0  then
         discri:=true
     else
         discri:=false;

end;

procedure R(a,b,c:real;var r1,r2:real);
begin
          r1:=(-b+sqrt(b*b-4*a*c))/(2*a);
          r2:=(-b-sqrt((b*b)-(4*a*c)))/(2*a);

end;

procedure I(a,b,c:real;var y:real);
var
   x:real;
begin
     writeln('Ingrese el valor de x para devolverle la respectiva imagen');
     readln(x);
     y:=a*x*x+b*x+c;
end;

var
   a,b,c,r1,r2,y:real;
   Menu:char;


begin
     repeat
     writeln('A continuacion ingrese los valores de a,b,c para armar la parabola en cuestion y=ax^2+bx+c (a distinto de cero)');
     writeln('Ingrese A');
     readln(a);
     writeln('Ingrese B');
     readln(b);
     writeln('Ingrese O');
     readln(c);
     until a<>0;

     writeln('A continuacion elija una opcion del menu de opciones');
     writeln('E:Posicion del eje de simetria; C:concavidad de la parabola; R:Raices de la parabola(si existen);I:imagen');
     readln(menu);
     menu:=upcase(menu);

     case menu of
     'E': writeln('La posicion del eje de simetria es ',E(a,b):0:2);
     'C': writeln('La concavidad de la parabola es ',O(a));
     'R': begin

          if discri(a,b,c) then
          begin
             R(a,b,c,r1,r2);
             writeln('Las raices son r1=',r1:0:2,'r2=',r2:0:2);
          end
          else
              Writeln('No posee raices reales');
          end;

     'I':begin i(a,b,c,y);
                  Writeln('La imagen es :y=',y:0:2);             end;     //RECORDAR QUE DENTRO DE CADA OPCION DEL CASE VA UN BEGIN Y END SI HAY MAS DE UNA COSA
     end;
    readln();
end.

