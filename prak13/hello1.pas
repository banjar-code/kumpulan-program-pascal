program saytohello;
uses crt;
    var nama1,nama2,nama3,nama4,nama5:string;
begin
clrscr;
    textcolor(red);
    gotoxy(3,3); write('Input Nama:');
    textcolor(white);
    gotoxy(17,3); readln(nama1);
    textcolor(green);
    gotoxy(17,4); readln(nama2);
    textcolor(blue);
    gotoxy(17,5); readln(nama3);
    textcolor(cyan);
    gotoxy(17,6); readln(nama4);
    textcolor(yellow);
    gotoxy(17,7); readln(nama5);
    textcolor(white);
    gotoxy(3,9); writeln('hallo ',nama1,' apa kabar?');
    textcolor(green);
    gotoxy(28,9); writeln('hallo ',nama2,' apa kabar?');
    textcolor(blue);
    gotoxy(15,11); writeln('hallo ',nama3,' apa kabar?');
    textcolor(cyan);
    gotoxy(3,13); writeln('hallo ',nama4,' apa kabar?');
    textcolor(yellow);
    gotoxy(28,13); writeln('hallo ',nama5,' apa kabar?');
    readln;
end.