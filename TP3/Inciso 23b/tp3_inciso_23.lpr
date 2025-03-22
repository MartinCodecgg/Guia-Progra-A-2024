program tp3_inciso_23;
     var
        arch,archV:text;
        letra:char;
        contrasena,InvalidaMasLarga:string;
        Invalidas,contContrasenas,contNumeros,contMayusculas,contMinusculas,contCantCaracteres,contInvalidaMasLarga:integer;
        ValEspeciales:boolean;
begin
     assign(arch,'datos.txt');
     reset(arch);
     assign(archV,'invalidas.txt');
     rewrite(archV);
     //Contadores
     contContrasenas:=0;
     Invalidas:=0;
     contrasena:='';
     contInvalidaMasLarga:=0;
     //Verificadores
     ValEspeciales:=false;

     read(arch,letra);

     while not eof(arch) do
           begin
                if letra=' ' then
                   begin
                       if (contNumeros=4) and (contMinusculas>=1) and (contMayusculas>=1) and (contCantCaracteres>=8) and (not ValEspeciales) then
                          begin
                          contContrasenas:=contContrasenas+1;
                          writeln('contraseña leida fue ',contrasena);
                          end

                       else if contCantcaracteres>0 then
                          begin
                               contContrasenas:=contContrasenas+1;
                               writeln('contraseña leida fue ',contrasena);
                               Invalidas:=Invalidas+1;
                               writeln(archV,contrasena);
                               if contcantcaracteres>contInvalidaMasLarga then
                                  begin
                                  contInvalidaMasLarga:=contcantcaracteres;
                                  InvalidaMasLarga:=contrasena;
                                  end;
                          end;

                       contNumeros:=0;
                       contMayusculas:=0;
                       contMinusculas:=0;
                       contCantCaracteres:=0;
                       ValEspeciales:=false;
                       contrasena:='';

                   end     //No se cierra este end pues sigue estando dentro de un ciclo
                else
                    begin
                         contCantCaracteres:=contCantCaracteres+1;
                         contrasena:=contrasena+letra;
                         case letra of
                         'a'..'z':contMinusculas:=contMinusculas+1;
                         'A'..'Z':contMayusculas:=contMayusculas+1;
                         '0'..'9':contNumeros:=contNumeros+1;
                         else
                             ValEspeciales:=true;
                         end
                    end;

                       read(arch,letra)
                end;


     if invalidas>0 then
     writeln('El porcentaje de contraseñas invalidas es ',(invalidas*100/contcontrasenas):0:2,'%')
     else
         writeln('No se detectaron contraseñas invalidas');

     writeln('La cantidad de contraseñas fue de ',contcontrasenas);
     writeln('La contraseña Invalida mas larga fue ',InvalidaMasLarga);


     close(arch);
     close(archV);
     readln();
end.

