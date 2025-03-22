program tp6_inciso_5_PREGUNTAR;
const
     m=4;
type
    st20=string[20];
    TV1=array[1..32]of byte;
    TM1=array[1..32,1..32]of real;


Procedure
         ArmarVec(var mt:tm1;var nrocli:tv1; m:byte;var n:byte);
var
    i,j,pos:byte;
    arch:text;
    number,tipo:byte;
    monto:Real;
begin
     N:=0;
     assign(Arch,'datos.txt');reset(Arch);

     //Inicializar matriz ya que habra que acumular montos

     for i:=1 to 32 do
         begin
              for j:=1 to m do
                  begin
                       mt[i,j]:=0;
                  end;
         end;
     while not eof(Arch) do
           begin
                read(arch,number,tipo,monto);
                //Buscar en el vector

                i:=1;
                while (i<n) and (nrocli[i]<>number) do
                      i:=i+1;
                if nrocli[i]=number then
                   pos:=i
                else
                   pos:=0;

                if pos=0 then
                begin
                   n:=n+1;
                   writeln('Se aumento uno a n');
                   nrocli[n]:=number;
                   pos:=n;
                end;

                case tipo of
                1:mt[pos,1]:=mt[pos,1]+monto;
                2:mt[pos,2]:=mt[pos,2]+monto;
                3:mt[pos,3]:=mt[pos,3]+monto;
                4:mt[pos,4]:=mt[pos,4]+monto;
                end;

               readln(arch);
           end;




end;

procedure InciA(mt:tm1;nrocli:tv1;n,m:byte);

var
    i,j:byte;
    super,combus,indu,otro:Byte;

begin
     super:=0; indu:=0; otro:=0; combus:=0;
     for i:=1 to n do
         begin
              for j:=1 to m do
                  begin

                       if mt[i,j]<>0 then
                       begin
                       case j of
                       1:super:=super+1;
                       2:combus:=combus+1;
                       3:indu:=indu+1;
                       else
                           otro:=otro+1;
                       end;
                       end;
                  end;
         end;
     writeln('Se muestra inciA');
     writeln(super);
     writeln(combus);
     writeln(indu);
     writeln(otro);
     writeln();
end;


procedure InciB(mt:tm1;nrocli:tv1;n,m:byte);

var
   i:byte;

begin
     writeln('se muestra inciB');
     for i:=1 to n do
         begin
               if mt[i,1]>mt[i,3] then
                  writeln(nrocli[i]);
         end;


end;


Procedure InciC(mt:tm1;nrocli:tv1;n,m:byte);

Var
   i,j,compras:byte;
   acumMonto:real;


begin
     acumMonto:=0;
     for i:=1 to n do
         begin
              for j:=1 to m do
                  begin
                       if mt[i,j]<>0 then
                          compras:=compras+1;  //De esta forma cuento la cantidad de compras en total en todos los clientes

                       acumMonto:=acummonto+mt[i,j];
                  end;
         end;
     writeln('El promedio de compra por cliente es',(acumMonto/compras):0:2);
end;

Procedure InciE(mt:tm1;nrocli:tv1;n,m:byte);

var
   i,j,contE:byte;
   cond:boolean;

begin
     contE:=0;
     writeln('n es ',n);
     for i:=1 to n do
         begin
              cond:=false;
              for j:=1 to m do
                  begin
                       if mt[i,j]=0 then
                          cond:=true;
                  end;
              if cond then
                 contE:=contE+1;
         end;
     writeln('La cantidad de clientes que no registraron es ',contE);

end;

var
   mt:tm1;
   nrocli:tv1;
   n:byte;
begin
      ArmarVec(mt,nrocli,m,n);

      InciA(mt,nrocli,n,m);

      InciB(mt,nrocli,n,m);

      InciC(mt,nrocli,n,m);

      InciE(mt,nrocli,n,m);

      readln();

end.

