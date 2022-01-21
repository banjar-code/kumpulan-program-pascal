program segitigasikusiku;
uses crt;
 var X,Y,Z,keliling,luas:real;
begin
clrscr;
    writeln('==========================================================');
    writeln('Program Hitung Segitiga Siku-siku');
    write('Masukan Nilai X Tinggi:'); readln(X);
    write('Masukan Nilai Y Alas:'); readln(Y);
    Z:=SQRT(SQR(X)+SQR(Y));
    keliling:= X+Y+Z;
    luas:= (Y*X )/2;
    writeln('==========================================================');
    writeln('Hasil Perhitungan Sebagai Berikut');
    writeln('Nilai Sisi Miring :', Z:3:2);
    writeln('Luas Segitiga Siku-siku :', luas:3:2);
    writeln('Keliling Segitiga Siku-siku :', keliling:3:2);
    writeln('==========================================================');
    readln;
end.