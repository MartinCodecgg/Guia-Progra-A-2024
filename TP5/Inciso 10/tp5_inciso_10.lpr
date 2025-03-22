program tp5_inciso_10;
type tipovec1=array[1..17]of shortint;

const
     V1:tipovec1=(3, 5, -1, 3, 8, 2, -5, 2, 10, -4, -8, 4, 6, 7,-3, 11, 2);
     N=17;
procedure
          armarWyZ(var v,w,z:tipovec1; var a,b:byte);
var
    suma,contZ,i,j:byte;
begin
     b:=0;

     for i:=1 to a do
         begin
              if V[i]<0 then
              begin
                   if b>0 then
                      begin
                      w[b]:=suma;
                      Z[b]:=contZ;
                      end;
                   b:=b+1;
                   suma:=0;           //Conclusiones 1) no usar while para este caso de leer y elegir en un intervalo
                   contz:=0;          //2)Simplemente siempre que toque un negativo vamos acumulando y contando
                                      //3)Cuando toca un negativo, guarda la suma y el cont en W Y Z,
              end                     //4)Pero solo lo hace si el amigo inseparable de ambos es mayor a cero, sino se trataria del comienzo
                                      //5)Al otorgar valores a W y Z se reinician el acum y el cont y se le suma al amigo inseparable
              else
                  begin
                       suma:=suma+v[i];
                       contZ:=contZ+1;

                  end;

         end;
         b:=b-1;
end;

procedure
         escribirVectores(var v,w,z:tipovec1; var a,b:byte);

var
    i,j:byte;
begin
     for i:=1 to b do
     begin
         write(w[i]);
         write(' ');
     end;
     writeln();
     writeln();

     for j:=1 to b do
     begin
         write(z[j]);
         write(' ');
     end;

end;

var
   v,w,z:tipovec1;
   a,b:byte;


begin
     v:=v1;
     a:=n;
     ArmarWYZ(v,w,z,a,b);

     EscribirVectores(v,w,z,a,b);

    readln();
end.

