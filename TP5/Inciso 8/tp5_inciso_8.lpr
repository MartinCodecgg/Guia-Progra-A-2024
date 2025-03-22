program tp5_inciso_8;

type tipovec1=array[1..10] of real;

const
     N=10;
     V1:tipovec1=(2,2,3,3,3,3,7,9,9,9);

{procedure
          armarvec(var v:tipovec1;var av:byte);
var
     arch:text;
     i:byte;
     num:real;
begin
       assign(arch,'numeros.txt');reset(arch);
       av:=0;
       read(arch,num);
       while not eof(arch) do
       begin
             av:=av+1;
             v[av]:=num;
             read(arch,num);

       end;
       writeln(av);
       for i:=1 to av do
         begin
         write((v[i]):0:2);
         write(' ');
         end;
end;
       }

procedure armarVecW(var v,w:tipovec1;av:byte;var aw:byte);


var
   i,contRepeat:byte;
   actNum:real;

begin
       aw:=0;
       actnum:=0;
       contRepeat:=0;
       writeln(av);
       for i:=1 to av+1 do
           begin
                writeln('entro if');
                if actnum=0 then
                   begin
                        actnum:=v[i];
                        contRepeat:=contRepeat+1;
                   end
                else
                    begin
                         if v[i]=actnum then
                            contRepeat:=contRepeat+1
                         else
                             begin
                                  writeln('Se sumo aw+1');
                                  aw:=aw+1;
                                  w[aw]:=contRepeat;
                                  actnum:=v[i];
                                  contRepeat:=1;
                             end;
                    end;
           end;


end;


var
    v,w:tipovec1;
    av,aw,i:byte;
begin

     v:=v1;
     av:=N;

     armarVecW(v,w,av,aw);

     writeln('Se muestra el vector final');

     for i:=1 to aw do
         begin
         write((w[i]):0:2);
         write(' ');
         end;

     readln();
end.

