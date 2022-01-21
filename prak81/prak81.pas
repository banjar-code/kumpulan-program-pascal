program prak81;
uses crt;
  var nama, nim, ttl, kelamin, alamat:string; lagi :char; 
begin
repeat
clrscr;
writeln('$=====================================================================================================$');
writeln('|                                             DATA IDENTITAS SAYA                                     |');
writeln('|=====================================================================================================|');
 gotoxy(1,4);write('|  NIM: '); readln(nim); gotoxy(103,4);write('|');
 gotoxy(1,5);write('|  Nama: '); readln(nama);  gotoxy(103,5);write('|');
 gotoxy(1,6);write('|  Jenis Kelamin: '); readln(kelamin); gotoxy(103,6);write('|'); 
 gotoxy(1,7);write('|  Tanggal Lahir: '); readln(ttl); gotoxy(103,7);write('|'); 
 gotoxy(1,8);write('|  Alamat: '); readln(alamat); gotoxy(103,8);write('|');
clrscr;
writeln('$=====================================================================================================$');
writeln('|                                             DATA IDENTITAS SAYA                                     |');
writeln('$=====================================================================================================$');
writeln('| NIM       |Nama              | Gender    | Tgl.Lahir  | Alamat                                      |');
writeln('| ',nim); gotoxy(13,5);writeln('|'); gotoxy(14,5);writeln(nama); 
gotoxy(32,5);writeln('|'); gotoxy(34,5);writeln(kelamin); gotoxy(44,5);writeln('|');
gotoxy(46,5);writeln(ttl); gotoxy(57,5);writeln('|'); gotoxy(59,5);writeln(alamat); gotoxy(103,5);writeln('|');
writeln('$=====================================================================================================$');
write('ULANGI LAGI? (yes/no) = ');readln(lagi);
until lagi='n';
writeln('$=====================================================================================================$');
end.