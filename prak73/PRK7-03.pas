program bilangan_kelipatan;
uses crt;
var
  i, n, angka: integer; lagi:char;
begin
repeat
Clrscr;
  writeln('$========================================================$');
  Writeln('|                     PROGRAM KELIPATAN                  |');
  Writeln('$========================================================$');
  write('|  Masukan Kelipatan : ');read(angka); gotoxy(58,4); writeln('|');
  write('|  Masukan Batas Perulangan : ');read(n); gotoxy(58,5); writeln('|');
  for i:=1 to n do
    begin
      write(i * angka,' ');
    end;
    Writeln('<<== Batas Akhir');
  Writeln('$========================================================$');
  readln;
  write('ULANGI LAGI? (yes/no) = ');readln(lagi);
until lagi='n';
end.