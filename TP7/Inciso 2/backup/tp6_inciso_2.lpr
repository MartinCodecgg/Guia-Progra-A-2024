program tp6_inciso_2;

const
     n=8;
     m=8;
type
    Treg=record
    tipo:char;
    color:byte;
    end;
    TM1=array[1..8,1..8]of Treg;

procedure
         armarMat(var mreg:tm1; n,m:byte);
var
   i,j,fila,col,color:byte;
   arch:text;
   tipo,cad:char;
   posF,PosC:byte;

begin
     assign(arch,'tablero.txt');reset(arch);
     //Inicializar matriz

     for i:=1 to 8 do
         begin
              for j:=1 to 8 do
                  mreg[i,j].color:=0;
         end;
     read(arch,fila,col,cad,tipo,color);
     mreg[fila,col].tipo:=tipo;
     mreg[fila,col].color:=color;
     posF:=fila;
     posC:=col;
     while not eof(arch) do
           begin
                read(arch,fila,col,cad,tipo,color);
                mreg[fila,col].tipo:=tipo;
                mreg[fila,col].color:=color;
                readln(arch);
           end;
     writeln('En la fila ',posF);
     for i:=1 to 8 do
         begin
               if mreg[i,posC].color<>0 then
                  if (mreg[i,posC].color=1) then
                     Writeln('La torre ataca a ',mreg[i,posC].tipo)
                  else if (mreg[i,posC].color=2) and (mreg[i,posC].tipo<>'T') then
                      Writeln('La torre protege a ',mreg[i,posC].tipo);
         end;

     for i:=1 to 8 do
         begin
              if mreg[posF,i].color<>0 then
                 if (mreg[posF,i].color=1) then
                     Writeln('La torre ataca a ',mreg[posF,i].tipo)
                 else if (mreg[posF,i].color=2) and (mreg[posF,i].tipo<>'T') then
                     Writeln('La torre protege a ',mreg[posF,i].tipo);
        end;
end;



var
   mreg:tm1;


begin
      armarMat(mreg,n,m);

      readln();
end.

