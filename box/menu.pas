program menu;
uses  CRT, wincrt,sysutils;
  Const STOP = '0';
  Type 
    Karakter = Char;
  Var 
    Pilihan : Karakter;
    jkon : real; jtran : real;
    total : real; bp :real;
  const sks:array[1..8] of integer=(2,2,2,2,2,2,1,1); 
  type 
    siswa=record 
    nim:string[5]; 
    nama:string[15]; 
    Nihur:array[1..8] of char; 
  end; 
  type kuliah=array[1..32767] of siswa; 
  var kul:kuliah; 
{--------------------------------------------------------------------} 
function bobot(huruf:char):integer; 
begin 
  case upcase(huruf) of 
    'E':bobot:=0; 
    'D':bobot:=1; 
    'C':bobot:=2; 
    'B':bobot:=3; 
    'A':bobot:=4; 
  end; 
end; 
{--------------------------------------------------------------------} 

procedure masuk(var kul:kuliah); 
    var i,j,bbt,jumus,jumsks:integer;  lagi: char; ip:real; 
  begin 
    repeat
      clrscr;
      jumsks:=0; 
      gotoxy(28,1);writeln('PENGOLAHAN NILAI MAHASISWA'); 
        for i:=1 to 8 do 
      jumsks:=jumsks+sks[i]; 
      gotoxy(1,3);writeln('No.  NPM      Nama         MK1  MK2  MK3  MK4  Mk5  MK6  MK7  MK8  IP    KET'); 
        for i:=1 to 3 do begin 
      jumus:=0; 
      gotoxy(1,3+i);writeln(i); 
      gotoxy(6,3+i);readln(kul[i].nim); 
      gotoxy(15,3+i);readln(kul[i].nama); 
        for j:=1 to 8 do begin 
      gotoxy(24+j*5,3+i);readln(kul[i].nihur[j]); 
      bbt:=bobot(kul[i].nihur[j]); 
      jumus:=jumus+bbt*sks[j]; 
        end; 
      ip:=jumus/jumsks; 
      gotoxy(28+j*5,3+i);writeln(ip:0:2); 
        if ip>2.75 then begin 
      gotoxy(34+j*5,3+i);writeln('Lolos'); 
        end else begin 
      gotoxy(34+j*5,3+i);writeln('Gagal'); 
        end; 
        end; 
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
    until lagi='n';
end; 

Procedure kasir;
  var
    jkon : real; jtran : real;
    total : real; bp :real; lagi :char; 

begin
  repeat
    clrscr;
      writeln('$===========================================$');
      writeln('$          PROGRAM KASIR SEDERHANA          $');
      write('  Masukan Jumlah Transaksi : Rp');readln(jtran); 
      write('  Masukan Jenis Konsumen 1/2 : ');readln(jkon); 
      writeln('$===========================================$');
      begin
       if (jkon = 1) then
       writeln('$  Jenis Konsumen : Non-pelanggan           $')
        else if(jkon = 2) then
       writeln('$  Jenis Konsumen : Pelanggan               $')
        else if (jkon >=3) then
       writeln('$  Jenis Konsumen Tidak Valid               $');
      end;
      begin
        writeln('  Jumlah Transaksi : Rp',jtran:2:0 );
      end;
      begin
        if (jkon = 1) then
        bp := 0/100*jtran
        else if (jkon = 2) then
        bp := 10/100*jtran
      end;
      begin
        if (jkon = 1) then
        writeln('  Besar Potongan : Rp ',bp:2:0)
        else if (jkon = 2) then
        writeln('  Besar Botongan : Rp ',bp:2:0);
      end;
      begin
        if (jkon = 1) then
        total := jtran-bp
        else if (jkon = 2) then
        total := jtran - bp;
      end;
      begin
        if (jkon = 1) then
        writeln('  Jumlah Yang Harus Di Bayar : Rp ',total:2:0)
        else if (jkon = 2) then
        writeln('  Harga Yang Harus Di Bayar : Rp ',total:2:0);
      end;
      begin
        writeln('  Transaksi Pada : ',DateTimeToStr(Now));
        writeln('$===========================================$');
      end;
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

Procedure nilai;
  var na,tgs,uts,uas,kd : real; lagi :char; 
begin
  repeat
    clrscr;
      writeln('=========================================');
      writeln('PROGRAM NILAI MAHASISWA');
      writeln('=========================================');
      write('Masukan Nilai Uts : ');readln(uts);
      write('Masukan Nilai Uas : ');readln(uas);
      write('Masukan Nilai Tugas : ');readln(tgs);
      write('masukan Kehadiran : ' );readln(kd);
      na := (30/100*uts)+(40/100*uas)+(20/100*tgs)+(10/16*kd);
      writeln('=========================================');
      writeln('Nilai Akhir : ',na:2:0);
      begin
        if (na>100) then
        writeln('NILAI YANG ANDA MASUKAN SALAH')
          else if(na<=0) then
        writeln('NILAI YANG ANDA MASUKAN SALAH')
          ELSE IF (na<=100) and (na>=80) THEN
        Writeln('NILAI IM ANDA : A')
          else if (na<80) and (na>=65) then
        writeln('NILAI IM ANDA : B')
          else if (na<65) and (na>=50) then
        writeln('NILAI IM ANDA : C')
          else if (na<50) and (na>=40) then
        writeln('NILAI IM ANDA : D')
          else if(na<40) then
        writeln('NILAI IM ANDA : E');
      end;
      gotoxy(1,11); writeln('=========================================');
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

Procedure jarak;
  var s1,s2,s3,v1,v2,v3,t1,t2,t3,r:real; lagi:char;
begin
  repeat
    clrscr;
      writeln('$=====================================$');
      writeln('$        PROGRAM HITUNG JARAK         $');
      writeln('$=====================================$');
      write('Masukan Nilai Kecepatan 1: '); readln(v1); 
      write('Masukan Nilai Waktu Tempuh 1 : '); readln(t1); 
      write('Masukan Nilai Kecepatan 2: '); readln(v2); 
      write('Masukan Nilai Waktu Tempuh 2 : '); readln(t2); 
      write('Masukan Nilai Kecepatan 3: '); readln(v3); 
      write('Masukan Nilai Waktu Tempuh 3 :'); readln(t3); 
      s1:= v1*t1; 
      s2:= v2*t2; 
      s3:= v3*t3;
      r:= (s1+s2+s3)/(t1+t2+t3);
      writeln('$=====================================$');
      writeln('Hasil Perhitungan Sebagai Berikut');
      writeln('Jarak Tempuh 1: ',s1:3:0,' km');
      writeln('Jarak Tempuh 2: ',s2:3:0,' km');
      writeln('Jarak Tempuh 3: ',s3:3:0,' km');
      writeln('Rata-rata Jarak Tempuh: ',r:3:0,' km/h');
      writeln('$=====================================$');
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

Procedure dlingkaran;
const pi=3.14; var d,j,luas,keliling:real; lagi:char;
begin
  repeat
    clrscr;
      writeln('$==========================================$');
      writeln('PROGRAM HITUNG LUAS DAN KELILING LINGKARAN');
      writeln('$==========================================$');
      write ('Masukan Diameter :'); readln(d);
      j:= d/2; luas:= pi*j*j; keliling:= 2*pi*j;
      writeln('$==========================================$');
      writeln('Berikut Hasil Perhitungan');
      writeln('Luas Lingkaran: ',luas:3:2);
      writeln('Keliling Lingkaran: ',keliling:3:2);
      writeln('$==========================================$');
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

Procedure ssiku;
var X,Y,Z,keliling,luas:real; lagi:char;
begin
  repeat
    clrscr;
      writeln('$=====================================================$');
      writeln('$          PROGRAM HITUNG SEGITIGA SIKU-SIKU          $');
      write('Masukan Nilai X Tinggi:'); readln(X);
      write('Masukan Nilai Y Alas:'); readln(Y);
      Z:=SQRT(SQR(X)+SQR(Y));
      keliling:= X+Y+Z;
      luas:= (Y*X )/2;
      writeln('$=====================================================$');
      writeln('Hasil Perhitungan Sebagai Berikut');
      writeln('Nilai Sisi Miring :', Z:3:2);
      writeln('Luas Segitiga Siku-siku :', luas:3:2);
      writeln('Keliling Segitiga Siku-siku :', keliling:3:2);
      writeln('$=====================================================$');
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
end;

procedure ssisi;
var sisi:integer; alas:real; tinggi:real; keliling:real; luas:real; lagi: char;
begin
  repeat
    clrscr;
      writeln('$==========================================================$');
      writeln('$            PROGRAM HITUNG SEGITIGA SAMA SISI             $');
      write('Masukan panjang sisi:'); readln(sisi);
      keliling:= 3*sisi;
      alas:= keliling/3;
      tinggi:= sqrt( sqr(sisi) - sqr(alas/2) );
      luas:= (alas*tinggi )/2;
      writeln('$==========================================================$');
      writeln('Hasil Perhitungan Sebagai Berikut');
      writeln('Alas Segitiga Sama Sisi :', alas:3:2);
      writeln('Tinggi Segitiga Sama Sisi :', tinggi:3:2);
      writeln('Luas Segitiga Sama Sisi :', luas:3:2);
      writeln('Keliling Segitiga Sama Sisi :', keliling:3:2);
      writeln('$==========================================================$');
      write('ULANGI LAGI? (yes/no) = ');readln(lagi);
  until lagi='n';
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

Procedure desbin;
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

BEGIN {ALGORITMA =================================================}
  Repeat
    TextColor(White); TextBackground(Blue); Clrscr;
    Writeln('$============================================================================================$');
    Writeln('|                             PROGRAM KINERJA MANAGER INFORMATIKA                            |');
    Writeln('$============================================================================================$');
    Writeln('|  [1]    PENGOLAHAN NILAI MAHASISWA                                                         |');
    Writeln('|  [2]    KASIR SEDERHANA                                                                    |');
    Writeln('|  [3]    HITUNG NILAI MAHASISWA                                                             |');
    Writeln('|  [4]    PROGRAM HITUNG JARAK                                                               |');
    Writeln('|  [5]    HITUNG LUAS & KELILING LINGKARAN DENGAN INPUT DIAMETER                             |');
    Writeln('|  [6]    HITUNG SEGITIGA SIKU SIKU DENGAN INPUT SISI 1 & DUA                                |');
    Writeln('|  [7]    HITUNG SEGITIGA SAMA SISI DENGAN INPUT 1 SISI                                      |');
    Writeln('|  [8]    ANALISIS BILANGAN PRIMA                                                            |');
    Writeln('|  [9]    KONVERSI DESIMAL KE BINER                                                          |');
    Writeln('|============================================================================================|');
    Writeln('|  [0] Selesai                                                                               |');
    Writeln('$============================================================================================$');
    Writeln('|  >> Pilih Nomor :                                       ', 'WAKTU PADA : ',DateTimeToStr(Now), '   |'); 
    Writeln('$============================================================================================$');
  
    GotoXY(25,16); Readln(Pilihan);
        {--Proses Pilihan }
      Case Pilihan Of
         '1' : Begin
                 masuk(kul);
               End;
         '2' : Begin
                 kasir;
               End;
         '3' : Begin
                nilai;
               End;
         '4' : Begin
                jarak;
               End;
         '5' : Begin
                dlingkaran;
               End;
         '6' : Begin
                ssiku;
               End;
         '7' : Begin
                ssisi;
               End;
         '8' : Begin
                prima;
               End;    
         '9' : Begin
                desbin;
               End;  
         
      End;{Case}
  Until (Pilihan = STOP); {sudah dipastikan STOP=0 }

   Clrscr; {Pesan penutup}
   GotoXY(30,12); Write('$===================$');
   GotoXY(30,13); Write('|     THANK YOU     |');
   GotoXY(30,14); Write('$===================$');
   Readln;
END.