program prak83;
uses crt;
    type 
    data=record 
    nim:string; 
    nama:string;
    ttl:string;
    kelamin:string;
    alamat:string;
    end;
    bilangan=byte;
    karakter=char;
  var urut:array[1..32767] of data;  I,n :bilangan; lagi:karakter;
begin
repeat
clrscr;
writeln('$==========================================================================================================$');
writeln('|                                            DATA IDENTITAS MAHASISWA                                      |');
writeln('|==========================================================================================================|');
with urut[I] do
begin
 i:=i+1;
 writeln('ID Data=',i);     
 write('NIM: '); readln(urut[I].nim); 
 write('Nama: '); readln(urut[I].nama);  
 write('Jenis Kelamin: '); readln(urut[I].kelamin);
 write('Tanggal Lahir: '); readln(urut[I].ttl); 
 write('Alamat: '); readln(urut[I].alamat); 
 writeln('|==========================================================================================================|');
 write('TAMBAH LAGI?(Y/T)? '); readln(lagi);
end;
until (lagi= 't')or (lagi = 'T');
clrscr;
writeln('$=========================================================================================================$');
writeln('|                                          DATA IDENTITAS MAHASISWA                                       |');
writeln('$=========================================================================================================$');
writeln('| NO| NIM       |Nama              | Gender    | Tgl.Lahir  | Alamat                                      |');
 for i:=1 to i do
   begin  {//P}
      with urut[i] do
      begin
gotoxy(3,i+4);writeln(i); gotoxy(7,i+4);writeln(urut[I].nim); gotoxy(18,i+4);writeln(urut[I].nama);
gotoxy(37,i+4);writeln(urut[I].kelamin);gotoxy(49,i+4);writeln(urut[I].ttl); gotoxy(62,i+4);writeln(urut[I].alamat);
    end;
  end;
writeln('$=========================================================================================================$');
readln;
end.