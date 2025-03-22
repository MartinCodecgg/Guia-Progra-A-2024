program tp3inciso22;
var
   arch,archS:text;
   cantVocales,i,contletra,contCopicuas,palabraMasVocales:integer;
   palabra, NombrePalabraMasVocales,alreves:string;
   letra,espacio:char;

begin
     cantVocales:=0;
     contLetra:=0;
     contCopicuas:=0;
     alreves:='';
     PalabraMasVocales:=0;
     assign(arch,'palabras.txt');
     assign(archS,'grabar.txt');
     reset(arch);
     rewrite(archS);

     read(arch,letra);
     while not eof(arch) do
           begin
           if letra=' ' then
              begin
              if cantVocales>PalabraMasVocales then
                 begin
                      palabraMasVocales:=cantVocales;
                      NombrePalabraMasVocales:=palabra;

                      if contLetra > 4 then
                        begin
                            for i:= contLetra  downto 1 do
                                alReves := alReves + palabra[i];
                            writeln('La palabra al reves de ',palabra,' es: ',alreves);
                            writeln(archS,alreves);
                            if palabra=alreves then
                               contCopicuas:=contCopicuas+1;
                        end;
                 end;                                     //DABA ERROR CON LA PALABRA INVERSA POR OLVIDARME DE REESTABLECER CONtLETRA
              cantVocales:=0;                            //PARA QUE TOME BIEN LA PALABRA DEBE ESTAR DENTRO DE 2 ESPACIOS, O DOS LETRAS                                           //SALVO SI ES JUSTO LA PRIMER PALABRA
              palabra:='';
              contletra:=0;
              alreves:='';
              end

           else
           begin
           contletra:=contletra+1;
           palabra:=palabra+letra;
           Case letra of
           'a','e','i','o','u':cantVocales:=cantVocales+1
           end;
           //b)

           end;
           read(arch,letra);
           end;
    writeln('Palabra mas vocales es   ',NombrePalabraMasVocales);//Recordar que para que se grabe bien hay que usar el close para cerrar el archivo//
    writeln('Palabras que son copicuas   ',contCopicuas);
    close(arch);close(archS);
    readln();
end.

