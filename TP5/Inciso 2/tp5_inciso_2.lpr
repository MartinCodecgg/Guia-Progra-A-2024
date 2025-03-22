program tp5_inciso_2;
type
    tipoVec1=array[1..64] of byte;

{procedure
         inicializarvec(var vec:tipovec1);
var
   i:=byte;

begin
     for i:=1 to

end; }

var
   arch:text;
   v,w:tipovec1;
   num:word;
   i,iv,iw:byte;
begin
     //inicializarVec(v,64);
     //inicializarVec(w,64);
     assign(arch,'enteros.txt');
     reset(arch);
     iv:=0;
     iw:=0;
     while not eoln(arch) do             //En el caso del while not eoln no importa si entra sin haber leido nada antes
          begin
                read(arch,num);
                while (num=0) do    //Ignora si es cero directamente, algo que antes no se podia hacer asi ya que el cero marcaba condiciones
                read(arch,num);
                                    //El problema con el while con condicion de corte que sea 0 o que sea el fin de archivo, es que el archivo se debe
                                    // debe leer al principio, si se lo lee al final se llega al fin de archivo y nunca lee la ultima cifra
                if (num mod 2)=0  then
                         begin
                         iv:=iv+1;
                         v[iv]:=num;
                         end
                else
                    begin
                         iw:=iw+1;
                         w[iw]:=num;
                    end;

          end;


    writeln('Se muestra el vector de pares');
    for i:=1 to iv do
        write(v[i]);
    writeln();
    writeln('Se muestra el vector de impares');
    for i:=1 to iw do
        write(w[i]);

    readln();
end.

