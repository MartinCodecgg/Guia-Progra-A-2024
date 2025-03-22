program inciso4_tp5;

type tipovec1=array[1..5] of byte;

procedure compactar(var v:tipovec1;var w:tipovec1;var a:byte;cantelem:byte);

var
   i:byte;
                          //a:amigo inseparable
begin
     a:=0;
     for i:=1 to cantelem do
     begin
         if (v[i]<>0) then
               begin
                    a:=a+1;
                    w[a]:=v[i];
               end                     //Recordar este fragmento de codigo sera util, luego del end no hay que sumarle al a
                                       //si se le suma al a, el w queda con un espacio vacio sin asignarle nada, y esto se muestra como 0 por pascal
     end;
end;


var
   cantelem,elem,i,a:byte;
   v,w:tipovec1;

begin
     writeln('Ingrese la cantidad de elementos del arreglo a ingresar');
     readln(cantelem);
     for i:=1 to cantelem do
     begin
         writeln('Ingrese elemento');
         readln(elem);
         v[i]:=elem;
     end;

     writeln('El arreglo compactado es');
     compactar(v,w,a,cantelem);
     for i:=1 to a do
     begin
         writeln(w[i]);
     end;

     readln();
end.

