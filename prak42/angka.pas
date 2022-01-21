program angka;
uses crt;
  var x : integer;
begin
  clrscr;
  writeln('=========================================');
  writeln('PROGRAM ANGKA');
  writeln('=========================================');
  Write('Masukan Angka : '); readln(x);
  writeln('=========================================');
  if (x>9) then
  writeln('hasil input ',x,' salah entri masukan 0...9')
  else if (x<0) then
  writeln('hasil input ',x,' salah entri masukan 0...9')
  else if (x=0) then
  writeln('Hasil input ',x,' adalah : Nol')
  else if (x=1) then
  writeln('hasil input ',x,' adalah : satu')
  else if (x=2) then
  writeln('hasil input ',x,' adalah : dua')
  else if (x=3) then
  writeln('Hasil input ',x,' adalah : Tiga')
  else if (x=4) then
  writeln('hasil input ',x,' adalah : Empat')
  else if (x=5) then
  writeln('hasil input ',x,' adalah : Lima')
  else if (x=6) then
  writeln('Hasil input ',x,' adalah : Enam')
  else if (x=7) then
  writeln('hasil input ',x,' adalah : Tujuh')
  else if (x=8) then
  writeln('hasil input ',x,' adalah : Delapan')
  else if (x=9) then
  writeln('hasil input ',x,' adalah : Sembilan');
  gotoxy(1,7); writeln('=========================================');
  readln;
end.
