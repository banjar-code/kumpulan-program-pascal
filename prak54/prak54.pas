program prak54;
uses  CRT, sysutils;
  Type 
    Karakter = integer;
  Var 
    Pilihan : Karakter;
procedure masakanindo;
begin
clrscr;
  writeln('padang');
  writeln('sunda');
  writeln('jawa');
  writeln('betawi');
readln;  
end;

procedure masakankorea;
begin
clrscr;
  writeln('kimchi, bulgogi');
  writeln('kimbap, bibimbap');
  writeln('ramyeon, jajangmyein');
  writeln('japchae, miyeok guk');
readln;
end;

procedure masakanjepang;
begin
clrscr;
  writeln('susi, sukiyaki');
  writeln('sashimi, oshizushi');
  writeln('okonomiyaki, ramen');
  writeln('yakiniku, takoyaki');
readln;
end;

procedure masakanprancis;
begin
clrscr;
  writeln('escargot, foie gras');
  writeln('soupeal aloignon');
  writeln('beef baorguigno');
  writeln('coq au vini');
readln;
end;

BEGIN 
  Repeat
    TextColor(White); TextBackground(red); Clrscr;
    Writeln('$==========================================$');
    Writeln('|                MENU MASAKAN              |');
    Writeln('$==========================================$');
    Writeln('| NAMA : ARIF NOER WAHIDIN  NPM : 11210072 |');
    writeln('| WAKTU PADA :         ',DateTimeToStr(Now),' |');
    Writeln('$==========================================$');
    Writeln('|  [1]    MASAKAN INDONESIA                |');
    Writeln('|  [2]    MASAKAN KOREA                    |');
    Writeln('|  [3]    MASAKAN JEPANG                   |');
    Writeln('|  [4]    MASAKAN PERANCIS                 |');
    Writeln('|  [5]    SELESAI ...                      |');
    Writeln('$==========================================$');
    Writeln('|  >> Pilih Nomor :                        |'); 
    Writeln('$==========================================$');
  
    GotoXY(25,13); Readln(Pilihan);
        {--Proses Pilihan }
      If(Pilihan=1) then
               Begin
                 masakanindo;
               End
      else If(Pilihan=2) then
               Begin
                 masakankorea;
               End
      else If(Pilihan=3) then
               Begin
                 masakanjepang;
               End
      else If(Pilihan=4) then
               Begin
                 masakanprancis;
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
       