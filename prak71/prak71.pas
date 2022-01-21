program prak71;
uses  CRT, sysutils;
  Type 
    Karakter = integer;
  Var 
    Pilihan : Karakter;

procedure identitas;
  var nama, ttl, kelamin, alamat, hp, email, status, agama :string; lagi :char; 
begin
repeat
clrscr;
writeln('$==================================================================$');
writeln('|                        DATA IDENTITAS SAYA                       |');
writeln('|==================================================================|');
 gotoxy(1,4);write('|  Input Nama: '); readln(nama); gotoxy(68,4);write('|');
 gotoxy(1,5);write('|  Input Jenis Kelamin: '); readln(kelamin);  gotoxy(68,5);write('|');
 gotoxy(1,6);write('|  Tempat Tanggal Lahir: '); readln(ttl); gotoxy(68,6);write('|'); 
 gotoxy(1,7);write('|  Alamat: '); readln(alamat); gotoxy(68,7);write('|'); 
 gotoxy(1,8);write('|  Agama: '); readln(agama); gotoxy(68,8);write('|');
 gotoxy(1,9);write('|  Nomor Hp: '); readln(hp); gotoxy(68,9);write('|');
gotoxy(1,10);write('|  Email: '); readln(email); gotoxy(68,10);write('|');
gotoxy(1,11);write('|  Status: '); readln(status); gotoxy(68,11);write('|');
clrscr;
writeln('$==================================================================$');
writeln('|                        DATA IDENTITAS SAYA                       |');
writeln('$==================================================================$');
writeln('|  Nama              |Jenis-Kelamin  |Tempat Tanggal Lahir         |');
writeln('|  ',nama); gotoxy(22,5);writeln('|'); gotoxy(23,5);writeln(kelamin); gotoxy(38,5);writeln('|'); gotoxy(39,5);writeln(ttl); gotoxy(68,5);writeln('|');
writeln('$==================================================================$');
writeln('|  Alamat: ',alamat);  gotoxy(68,7);writeln('|'); 
writeln('$==================================================================$');
writeln('|  Agama    |No HP         |Email                      |status     |');
writeln('|  ',agama); gotoxy(13,10);writeln('|'); gotoxy(14,10);writeln(hp); gotoxy(28,10);writeln('|'); gotoxy(29,10);writeln(email); gotoxy(56,10);writeln('|'); gotoxy(57,10);writeln(status);gotoxy(68,10);writeln('|');
writeln('$==================================================================$');
write('ULANGI LAGI? (yes/no) = ');readln(lagi);
until lagi='n';
writeln('$==================================================================$');
end; 

procedure prima;
var 
  bil,i,x :word; 
  prima :boolean; 
  batas :integer; 
  lagi :char; 
begin 
  repeat
    clrscr; 
    writeln('$=======================$');
    writeln('$ANALISIS BILANGAN PRIMA$');
    write('Masukkan bilangan :');read(bil); 
    batas:=round(sqrt(bil))+1; 
    prima:=true; 
    if (bil=2 ) or (bil=3) then 
      prima:=true 
    else 
      for i:= 2 to batas do 
        if bil mod i = 0 then 
          prima:=false; 
        if prima = true then 
    writeln(bil,' Adalah prima') 
      else 
    writeln(bil,' Bukan prima'); 
    writeln('$=======================$');
    readln;
    write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

procedure binner;
Var 
  des,desi : integer; 
  Bin : String; lagi: char;
Begin 
  repeat
    clrscr;
      writeln('$=====================================$');
      writeln('$      KONVERSI DESIMAL KE BINER$     $');
      Write('Masukkan Suatu Bilangan Desimal :');Readln(des); 
      desi:=des; 
      bin:=''; 
        repeat 
          if(des mod 2 = 0) then bin:='0'+bin 
           else bin:='1' + bin; 
      des:=des div 2; 
        until des=0; 
      writeln('(',desi,') desimal =',bin,' (Biner)'); 
      writeln('$=====================================$');
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

procedure faktur;
var nama_barang : array[1..20] of string; 
 harga : array[1..20] of real; 
 banyak : array[1..20] of byte; 
 kata,grs :string; 
 x,y,i,j :byte; 
 Jum_Harga,Total_Harga,disc,Total_Bayar,uang :real; 
 lagi:char;
begin 
repeat
 clrscr; 
 
grs:='==============================================================='; 
 x:=round((78-length(grs))/2); 
 gotoxy(x,1);write(grs);
 kata:='FAKTUR PENJUALAN'; 
 x:=round((78-length(kata))/2); 
 gotoxy(x,2);writeln(kata); 
 x:=round((78-length(grs))/2); 
 gotoxy(x,3);write(grs); 
 {-----------------------------} 
 gotoxy(x,4);write('Data Belanja               ','Waktu Transaksi: ',DateTimeToStr(Now)); 
 gotoxy(x,5);write(grs); 
 gotoxy(x,6);writeln('| No | Nama Barang | Harga Satuan | Banyak | Jumlah Harga     |'); 
 gotoxy(x,7);write(grs); 
{--------------------------------------------------------------------} 
 i:=0; 
 Total_Harga:=0; 
 repeat 
 
 i:=i+1; 
 gotoxy(x,7+i);write('| ',i); 
 gotoxy(x+5,7+i);write('|'); 
 gotoxy(x+7,7+i);readln(Nama_barang[i]); 
 if Nama_Barang[i] <>'' then begin 
 gotoxy(x+19,7+i);write('|'); 
 gotoxy(x+21,7+i);readln(Harga[i]); 
 gotoxy(x+21,7+i);writeln(Harga[i]:10:2); 
 gotoxy(x+34,7+i);write('|'); 
 gotoxy(x+36,7+i);readln(Banyak[i]); 
 gotoxy(x+43,7+i);write('|'); 
 Jum_Harga:=Harga[i]*Banyak[i]; 
 gotoxy(x+45,7+i);writeln(Jum_Harga:10:2); 
 gotoxy(x+62,7+i);writeln('|'); 
 Total_Harga:=Total_Harga+Jum_Harga ; end; 
 until nama_barang[i]=''; 
{--------------------------------------------------------------------} 
 disc:=0; 
 if (Total_Harga > 10000) and (Total_Harga <100000) then 
 disc:=0.05 * Total_Harga 
 else 
 if (Total_Harga >= 100000 ) then 
 disc:=0.1 *Total_Harga; 
{--------------------------------------------------------------------} 
 
 kata:='Faktur Penjualan'; 
 y:=round((78-length(kata))/2); 
 gotoxy(y,2);writeln(kata); 
 j:=i-1; 
 gotoxy(x,8+j);write(grs); 
 gotoxy(x,8+j+1);write('Total Belanja :'); 
 gotoxy(x+53,8+j+1);write(Total_Harga:10:2); 
 gotoxy(x,8+j+2);write('Discount :'); 
 gotoxy(x+53,8+j+2);write(disc:10:2); 
 gotoxy(x,8+j+3);write(grs); 
 gotoxy(x,8+j+4);write('Total Bayar setelah discount :'); 
 Total_Bayar:=Total_Harga-disc; 
 gotoxy(x+53,8+j+4);write(Total_Bayar:10:2); 
 gotoxy(x,8+j+5);write('Uang diBayar'); 
 gotoxy(x+53,8+j+5);readln(Uang); 
 gotoxy(x+53,8+j+5);writeln(Uang:10:2); 
 gotoxy(x,8+j+6);Write(grs); 
 gotoxy(x,8+j+7);write('Uang Kembali'); 
 gotoxy(x+53,8+j+7);write(Uang-Total_Bayar:10:2); 
 gotoxy(x,17);write(grs); 
 gotoxy(x,18); write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

BEGIN 
  Repeat
    TextColor(White); TextBackground(Blue); Clrscr;
    Writeln('$==========================================$');
    Writeln('|                MENU KREASI               |');
    Writeln('$==========================================$');
    Writeln('| NAMA : ARIF NOER WAHIDIN  NPM : 11210072 |');
    writeln('| WAKTU PADA :         ',DateTimeToStr(Now),' |');
    Writeln('$==========================================$');
    Writeln('|  [1]    IDENTITAS SAYA                   |');
    Writeln('|  [2]    BILANGAN PRIMA                   |');
    Writeln('|  [3]    KONVERSI DESIMAL BINER           |');
    Writeln('|  [4]    FAKTUR PENJUALAN                 |');
    Writeln('|  [5]    SELESAI ...                      |');
    Writeln('$==========================================$');
    Writeln('|  >> Pilih Nomor :                        |'); 
    Writeln('$==========================================$');
  
    GotoXY(25,13); Readln(Pilihan);
        {--Proses Pilihan }
      If(Pilihan=1) then
               Begin
                 identitas;
               End
      else If(Pilihan=2) then
               Begin
                 prima;
               End
      else If(Pilihan=3) then
               Begin
                 binner;
               End
      else If(Pilihan=4) then
               Begin
                 faktur;
               End
     else If(Pilihan=5) then
               Begin
                 writeln('');
               End else
               Begin
                clrscr;
                GotoXY(25,12); writeln('Kesalahan Pilihan, Pilihan Hanya 1-5 Saja.');
                readln;
               end;
  Until (Pilihan = 5); 
   Clrscr; {Pesan penutup}
   GotoXY(30,12); Write('$===================$');
   GotoXY(30,13); Write('|    TERIMA KASIH   |');
   GotoXY(30,14); Write('$===================$');
   Readln;
END.
       