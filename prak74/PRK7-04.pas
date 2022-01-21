program mencetak_bilangan_fibonacci;
uses crt;
type Bil = integer;
var N,i,j,k,l : Bil; lagi:char;

Begin
repeat
clrscr;
    writeln('$========================================================$');
    Writeln('|            PROGRAM SISTEM BILANGAN FIBONACCI           |');
    Writeln('$========================================================$');
    Write('|   Input batas Fibonacci: '); readln(N); gotoxy(58,4); writeln('|');
    writeln('$========================================================$');
    k := 1;
    l := 0;
    FOR i := 1 to N do
    begin
        write(k , ' ');
        j := k + l;
        l := k;
        k := j;
    end;
    Writeln('<<== Batas Akhir');
    Writeln('$========================================================$');
    write('ULANGI LAGI? (yes/no) = ');readln(lagi);
until lagi='n';
end.

