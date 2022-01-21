program prak51;
uses crt;
var
        nama:string;
        i,n:integer;
begin
        clrscr;
        i:=1;
        write('Input nama anda : '); readln(nama);
        for i:=1 to 10 do
        begin
        gotoxy(1,1+i); writeln(i,'.',nama);
        gotoxy(10,1+i); writeln(10+i,'.',nama);
        gotoxy(20,1+i); writeln(20+i,'.',nama);
        gotoxy(30,1+i); writeln(30+i,'.',nama);
        end;
        readln;
end.
