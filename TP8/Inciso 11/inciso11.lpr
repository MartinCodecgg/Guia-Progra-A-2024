program inciso11;

const
      M=9;N=9; max=9;

type
    Tmt=array[1..N,1..M]of byte;

const
      mt:tmt= (
    (1, 0, 0, 0, 0, 0, 0, 0, 0),
    (2, 1, 0, 0, 0, 0, 0, 0, 0),
    (3, 2, 1, 0, 0, 0, 0, 0, 0),
    (4, 3, 2, 1, 0, 0, 0, 0, 0),
    (5, 4, 3, 2, 1, 0, 0, 0, 0),
    (6, 5, 4, 3, 2, 1, 0, 0, 0),
    (7, 6, 5, 4, 3, 2, 1, 0, 0),
    (8, 7, 6, 5, 4, 3, 2, 1, 0),
    (9, 8, 7, 6, 5, 4, 3, 2, 1)
  );


Procedure Mostrar(mt:tmt;n,m,max:byte);forward;
Procedure EJ11(mt:tmt;n,m:byte);

begin
     if n=1 then
        writeln(mt[1,1])
     else
         begin
              mostrar(mt,n,m,max);
              writeln();  //Va aqui, siempre y sea o no un espacio, ira abajo de la invocacion, y tiene que ir aqui que es despues de que muestra
                                   //todo una fila
         end;
end;

Procedure Mostrar(mt:tmt;n,m,max:byte);
begin
     if M=0 then
        begin
             EJ11(mt,n-1,max);
        end
        else
        begin
            mostrar(mt,n,m-1,MAX);
            if (n=m) or (n>m) then
               begin
                    write(mt[n,m]);
               end;
        end;

end;

begin
     Ej11(mt,n,m);
     readln();
end.

