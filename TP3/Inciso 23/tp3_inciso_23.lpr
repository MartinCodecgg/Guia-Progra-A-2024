program tp3_inciso_23;
     var
        arch,archV:text;
        letra:char;
        contrasena,InvalidaMasLarga:string;
        Invalidas,contContrasenas,contNumeros,contMayusculas,contMinusculas,contCantCaracteres,contInvalidaMasLarga:integer;
        Valnumeros,ValMayusculas,ValCantCaract,ValEspeciales:boolean;
begin
     assign(arch,'contraseñas.txt');
     assign(arch,'contraseñasValidas.txt');
     reset(arch);
     rewrite(archV);
     //Contadores
     contNumeros:=0;
     contMayusculas:=0;
     contMinusculas:=0;
     contCantCaracteres:=0;
     contContrasenas:=0;
     Invalidas:=0;
     contrasena:='';
     contInvalidaMasLarga:=0;
     //Verificadores
     Valnumeros:=false;
     ValMayusculas:=false;
     ValCantCaract:=false;
     ValEspeciales:=false;

     read(arch,letra);

     while not eof(arch) do
           begin
                if letra=' ' then
                   begin
                       if (contNumeros>=4) and (contMinusculas>=1) and (contMayusculas>=1) and (contCantCaracteres>=8) and (not ValEspeciales) then
                          begin
                          contContrasenas:=contContrasenas+1
                          end

                       else if contCantcaracteres>0 then
                          begin
                               contContrasenas:=contContrasenas+1;
                               Invalidas:=Invalidas+1;
                               writeln(archV,contrasena);
                               if contcantcaracteres>contInvalidaMasLarga then
                                  InvalidaMasLarga:=contrasena;
                          end;


                       if contCantcaracteres>0 then
                          contContrasenas:=contContrasenas+1;

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
     write('El porcentaje de palabras que no son contraseñas invalidas son',(contContrasenas/Invalidas):0:2,'%')
     else
         write('No se detectaron contraseñas invalidas');
     write('La contraseña Invalida mas larga fue',InvalidaMasLarga);



     readln();
end.

