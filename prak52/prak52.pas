program prk5_02;
uses crt;
var
        x: string;
        pilih : string;
        i, n : integer;
label a,b;
begin
        clrscr;
        write('Input nama anda : '); readln(x);
        a:
        writeln('Nama Anda Adalah: ', x);
        writeln('cetak lagi (Y/T) '); readln(pilih);
        if (pilih = 'y') or (pilih = 'Y') then
        begin
                goto a;
        end
        else if (pilih = 't') or (pilih = 'T') then
        begin
                goto b;
        end
        else
        begin
                goto b;
        end;
        b:
        writeln('SELESAI !');
        readln;
end.
