program prak76;
uses crt;
var
  i, n, jumlah,a: integer;
begin
Clrscr;
  writeln('$========================================================$');
  Writeln('|           PROGRAM AKUMULASI FAKTORIAL POLINOM          |');
  Writeln('$========================================================$');
  writeln('|                    PROGRAM AKUMULASI                   |');
  jumlah:=0;
  write('Masukan Input N : ');read(n);
  for i:=1 to n do
    begin
      write(i,'+');
      jumlah:=jumlah+i;
    end;
  write('=',jumlah);
  Writeln(' <<== Hasil');
  Writeln('$========================================================$');
  writeln('|                    PROGRAM FAKTORIAL                   |');
  write(n, '!=');
  a:=1;
  begin
    for i:=1 to n do
      begin
        a:=a*i;
      end;
  end;
  for i:=n downto 2 do
   write(i, 'x');
   write(1);
    if n>1 then
      write ('=' ,a);
  Writeln(' <<== Hasil');
  Writeln('$========================================================$');
 readln;
end.