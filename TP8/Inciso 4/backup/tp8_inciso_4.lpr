program tp8_inciso_4;

type
    st20 = string[20];

function Inversa(palabra: st20): st20;
var
n:byte;
begin
    n:=length(palabra);                                                                  //Lo que hace el algoritmo es empezar con el ultimo caracter
    if n = 0 then                                                                 //e ir avanzando recursivamente hasta el primer caracter
        Inversa :=''//Caso base: si la palabra es vacía
    else                                                                          //Una vez que paso el primer caracter y length(palabra)=0 o n=0
        Inversa :=palabra[n]+Inversa(Copy(palabra,1,n-1));                      //Inversa='' y empieza a volver
        //Toma el último carácter y llama a la función con el resto de la palabra     //Pero finalmente la palabra inversa termina de generarse a lo
end;                                                                                   //ultimo, por lo que la ultima letra de la palabra se suma a lo ultimo
                                                                                   //Generando asi la inversa
var
   palabra: st20;                                                                //Le debemos ir pasando la palabra sin el ultimo caracter
                                                                                 //Por eso usamos copy de palabra, 1 porque empieza desde el primer caracter
begin                                                                            // , n-1 para que tome un caracter menos de longitud, descartando el
     writeln('Ingrese la palabra para descubrir su inversa');                     //ultimo
     readln(palabra);

     writeln('Su inversa es: ', Inversa(palabra));

     readln;
end.
