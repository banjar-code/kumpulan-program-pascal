program hello;
uses crt;
var k:string;
begin
clrscr;
k := 'hello friend !';
    textcolor(red);
    gotoxy(10,3); writeln(k);
    textcolor(white);
    gotoxy(97,3); writeln(k);
    textcolor(green);
    gotoxy(55,11); writeln(k);
    textcolor(brown);
    gotoxy(10,22); writeln(k);
    textcolor(blue);
    gotoxy(97,22); writeln(k);
end.
