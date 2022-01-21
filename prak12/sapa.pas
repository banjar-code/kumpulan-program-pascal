program sapakabar;
uses crt;
var nama, kabar:string;
begin
    clrscr;
    textcolor(red);
    gotoxy(5,3); write('Nama:'); readln(nama);
    textcolor(white);
    gotoxy(50,3); write('Keadaan:'); readln(kabar);
    textcolor(green);
    gotoxy(5,4); writeln('hallo ',nama,',apa kabar?');
    textcolor(blue);
    gotoxy(50,4); writeln('Semoga kamu ',kabar, '!!!');
end.
