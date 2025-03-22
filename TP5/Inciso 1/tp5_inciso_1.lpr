program tp5_inciso_1;
type
    tipovec1=array[1..5]of byte;     //Al usar arrays si o si debemos de usar type para definir el tipo de array que usaremos

const
     Vca:tipovec1=(1,2,3,4,5);      //Con const definimos el amigo inseparable de cada vector que dice cuantos digitos tiene y a la vez
     Vcb:tipovec1=(1,1,1,1,1);      //A la vez que definimos cuales son sus elementos si es que ya viene por defecto y el usuario no los debe ingresar
     Nva=5;

var
   acumA,suma,minimo,maximo:word;
   vb,va:tipovec1;                   //Con subprogramas se referia utilizar procedimientos y funciones y no todo junto como hice yo
   i:byte;

begin
     va:=vca;     //Para los incisos debo usar variables vectoriales
     vb:=vcb;
     writeln('Inciso A');
     writeln();
     acumA:=0;
     for i:=1 to nva do
         begin
              acumA:=acumA+va[i]              // En Pascal, es necesario inicializar un vector o un array antes de poder almacenar valores en él.
                                              //El programa no borra automáticamente un espacio vacío ni reserva memoria de manera implícita al ingresar un valor en una
                                         //     posición de un array. Es decir, debes definir el tamaño del array al declararlo, de lo contrario no se podrá asignar valores correctamente.

{ ASI SE INICIALIZA UN VECTOR                                             // procedure inicializarVector(var vec : vec32; lvec : byte);
var i : byte;
begin
    for i:=1 to lvec do
        vec[i] := 0;
end;}
         end;
     suma:=acumA ;
     writeln('La suma es ',suma);


     writeln('Inciso B');
     writeln();
     for i:=1 to nva do
         begin
              if (va[i] mod 2)=0 then
                 writeln(va[i]);

         end;

     writeln('Inciso C');
     writeln();
     minimo:=65335;
     maximo:=0;

      for i:=1 to nva do
          begin
               if va[i]<minimo then
                  minimo:=va[i];

               if va[i]>maximo then
                  maximo:=va[i];
          end;
     writeln('minimo es ',minimo);
     writeln('maximo es ',maximo);


     writeln('Inciso D');
     writeln();

     for i:=1 to nva do
        begin
             vb[i]:=(va[i]);
             writeln(vb[i]);
        end;



   readln();
end.

