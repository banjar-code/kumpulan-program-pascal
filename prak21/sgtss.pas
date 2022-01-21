program segitigasamasisi;
uses crt;
 var sisi:integer; alas:real; tinggi:real; keliling:real; luas:real;
begin
clrscr;
    writeln('==========================================================');
    writeln('Program Hitung Segitiga Sama Sisi');
    write('Masukan panjang sisi:'); readln(sisi);
    keliling:= 3*sisi;
    alas:= keliling/3;
    tinggi:= sqrt( sqr(sisi) - sqr(alas/2) );
    luas:= (alas*tinggi )/2;
    writeln('==========================================================');
    writeln('Hasil Perhitungan Sebagai Berikut');
    writeln('Alas Segitiga Sama Sisi :', alas:3:2);
    writeln('Tinggi Segitiga Sama Sisi :', tinggi:3:2);
    writeln('Luas Segitiga Sama Sisi :', luas:3:2);
    writeln('Keliling Segitiga Sama Sisi :', keliling:3:2);
    writeln('==========================================================');
    readln;
end.
