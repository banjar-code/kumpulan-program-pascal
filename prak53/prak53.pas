program prk5_03;
uses crt;
var
        n,i,q,w,e: integer;
begin
        clrscr;
        write('Input Bilangan Genap N : '); readln(n);
        writeln;

        i:=1;
        while i <= n do
        begin
                if i mod 2 = 0 then write(i:3);
                i:=i+1;
        end;
        writeln;
        q:=1;
        while q <= n do
        begin
                write(q:3);
                q:=q+1;

        end;
        writeln;
        w:=1;
        while w <= n do
        begin
                if w mod 5=0 then write(w:3);
                w:=w+1;
        end;
        writeln;
        e:=1;
        while e <= n do
        begin
                if e mod 10=0 then write(e:3);
                e:=e+1;
        end;
        readln;
end.


