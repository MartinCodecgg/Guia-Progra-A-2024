program tp4_inciso_14;

procedure    horafinal(horaI,MinI,SegI,SegTrans:word ;var horaF,MinF,SegF:word);

var
   seg,segAmin,MinAhoras:word;
begin
      seg:=segI+SegTrans;
      writeln(seg);

      if seg>=60 then
         begin
              writeln('entro if');
              segF:=seg Mod 60;
              segAmin:=seg Div 60;
              minF:=(minI+segAmin)Mod 60;
              minAhoras:=(minI+segAmin) div 60;
              horaF:=HoraI+minAhoras;
              while horaF>23 do
              begin
                   horaF:=horaF-24
              end;
         end
      else
      begin
      writeln('Entro else');
      horaF:=horaI;
      minF:=minI;
      SegF:=seg;
      end;
end;



var
   horaI,MinI,SegI,SegTrans,horaF,minF,segF:word;

begin
     writeln('Ingrese a continuacion las horas,minutos y segundos actuales de 00 a 23 hs');
     writeln('Ingrese Horas');
     readln(horaI);
     writeln('Ingrese minutos');
     readln(MinI);
     writeln('Ingrese segundos');
     readln(SegI);

     writeln('Ingrese los segundos transcurridos');
     readln(SegTrans);
     Horafinal(horaI,minI,SegI,SegTrans,horaF,MinF,SegF);
     writeln('La hora final es ',horaF,':',MinF,':',SegF);

     readln();
end.

