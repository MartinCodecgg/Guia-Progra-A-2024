program project1;
  const
    saldoInicial=5000;

  var
     D,E,F,O:char;
     intentos:integer;
     monto,ingreso,extraccion:real;
begin
     writeln('Que operacion desea realizar: D=deposito, E:extraccion, F= fin de datos)');
     readln(o);
     o:=upcase(o);
     monto:=Saldoinicial;
     intentos:=0;
     while (O<>'D')AND(O<>'E')AND(O<>'F') do
           begin
           writeln('Ingrese una opcion valida');
           readln(o);
           o:=upcase(o);
           end;

     while O<>'F' do
       begin
           if o='D' then
              begin
                   write('¿Cuanto dinero desea depositar?');
                   readln(ingreso);
                   monto:=monto+ingreso;
              end

           else
              begin
                   write('¿Cuanto dinero desea extraer?');
                   readln(extraccion);
                   if extraccion<=monto then
                   monto:=monto-extraccion
                   else
                       begin
                            write('Insuficiencia de fondos');
                            intentos:=intentos+1

                       end;


              end;
                  writeln('Que operacion desea realizar;(D=deposito, E:extraccion, F= fin de datos)');
                  readln(o);
                  o:=upcase(o);
       end;
       writeln('Saldo actual de la cuenta: ',monto:0:2);
       writeln(intentos,' veces Resulto insuficiencia de fondos al intentar retirar dinero');
       readln();
end.

