program AnalisisXVersi2;
uses crt;
    var x:integer;
begin
clrscr;
    writeln('====================================');
    writeln('PROGRAM ANALISIS ANGKA');
    writeln('====================================');
    write('Masukan Angka: '); readln(x);
     if (x>0) and (x mod 2=0) then
        writeln('Ini Bilangan Genap Positif')
        else if (x<0) and (x mod 2=0) then
        writeln('Ini Bilangan Genap Negatif')
        else if (x>0) and (x mod 1=0) then
        writeln('Ini Bilangan Ganjil Positif')
        else if (x<0) and (x mod 1=0) then
        writeln('Ini Bilangan Ganjil Negatif')
        else if (x=0) then
        writeln('Ini Bilangan Nol');
    writeln('====================================');
    readln;
end.
