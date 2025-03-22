program tp5_inciso_16;

type tipovec1=array[1..4]of byte;


const
     vec1:tipovec1=(1,0,3,0);
     n=4;

procedure
         armarYmostrar(v:tipovec1;n:byte);

var
   i,j:byte;
   w:tipovec1;
begin
     j:=0;
     for i:=1 to n do
         begin
              if v[i]<>0 then
              begin
                 j:=j+1;
                 w[j]:=v[i]
              end;
         end;

    writeln('El vector sin ceros es');

    for i:=1 to j do
        begin
        write(w[i]);write(' ');
        end;
end;


var
   v:tipovec1;
begin
     v:=vec1;
     armarYmostrar(v,n);

    readln();
end.

