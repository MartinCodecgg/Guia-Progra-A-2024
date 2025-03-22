program tp7_inciso_1;

type
    st20=string[20];
    st10=string[10];
    TipoReg=record
    nombre:st20;
    fecha:byte;
    end;
    TvReg=array[1..100]of tiporeg;
    TVcont=array[1..4]of byte;


Procedure ArmarReg(var Vreg:tvreg;var n:byte);

var
     nombre:st20;
     fecha:st10;
     arch:text;
begin
     assign(arch,'datos.txt'); reset(arch);
     n:=0;

     while not eof(Arch) do
           begin
                n:=n+1;
                readln(arch,nombre);
                Vreg[n].nombre:=nombre;
                read(arch,fecha);
                if fecha[4]='0' then
                begin
                Vreg[n].fecha:=ord(fecha[5])-ord('0');
                writeln('primer write ',Vreg[n].fecha);
                end
                else
                begin
                Vreg[n].fecha:=ord(fecha[4])+ord(fecha[5])-2*ord('0');
                writeln('segundo write', Vreg[n].fecha);
                end;
                readln(arch);
           end;


end;

Procedure InciB(vreg:tvreg;n:byte);

var
   i,j:byte;

   vcont:tvcont;
   comparar,fechamax:byte;

begin
     comparar:=0;
     //Inicializar vector ya que usare acumuladores
     for i:=1 to 4 do
         begin
              vcont[i]:=0;
         end;

     for i:=1 to n do
         begin
              writeln('En case ',vreg[i].fecha);
              case vreg[i].fecha of
              0..3:vcont[1]:=vcont[1]+1;
              4..6:vcont[2]:=vcont[2]+1;
              7..9:vcont[3]:=vcont[3]+1;
              10..12:vcont[4]:=vcont[4]+1;
              end;
         for j:=1 to 4 do
             begin
                  if vcont[i]>comparar then
                  begin
                     comparar:=vcont[i];
                     fechamax:=i;
                  end;
             end;

         end;
         case fechamax of
         1:Writeln('La estacion que mas de festeja es entre enero y marzo');
         2:Writeln('La estacion que mas de festeja es entre abril y junio');
         3:Writeln('La estacion que mas de festeja es entre julio y septiembre');
         4:Writeln('La estacion que mas de festeja es entre octubre y diciembre');

         end;

         writeln('salio de inci b');
end;




var
   Vreg:tvreg;
   n:byte;


begin
     ArmarReg(Vreg,n);

     InciB(Vreg,n);

     readln();

end.

