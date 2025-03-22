program tp8_inciso_2;

function
        func(t:byte):word;                  //Explicacion de que hace la funcion
                                            {   (( La función parece contar cuántos números pares hay entre 1 y t ))
. Esto se debe a que en cada paso recursivo, si el número
t es par, se suma 1 al resultado de la recursión, y si es impar, simplemente se sigue con la recursión sin agregar nada.
}



begin
     if t=0 then
        func:=1
     else if (t mod 2)=0 then
        func:=1+func(t-1)
     else
         func:=func(t-1);
end;




var
   t:byte;
begin
     writeln('Ingrese t para calcular t para calcular la funcion desconocida en funcion de t');
     readln(t);
     writeln('El resultado arrojado es ',Func(t));

     readln();

end.

