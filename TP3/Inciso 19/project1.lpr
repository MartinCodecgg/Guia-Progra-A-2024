program project1;
 var
    arch:text;
    mayorN,number:integer;
    caracter:char;
    NumFinal,MayorNCHAR:string;

begin
     assign(arch,'numeros.txt');
     reset(arch);
     writeln('Hola');
     numfinal:=' ';

     while not eoln(arch) do
           begin
                read(arch,caracter);
                writeln(caracter);
                while caracter<>'-' do
                      read(arch,caracter);
                      writeln(caracter);

                read(arch);
                read(arch);
                mayorN:=0;
                read(caracter);
                while caracter <>'-' do
                      begin
                           read(arch,number);
                           writeln('number:',number);
                           if number>mayorN then
                              begin
                              mayorN:=number;
                              read(arch,caracter);
                              end;
                      end;            str(mayorN,mayorNChar);

                numfinal:=numfinal+str(mayorN,mayorNChar);
                read(arch,caracter);



           end;
     writeln('El numero formado es ',numFinal);
     readln();
end.

