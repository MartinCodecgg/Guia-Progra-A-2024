program project3;
var
   n,max:integer;
   dentroconjunto:boolean;
   arch:text;

begin
     assign(arch,'numeros.txt');
     dentroconjunto:=false;
     reset(arch);
     max:=0;

     read(arch,n);

     if n<0 then
        dentroconjunto:=true;
     while eof(arch) do
           read(Arch,n);
           if n< 0 then
              begin
                   dentroconjunto:=true;
                   if max<>0 then
                      writeln(max);

                   max:=0;


              end
           else
               begin
                    if (dentroconjunto=true) and (n>max) then
                       max:=n;

               end

end.

