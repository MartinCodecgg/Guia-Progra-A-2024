program tp6_inciso_2;

type
    st20=string[20];
    TV1=array[1..32]of st20;
    TM1=array[1..32,1..32]of byte;




Procedure armarvec(var mt:tm1; var v1:tv1; var n,m:byte);

var
   arch:text;
   nombre:st20;
   num:byte;
begin
     assign(arch,'datos.txt');reset(Arch);
     n:=0;

     while not eof(Arch) do
           begin
                 m:=0;
                 n:=n+1;
                 readln(arch,nombre);
                 v1[n]:=nombre;


                 num:=1;               //Memorizar este procedimiento, se lee fuera del while y se asigna por primera vez adentro del while
                 while num<>0 do               //En este caso para que no de falso el while, le damos cualquier valor tipo byte a num para que entre
                       begin                     //Solo si es distinto de cero se cuenta como columna
                            read(arch,num);
                            if num<>0 then
                               begin
                                    m:=m+1;
                                    mt[n,m]:=num;     //Recordar se asigna siempre luego de sumarle uno al amigo
                               end;
                       end;
                readln(arch);
           end;
     writeln('a continuacion se muestra n y m');
     writeln(n);
     writeln(m);
     close(arch);

end;

procedure InciA(n,m:byte; mt:tm1;v1:tv1);

var
   i,j:byte;
   cond:boolean;



begin
     for i:=1 to n do
         begin
              cond:=true;
              j:=1;
              while (j<=m) and (cond) do    //El = siempre va a la derecha
                  begin
                       j:=j+1;
                       if mt[i,j]<5 then
                          cond:=false;
                  end;
              if cond then
                 writeln('El alumno ',v1[i],' aprobo los todos los parciales');

         end;
end;


Procedure InciB(n,m:byte; mt:tm1;v1:tv1; var v2:tv1);

var
   i,j,av2,suma:byte;
   prom:real;
begin
     av2:=0;
     for i:=1 to n do
         begin
              suma:=0;
              for j:=1 to m do
                  begin
                       writeln(mt[i,j]);
                       suma:=suma+mt[i,j]
                  end;
                  prom:=suma/m;
                  writeln(prom:0:2);
              if prom>=7 then
                 begin
                      writeln('El alumno',v1[i],' Promociona');
                      av2:=av2+1;
                      v2[av2]:=v1[i];
                 end
              else if (prom>=5) and (prom<7) then
                   writeln('El alumno',v1[i],' Habilita')
              else
                  writeln('El alumno',v1[i],' Desaprueba');

         end;


end;

var
   n,m:byte;
   mt:tm1;
   v1,v2:tv1;


begin
     armarVec(mt,v1,n,m);

     InciA(n,m,mt,v1);

     InciB(n,m,mt,v1,v2);

     readln();

end.

