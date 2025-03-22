program inciso5_tp6;

type tipovec1=array[1..64] of byte;

procedure
         armarVv(var v:tipovec1;var av,max:byte);
var
   arch:text;
   num:byte;
begin
     av:=0;
     max:=0;
     assign(Arch,'datos.txt');reset(arch);
     while not eof(arch) do
     begin
         av:=av+1;
         read(arch,num);
         v[av]:=num;

         if v[av]>max then
            begin
                 max:=v[av];

            end;

     end;
     writeln('el maximo al salir del while es',max);
     close(arch);
end;


procedure
           CrearVw(var v,w:tipovec1;var av,max,aw:byte);
var
    i:byte;
begin
     aw:=0;
     writeln('El maximo es ',max);
           for i:=1 to av do
           begin
                if (max mod v[i])=0 then
                   begin
                   aw:=aw+1;
                   w[aw]:=v[i];
                   end;

           end;
end;

var
   num,i,a,av,max,aw:byte;
   v,w:tipovec1;
   acumW:word;

begin

     acumW:=0;
     ArmarVv(v,av,max);
     writeln('el maximo al entrar a crearvw del while es',max);
     CrearVw(v,w,av,max,aw);



     for i:=1 to av do
     begin
         writeln(v[i]);
     end;
     writeln();
     writeln();
     for i:=1 to aw do
     begin
         writeln(w[i]);
         acumW:=acumW+w[i];
     end;

     readln();
     writeln('El promedio fue de ',(((acumW/aw)*100)/50));
     readln();
end.

