program projectinciso19;
var
   n,max:integer;
   dentroconjunto:boolean;
   arch:text;

begin
     assign(arch,'numeros.txt');
     dentroconjunto:=false;
     reset(arch);
     max:=0;
     read(arch,n);
     if n<0 then
        dentroconjunto:=true;
     while not eoln(arch) do
           begin
           read(arch,n);
           if n < 0 then
              begin
                   dentroconjunto:=true;
                   if max <>0 then                              //Recordar que los tipo entero ignoran los caracteres vacios
                      writeln(max);

                   max:=0;
                                                              //La idea del codigo es escribir el numero mayor al caer en un numero negativo
                                                              //Por ello la primer entrada entra diferente estando dentroconjunto en false, y si justo entra en
                                                              // un numero negativo sera true

              end
           else

                    if (dentroconjunto=true) and (n>max) then
                       max:=n;

            end;
        readln();
end.

 {
program maxconjunto;
    var
        arch : text;
        dentroConjunto : boolean;
        num, maxNum : integer;

begin
    maxNum := 0;
    dentroConjunto := false;
    assign(arch, 'datos.txt');
    reset(arch);

    read(arch, num);
    if num < 0 then
        dentroConjunto := true;
    while not eof(arch) do
    begin
        read(arch, num);
        if num < 0 then  // Comienza a contarse el num maximo
            begin
                dentroConjunto := true;
                if maxNum <> 0 then
                    writeln(maxNum,' ');
                maxNum := 0; // Se re-inicializa para el proximo conjunto
            end
        else // Si es parte del conjunto y positivo se ve si es el mayor del conjunto
            if (dentroConjunto = true) and (num > maxNum) then
                maxNum := num;


    end;

    readln();

end. }
