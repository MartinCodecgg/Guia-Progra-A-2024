program tp3_inciso_24;

var
   archE, archS: text;
   letra, Lanterior: char;
   number, i: integer;

begin
     assign(archE, 'entrada.txt');
     assign(archS, 'salida.txt');
     reset(archE);
     rewrite(archS);

     // Leer el primer carácter
     read(archE, letra);
     writeln('Leyo primer read');

     while letra <> '.' do
     begin
          writeln('entro primer while');

          while letra <> ' ' do
          begin
               writeln('entro segundo while');

               // Verificar si el carácter está en el rango de letras minúsculas
               while (letra <= 'z') and (letra >= 'a') do
               begin
                    writeln('Letra minúscula encontrada: ', letra);
                    // Leer el siguiente carácter
                    read(archE, letra);
               end;

               // Verificar si el carácter está en el rango de letras mayúsculas
               while (letra <= 'Z') and (letra >= 'A') do
               begin
                    writeln('Letra mayúscula encontrada: ', letra);
                    // Leer el siguiente carácter
                    read(archE, letra);
               end;

               // Verificar si el carácter es un dígito
               if (letra >= '0') and (letra <= '9') then
               begin
                    number := ord(letra) - ord('0');
                    writeln('Dígito encontrado: ', number);
                    // Leer el siguiente carácter
                    read(archE, letra);
               end
               else
               begin
                    // Si el carácter es un espacio, leer el siguiente carácter
                    if letra = ' ' then
                    begin
                         read(archE, letra);
                         continue; // Volver al inicio del bucle exterior
                    end;
               end;
          end;

          // Leer el siguiente carácter después del espacio
          read(archE, letra);
     end;

     close(archE);
     close(archS);
end.
