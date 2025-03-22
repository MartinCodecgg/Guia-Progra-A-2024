program tp5_inciso_11;
type VecNombre=array[1..3]of string[20];
     Vectiros=array[1..3]of byte;
     st20=string[20];

const
     V1:vecNombre=('juan','maria','martin');
     W1:vectiros=(1,2,3);
     Z1:vectiros=(4,1,2);
     a1=3;

procedure
         AyB(var v:VecNombre;var nombremarca:st20;var w,z:vecTiros;var a,cont2do:byte);

var
     mejormarcaw,mejormarcaz,i:byte;
     nombremarcaw,nombremarcaz:st20;
begin
     cont2do:=0;
     mejormarcaw:=0;
     mejormarcaz:=0;
     for i:=1 to a do
         begin
              if w[i]<z[i] then
                 cont2do:=cont2do+1;

              if w[i]>mejormarcaw then
              begin
                 mejormarcaw:=w[i];
                 nombremarcaw:=v[i];
              end;

              if z[i]>mejormarcaz then
              begin
                 mejormarcaz:=z[i];
                 nombremarcaz:=v[i];
              end;
         end;
        if mejorMarcaw<mejormarcaz then
           nombremarca:=nombremarcaz
        else
      nombremarca:=nombremarcaw;

      writeln('Jugadores el 2do tiro supero ', cont2do);
      writeln('Nombre del jugador con mejor marca fue ',nombremarca);
end;

procedure C(v:vecnombre;w,z:vectiros;a:byte;nombre:st20);
var
   i:byte;
begin

     for i:=1 to a do
     begin
          if nombre=v[i] then
          begin
               writeln('Lanzamiento 1: ',w[i]);
               writeln('Lanzamiento 2: ',z[i]);
          end;

     end;


end;


Procedure semifinal(v:vecNombre;w,z:vectiros;var f:vecnombre;x,a:byte);

var
     i,j,k:byte;

begin
      for i:=1 to a do
          begin
               if (w[i]>=x) or (z[i]>=x) then
                  f[i]:=v[i];

          end;
      writeln('se lee primer array');
      writeln();
      for j:=1 to a do
          writeln(v[j]);


      writeln();
      writeln('Se lee semifinal');


      for k:=1 to a do
          write(f[k]);

end;



var
     v,f:VecNombre;
     w,z:vecTiros;
     a,cont2do,x:byte;
     nombremarca,nombre:st20;


begin
     v:=v1;
     w:=w1;
     z:=z1;
     a:=a1;
     AyB(v,nombremarca,w,z,a,cont2do);

     writeln('Ingrese X');
     readln(x);

     writeln('Ingrese el atleta que quisiese registrar su marca');
     readln(nombre);
     C(v,w,z,a,nombre);

     semifinal(v,w,z,f,x,a);

    readln();
end.

