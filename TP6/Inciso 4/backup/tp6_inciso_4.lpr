program Tp6_Inciso_4;

type
    TM1=array[1..32,1..32]of byte;

procedure
         InicializarMat(var Mat:tm1);
var
   i,j:byte;
begin
   for i:=1 to 32 do
       begin
            for j:=1 to 32 do
                begin
                     mat[i,j]:=0;
                end;
       end;

   for i:=1 to 32 do
         begin
              for j:=1 to 32 do
                  begin
                       write(mat[i,j],' ');
                  end;
              writeln();
         end;
end;

procedure
         ReemplazarValores(var mat:tm1;var n,m:byte);

var
   i,j,compF,compC:byte;
   arch:text;
   fila,columna,elem:byte;


begin
     compF:=0; compC:=0;
     assign(Arch,'datos.txt');reset(arch);

     while not eof(arch) do
           begin
                writeln('entro while 1');
                read(arch,fila,columna,elem);
                mat[fila,columna]:=elem;

                if fila>compF then
                   compF:=fila;

                if columna>compC then
                   compC:=columna;
                readln(arch);
            end;
     n:=compF;
     m:=compC;


     writeln('probando matriz segunda vez');
     for i:=1 to n do
         begin
              for j:=1 to m do
                  begin
                       write(mat[i,j],' ');
                  end;
              writeln();
         end;
end;


function InciB(mat:tm1; n,m:byte):boolean;

var
   i,j,l:byte;
   cond:boolean;

begin
     cond:=true;
     writeln(n,m);

     Writeln('Escribo matriz para verificar');

              for l:=1 to 32 do
                  begin
                       for j:=1 to 32 do
                           begin
                                write(mat[l,j],' ');
                           end;
                  writeln();
         end;





     for i:=1 to n-1 do
         begin
              j:=1+i;
              writeln(i,j);
              writeln(mat[i,j]);






              while (j<m) and (mat[i,j]=0) do
                    begin
                         writeln('entro while 2');
                         j:=j+1;
                    end;
              writeln('valores de i y j', i,j);
              if mat[i,j]<>0 then
                 begin
                      cond:=false;
                      writeln('cond false');
                 end;
            {  for j:=2 to m do
                  begin
                       if mat[i,j]<>0 then
                          cond:=false;
                  end;  }
         end;
     InciB:=cond;
end;





var
   mat:tm1;
   n,m:byte;
begin
      inicializarmat(mat);

      ReemplazarValores(mat,n,m);

      if n=m then
         begin
            if InciB(mat,n,m) then
              writeln('Es triangular inferior')
            else
            writeln('No es triangular inferior');
         end
      else
          writeln('N no es igual a M');

      readln();

end.
