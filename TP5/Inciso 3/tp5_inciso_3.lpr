program tp5_inciso_3;

type
    tipovec1=array[1..10] of byte;

procedure cambiarVec(k,nvec1:byte;var v:tipovec1);

var
    i:byte;
begin
     for i:=1 to Nvec1 do
         begin
              while v[i]=k do
                    v[i]:=0;
         end;

end;

const
     vecEjem1:tipovec1=(1,2,1,4,5,6,7,1,9,1);
     NVec1=10;
var
   k,i:byte;
   v:tipovec1;
begin
     v:=vecEjem1;
     writeln('Ingrese K');
     readln(k);

     cambiarVec(k,nvec1,v);

     for i:=1 to nvec1 do
         write(v[i]);

     readln();
end.

