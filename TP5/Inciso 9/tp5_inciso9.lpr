program tp5_inciso9;

type tipovec1=array[1..32] of shortint;

procedure
         armarVecV(var v:tipovec1;var av:byte);
var
   arch:text;
   i:byte;
   num:shortint;
begin
     assign(arch,'datos.txt');reset(arch);
     read(arch,num);
     av:=av+1;
     v[av]:=num;
     while not eof(arch) do
           begin
                writeln('entro primer while');
                read(arch,num);
                if num>v[av]  then
                   begin
                         av:=av+1;
                         v[av]:=num;
                   end;
           end;

      for i:=1 to av do
     begin
           write(v[i]);
           write(' ');
     end;
      writeln();
      writeln(av);


end;

procedure armarVecW(var v,w:tipovec1;var av,aw:byte);

var
   i,j:byte;

begin
     readln();
     aw:=0;
     for i:=1 to av do
     begin
                writeln('entro segundo while');
                aw:=aw+1;

                if (v[av-i+1]>v[i]) then    //YA que si el termino a la derecha del mod es menor nunca dara 0 el resto
                begin
                if (v[av-i+1] mod v[i])=0 then
                   begin
                        writeln('se evaluo v el if');
                        w[aw]:=v[i];
                        writeln('valor asignado a w es ',w[aw]);
                   end
                else
                    begin
                    w[aw]:=0;
                    end;
                end
                else
                begin
                    if (v[i] mod (v[av-i+1]))=0 then
                   begin
                        writeln('se evaluo v el if');
                        w[aw]:=v[i];
                        writeln('valor asignado a w es ',w[aw]);
                   end
                else
                    begin
                    w[aw]:=0;
                    end;
                end;





     end;
         writeln('actual aw es ', w[aw]);
     end;





var
    v,w:tipovec1;
    av,aw,i,j:byte;

begin
     armarvecV(v,av);


     armarvecW(v,w,av,aw);

   for i:=1 to av do
     begin
           write(v[i]);
           write(' ');
     end;
     writeln();
     for j:=1 to aw do
     begin
           write(w[j]);
           write(' ');
     end;


     readln();
end.

