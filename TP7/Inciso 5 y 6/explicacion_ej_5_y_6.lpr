program explicacion_ej_5_y_6;

begin
end.


               //Solo explicacion de dos cosas del ejercicio 6 y 7, hacerlos despues bien si valen la pena realmente


               //Cuando se referia a guardar datos en un arreglo de registros, se debe usar en una arreglo, y dentro de el un registro
               //que registre i,j,valor  , para un arreglo de k datos(k cantidad de datos que ingresa el usuario, (hay que contar))





                                           //[[[[[[PREGUNTAR]]]]]]
                                                   // Si estaria bien planteado el parrafo de arriba




       //Como hallamos la transpuesta de una matriz nxm


// teniendo ya n y m , y la matriz ya almacenada

// Usaremos un for para escribir la matriz pero en ves de hacer de i hasta n y luego otro for de j hasta m
// haremos de i hasta m y de j hasta n


// Para escribir una matriz vamos escribiendo por columnas y cuando llega al fin de columnas saltea a la otra fila, al hacer esto logramos mostrar por teclado
// la matriz tal cual esta

 for i:=1 to n do
     begin
          for j:=1 to m do
              write(matriz[i,j]);
     writeln();
     end;


//Para escribir la transpuesta recorreria por fila y una vez llegue al final de la fila salto a la otra columna y asi, pero voy escribiendo lo que leo
//por filas(al igual que antes), haciendo esto logro escribir la transpuesta


for j:=1 to m do
    begin
         for i:=1 to n do                          //VERIFICADO POR CHAT GPT
             write(matriz[i,j];
    writeln();
    end;

  //De igual manera para generar otra matriz, que sea transpuesta a esa, tal como va, enves de escribir en salida, escribimos en otra matriz

//Para modificar la misma matriz, no es posible hacer esto, debemos crear otra matriz, o tener los datos en un registro




// Como hago para sumar dos matrices

//La suma de matrices es elemento a elemento

//Y esta definida si son de la misma dimension,
//Tendria para hacer las sumas dos matrices diferentes, es decir dos arreglos bidimensionales diferentes


for i:=1 to n
    begin
         for j:=1 to m do
             begin
                  write(matriz1[i,j]+matriz2[i,j]);
             end;
         writeln();
    end;















