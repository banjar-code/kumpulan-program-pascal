program konversix;
uses crt;
    var x: real;
begin
clrscr;
    writeln('==================================');
    writeln('PROGRAM KONVERSI NILAI');
    writeln('==================================');
    write('Masukkan Angka : '); readln(x);
    writeln('==================================');
    if (x>=80) and (x<=100) then
    write('Nilai Anda: A')
    else if (x>=65) and (x<=79) then
    write('Nilai Anda: B')
    else if (x>=50) and (x<=64) then
    write('Nilai Anda: C')
    else if (x>=40) and (x<=49) then
    write('Nilai Anda: D')
    else if (x>=0) and (x<=40) then
    write('Nilai Anda: E')
    else
    write('Nilai tidak valid');
    gotoxy(1,7); writeln('==================================');
readkey;
end.