program tp3_inciso_5;
var
   k,q,n,multiplo:integer;
begin
     writeln(' Generar y mostrar los múltiplos de K menores que un valor Q. (K y Q se leen de teclado.');
     writeln('Ingrese k y q');
     readln(k);
     readln(q);
     multiplo:=0;
     n:=1;
     writeln('Los numeros son');

     while multiplo<q do
           begin
               multiplo:=k*n;
               n:=n+1;
               if multiplo<q then
               writeln(multiplo);

           end;

     readln();

end.

