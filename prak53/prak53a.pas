program prak53;
uses crt;
type
genap = integer; pecahan = real;
var n,i: genap; r: pecahan;
begin
        clrscr;
        i:=1;
        write('Input bilangan genap N / Batas pengulangan: '); readln(n);
        for i:=1 to n do
        begin
          gotoxy(1,1+i); writeln(i*2);
          gotoxy(10,1+i); writeln(i);
          gotoxy(20,1+i); writeln(i*5);
          r:=100-(i-1)*10;
          gotoxy(30,1+i); writeln(r:2:0);
        end;
        readln;
end.
