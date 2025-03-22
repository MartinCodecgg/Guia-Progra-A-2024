program tp6_inciso_4;

type
    st20=string[20];
    TVresul=array[1..32]of char;
    Tvpuntero=array[1..32]of st20;

    Tregdata=record
     nombre:st20;
     cant:byte;
     Vresul:TVresul;
    end;
    //TvPunta=array[]
    //end;

    Treg=record
     regdata:TregData;
     Puntaje:byte;
     end;

    TVreg=array[1..32]of treg;

procedure
         ArmarVec(var Vreg:TVreg; var N:byte);

var
   arch:text;
   i,k,cantPartidos:byte;
   club:st20;
   result:char;

begin
     assign(arch,'partidos.txt');reset(arch);

     readln(arch,N);

     //Inicilizar el vector donde se almacenan puntajes

     for i:=1 to N do
         begin
              vreg[i].puntaje:=0;
         end;
    //Fin inicializacion

    //Almacenar datos...
     for i:=1 to N do
         begin
              readln(arch,club);
              vreg[i].regdata.nombre:=club;
              readln(arch,cantPartidos);
              vreg[i].regdata.cant:=cantPartidos;

              for k:=1 to cantPartidos do
                  begin
                       readln(arch,result);
                       vreg[i].regdata.vresul[k]:=result;

                       Case result of
                       'G':vreg[i].puntaje:=vreg[i].puntaje+3;
                       'E':vreg[i].puntaje:=vreg[i].puntaje+1;
                       'P':vreg[i].puntaje:=vreg[i].puntaje+0;   //En realidad no deberia incluir esto, y como son dos opciones deberia usar un if
                       end;
                  end;
         end;
end;

Procedure InciA(vreg:TVreg;N:byte);

var
    i:byte;

begin

     for i:=1 to N do
         begin
              writeln('El club ',vreg[i].regdata.nombre,' Acumulo ',vreg[i].puntaje);
         end;

end;


Procedure InciB(vreg:TVreg;N:byte);

var
   i,k,j:byte;
   Comparar:byte;
   Vpuntero:Tvpuntero;

begin
     Comparar:=0;
     for i:=1 to N do
         begin
              if vreg[i].puntaje>comparar then
              begin
                 comparar:=vreg[i].puntaje;
                 //Si encuentra uno mayor debe empezar de nuevo a acumular
                 //Reinicio Vpuntero
                 for j:=1 to N do
                     begin
                          Vpuntero[j]:='';
                     end;
                 k:=1;
                 Vpuntero[k]:=vreg[i].regdata.nombre;
              end
              else if vreg[i].puntaje=comparar then
                   begin
                      k:=k+1;
                      Vpuntero[k]:=vreg[i].regdata.nombre;
                   end;

         end;
         Writeln('Los punteros de la tabla son');
         for i:=1 to k do
             writeln(Vpuntero[i]);
end;

Procedure InciC(vreg:TVreg;N:byte);

var
   i,k,contNoP:byte;
   cond:boolean;

begin
     contNoP:=0;
     for i:=1 to N do
         begin
              cond:=false;
              writeln('regdata.cant es ',Vreg[i].regdata.cant);
              for k:=1 to Vreg[i].regdata.cant do
                  begin
                       if Vreg[i].regdata.vresul[k]='P' then
                            cond:=true;
                  end;
              if not cond then
                 contNoP:=contNoP+1;
         end;

     writeln('El porcentaje de equipo que no perdieron ningun partido es ', (contNop/N)*100:0:2);

end;



var
    Vreg:TVreg;
    N:byte;
begin
     ArmarVec(Vreg,N);

     InciA(vreg,N);

     InciB(vreg,N);

     InciC(vreg,N);

     readln();
end.

