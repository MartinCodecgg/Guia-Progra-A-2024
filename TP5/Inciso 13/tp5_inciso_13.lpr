program tp5_inciso_13;
type
    tipocabina=array[1..1000]of word;
    tipovehiculo=array[1..1000]of byte;
    tipohora=array[1..1000]of byte;

const
     N=2;


procedure cargar(var vcab:tipocabina;var vtipo:tipovehiculo;var vh:tipohora;var a:word);

var
     arch:text;
     i,cabina,tipo,hora:byte;
begin
     a:=0;
     assign(arch,'datos.txt');reset(arch);



     while not eof(Arch) do
           begin
                a:=a+1;
                readln(arch,cabina);
                vcab[a]:=cabina;
                readln(arch,tipo);
                vtipo[a]:=tipo;
                readln(arch,hora);
                vh[a]:=hora;
           end;
     writeln(a);
     for i:=1 to a do
     begin
         write(vcab[i]);
         write(' ');
         write(vtipo[i]);
         write(' ');
         write(vh[i]);
         write(' ');
         writeln();
     end;
end;


Procedure InciA(var vcab:tipocabina;var vtipo:tipovehiculo;var vh:tipohora;a:word;n:byte);

var
    i,j,contvehiculos:word;
begin
     contvehiculos:=0;
     for i:=1 to n do
     begin
         for j:=1 to a do
         begin
              if vcab[j]=i then
                    begin
                         contVehiculos:=contvehiculos+1;
                    end;
         end;
           writeln('La cabina ',i,' atendio ',contvehiculos);
           contvehiculos:=0;
     end;
end;

procedure InciB(var vcab:tipocabina;var vtipo:tipovehiculo;var vh:tipohora;a:word;n:byte);

var
    i,j:word;
    acumimporte,importe,maximporte:real;
    cabinaMax:byte;
begin
     acumimporte:=0;
     maxImporte:=0;
     for i:=1 to n do           //De tantas variables ya me confundo con los nombres, debo hacerme una pequeña listita
     begin                       //De que es cada cosa porque sino me olvido y pongo cualquier cosa
         for j:=1 to a do
         begin
              if vcab[j]=i then
                    begin
                         case vtipo[j] of
                         1:importe:=150;
                         2,3:importe:=300;
                         4:importe:=470;
                         5:importe:=370;
                         end;
                         if vh[j] in[10..18] then
                            importe:=importe+importe*0.10;

                         acumImporte:=acumImporte+importe;

                    end;
         end;
         if acumimporte>MaxImporte then
         begin
            MaxImporte:=acumimporte;
            cabinaMax:=i;
            writeln('cabina max es ',cabinaMax);
         end;
         writeln(' Recaudo',acumimporte:0:2);
         acumimporte:=0;

     end;
     writeln('La cabina que mas recaudo fue ',cabinamax);
end;



var
   vcab:tipocabina;
   vtipo:tipovehiculo;
   vh:tipohora;
   a:word;

begin
     writeln('Empezar a cargar');
     cargar(vcab,vtipo,vh,a);
     Writeln('Comenzar inciso A');
     InciA(vcab,vtipo,vh,a,n);
     Writeln('Comenzar Inciso B');
     InciB(vcab,vtipo,vh,a,n);

     readln();
end.

