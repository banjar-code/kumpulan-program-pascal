program Luas_Lingkaran;
const pi=3.14;
var d,j,luas,keliling:real;
begin
    writeln('==========================================');
    writeln('PROGRAM HITUNG LUAS DAN KELILING LINGKARAN');
    writeln('==========================================');
    write ('Masukan Diameter :'); readln(d);
    j:= d/2;
    luas:= pi*j*j;
    keliling:= 2*pi*j;
    writeln('==========================================');
    writeln('Berikut Hasil Perhitungan');
    writeln('Luas Lingkaran: ',luas:3:2);
    writeln('Keliling Lingkaran: ',keliling:3:2);
    writeln('==========================================');
    readln;
end.
