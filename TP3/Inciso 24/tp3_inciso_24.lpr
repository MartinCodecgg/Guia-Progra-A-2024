program TP3_inciso_24;

var
   archE,archS:text;
   letra,Lanterior:char;
   number,i:integer;

begin
     assign(archE,'datos.txt');
     assign(archS,'salida.txt');
     reset(archE);
     rewrite(archS);

     read(archE,letra);
     write(archS,letra);

     while (letra<>'.') do
           begin
                writeln(letra);
                while (letra<>' ') and (letra<>'.') do
                      begin
                           writeln('entro segundo while');
                           while letra in ['a'..'z'] do
                                 begin
                                      writeln('entro tercer while');
                                      Lanterior:=letra;
                                      read(archE,letra);
                                      readln();
                                      writeln(letra);
                                      writeln(Lanterior);
                                      if (letra>='0') and (letra<='9') then
                                         begin
                                         writeln('entro if');
                                         number:=ord(letra)-ord('0');
                                         write('Entro for');
                                         for i:=1 to (number-1) do
                                         begin
                                             write(archS,Lanterior);
                                             writeln('imprimio ',Lanterior);
                                         end;
                                         end
                                      else
                                          begin
                                          //write(archS,LAnterior);
                                          //writeln('imprimio ',Lanterior);
                                          write(archS,letra);
                                          writeln('imprimio ',letra);
                                          end;

                                 end;
                           read(archE,letra);
                           write(archS,letra);
                           writeln('imprimio ',letra);


                      end;
                if letra<>'.' then
                   begin
                        read(archE,letra);
                        write(archS,letra);
                        writeln('imprimio ',letra);
                   end
                else
                   begin
                   writeln('imprimio ',letra);
                   end;
           end;
     writeln('Entro final');
     close(archE);
     close(archS);
     readln();
end.

