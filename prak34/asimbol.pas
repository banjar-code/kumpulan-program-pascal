program asimbol;
uses crt;
    var x: char;
begin
Clrscr;
    writeln('==================================================');
    writeln('PROGRAM ANALISIS SIMBOL');
    write('Input Simbol : '); readln(x);
    writeln('Hasil Analisis Menunjukan');
    if (x>=#65) and (x<=#90) then
    begin
    writeln('Simbol Yang Anda Masukan ',x,' Huruf Kapital')
    end
    else if(x>=#97) and (x<=#122) then
    begin
    writeln('Simbol Yang Anda Masukan ',x,' Huruf Kecil')
    end
    else if (x>=#48) and (x<=#57) then
    begin
    writeln('Simbol Yang Anda Masukan Adalah Angka')
    end
    else
    writeln('Simbol ',x,' Yang Anda Masukan Bukan Huruf Atau Angka');
    gotoxy(1,6); writeln('==================================================');
readkey;
end.
