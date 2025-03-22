program tp6_inciso_3;
const Y=5;
type
    TM1=array[1..32,1..32]of byte;
    Tv1=array[1..32,1..32]of byte;


procedure  armarVec(var n:byte; y:byte; var mt:tm1);

var
   i,j,n1,num:byte;
   arch:text;
   begin
        assign(arch,'datos.txt');reset(arch);
        N:=0;

        while not eof(arch) do
              begin
                   n:=n+1;
                   for j:=1 to y do
                       begin
                            read(arch,num);
                            if j=1 then
                               n1:=num;

                            mt[N,j]:=num;
                            writeln('escribio ',mt[N,j]);
                       end;
                   readln(arch);
                   writeln(n1,' ',num);
                   if not (num mod n1 =0) then         //RECORDAR siempre que este leyendo o mostrando un archivo o un vector o una matriz
                      begin                             //En los if y for se usa j no  y que es el maximo
                      writeln('entro if');
                      n:=n-1;
                      end;

              end;

        writeln();


        writeln(n,' ',y);

        writeln();


        for i:=1 to n do
            begin
                 for j:=1 to y do
                     begin
                          write(mt[i,j],' ');
                     end;
                     writeln();
            end;




end;

var
   n:byte;
   mt:tm1;


begin

     armarVec(n,y,mt);

     readln();
end.

