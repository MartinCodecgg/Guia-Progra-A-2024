{program Project1;
var
  bool:boolean;
  sum,x:integer;
begin
Bool:=false ;
Sum:=0;
Readln( x );
If x <>0 then
 Repeat
 Sum := Sum + x;
 If Sum > 100 then
 Bool :=true;
 Readln( x );
 Until ( x=0) or Bool;
 Writeln('Resultado', Sum );
end.}

program sssssssss;
var
  sum,x:integer;
begin
sum:=0;
writeln('Escriba x');
Readln(x);
while (sum<100) and (x<>0) do     //Recordar que en pascal sino se inicializa la variable vale 0, y fallaria directamente el programa
 begin
      sum:=sum+x;
      if sum<100 then
      begin
      writeln('Escriba x');   //Siempre hay que hacer una prueba de escritorio al terminar, o probar al menos el programa si funciona
                              //En este caso si o si hay que usar el if sino le pedimos al usuario que ingrese un tercer dato que no sirve
      Readln(x);
      end;
 end;

 Writeln('Resultado: ',Sum);
 readln();
end.

