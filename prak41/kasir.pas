program kasir;
uses crt,sysutils;
    var
    jkon : real; jtran : real;
    total : real; bp :real;
begin
clrscr;
    writeln('===========================================');
    writeln('PROGRAM KASIR SEDERHANA');
    write('Masukan Jumlah Transaksi : Rp');readln(jtran);
    write('Masukan Jenis Konsumen 1/2 : ');readln(jkon);
    writeln('===========================================');
    begin
    if (jkon = 1) then
    writeln('Jenis Konsumen : Non-pelanggan')
    else if(jkon = 2) then
    writeln('Jenis Konsumen : Pelanggan')
    else if (jkon >=3) then
    writeln('Jenis Konsumen Tidak Valid');
    end;
    begin
    writeln('Jumlah Transaksi : Rp',jtran:2:0);
    end;
    begin
    if (jkon = 1) then
    bp := 0/100*jtran
    else if (jkon = 2) then
    bp := 10/100*jtran
    end;
    begin
    if (jkon = 1) then
    writeln('Besar Potongan : Rp ',bp:2:0)
    else if (jkon = 2) then
    writeln('Besar Botongan : Rp ',bp:2:0);
    end;
    begin
    if (jkon = 1) then
    total := jtran-bp
    else if (jkon = 2) then
    total := jtran - bp;
    end;
    begin
    if (jkon = 1) then
    writeln('Jumlah Yang Harus Di Bayar : Rp ',total:2:0)
    else if (jkon = 2) then
    writeln('Harga Yang Harus Di Bayar : Rp ',total:2:0);
    end;
begin
    writeln ('Transaksi Pada : ',DateTimeToStr(Now));
    writeln('===========================================');
    readln;
end;
end.

