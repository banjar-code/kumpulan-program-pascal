program Deret_Aritmatika;

uses crt;
type Bil = integer;
var awal,akhir,deret,angka : Bil; lagi: char;
Begin
repeat
  Clrscr;
  writeln('$=======================================================$');
  Writeln('|                PROGRAM DERET ARITMATIKA               $');
  Writeln('$=======================================================$');
  Write('|  Input Awal : '); readln(awal); gotoxy(57,4); writeln('|');
  Write('|  Input Akhir : '); readln(akhir); gotoxy(57,5); writeln('|');
  Writeln('$=======================================================$');
  Writeln('|                 BERIKUT HASIL PROGRAM                 |');
  Writeln('$=======================================================$');
  FOR deret := awal To akhir Do
    begin
      Write(awal , ' ');
      angka := awal + 1;
      awal := angka;
  end;
  Writeln('<<== Akhir Deret');
  writeln('$=======================================================$');
  write('ULANGI LAGI? (yes/no) = ');readln(lagi);
until lagi='n';
end.
