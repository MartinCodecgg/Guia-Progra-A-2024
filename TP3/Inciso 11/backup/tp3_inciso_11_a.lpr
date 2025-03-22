program tp3_inciso_11_a;
var
   tipo:char;
   monto,movimiento:real;
   arch:text;
   cont:integer;
begin
     writeln('Hola');
     assign(arch,'movimientos.txt');
     reset(arch);
     cont:=1;

     while not eof(arch) do
        begin
             if cont=1 then
             begin
                  Readln(arch,monto);
                  write('El monto inicial fue ',monto:0:2);
                  cont:=0;
             end
             else
                 begin
                 Readln(arch,tipo);
                  while tipo<>'f' do
                     begin
                        if tipo='d' then
                           begin
                           readln(arch,movimiento);
                           monto:=monto+movimiento;
                           end
                        else
                            begin
                                   readln(arch,movimiento);
                                   if movimiento<=monto then
                                   monto:=monto-movimiento
                                   else
                                       write('Saldo insuficiente')
                            end;
                        readln(arch,tipo);

                     end;
                end;

        end;
     writeln('El monto luego de las transacciones es ',monto:0:2);
     readln();
end.

