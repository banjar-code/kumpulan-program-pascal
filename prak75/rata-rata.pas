program ratarata;
uses crt;
var
  i, n, x, jumlah: integer;
  rerata : real; lagi:char;
begin
repeat
Clrscr;
  writeln('$========================================================$');
  Writeln('|              PROGRAM HITUNG NILAI RATA-RATA            |');
  Writeln('$========================================================$');
  jumlah:=0;
  write('Masukan batas perulangan : ');read(n);
  for i:=1 to n do
    begin
      write('Masukan bilangan ke-',i,' : ');read(x);
      jumlah:=jumlah+x;
    end;
  rerata:=jumlah/n;
  write('Rata-rata : ',rerata:4:2);
  Writeln(' <<== Hasil');
  Writeln('$========================================================$');
  readln;
    write('ULANGI LAGI? (yes/no) = ');readln(lagi);
until lagi='n';
end.