program guia3_ej24;

var
  arch1, arch2: text;
  car, ant: char;
  n, i: byte;
begin
  assign(arch1, 'entrada.txt');
  reset(arch1);
  assign(arch2, 'salida.txt');
  rewrite(arch2);

  read(arch1, car);

  while (car <> '.') do
  begin
    while (car = ' ') do
      read(arch1, car);
    while (car <> ' ') and (car <> '.') do
    begin
      ant := car;
      read(arch1, car);

      if (car in ['0'..'9']) AND (ant in ['a'..'z']) then
      begin
        n := Ord(car) - Ord('0');
        for i := 1 to n do
          write(arch2, ant);
      ant := car;
      read(arch1, car);
      end
      else
        write(arch2, ant);
      if (car = ' ') then
        write(arch2, ' ');
    end;
  end;


  close(arch1);
  close(arch2);
end.
