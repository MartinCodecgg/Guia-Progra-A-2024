program tp8_inciso_3;

function confuso(a,b:integer):integer;
begin
 if (b = 0) then
 confuso := 0
 else
 if (b mod 2 = 0) then                            //Lo que entiendo que hace es devolver el resultado del producto entre a y b
                                                       //Pero si b es negativo, lo hace positivo, dando un resultado positivo
 confuso := confuso(a+a, b div 2)                           // 3*7= 21  , -3*7=-21 , 3*-7=-21
 else
 confuso := confuso(a+a, b div 2) + a;               {La función confuso(a, b) define la multiplicación de 𝑎 por 𝑏
                                                     , pero la implementa mediante un algoritmo recursivo basado en la descomposición binaria de
                                                     𝑏. Este algoritmo es similar al de la multiplicación rusa o egipcia, que descompone el segundo argumento 𝑏, mediante sucesivas divisiones por 2 (usando su representación binaria) y va acumulando el valor de 𝑎, en caso de que b sea impar.}
end;



var
   a,b:integer;

begin
     writeln('Ingrese a y b');
     readln(a,b);
     writeln('La funcion confuso devolvio ',confuso(a,b));

     readln();
end.

