program prak82;
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
  var urut:array[1..32767] of data;  i,n :bilangan; lagi:char;
begin
repeat
clrscr;
writeln('$==========================================================================================================$');
writeln('|                                            DATA IDENTITAS MAHASISWA                                      |');
writeln('|==========================================================================================================|');
write('Input Batas N: '); readln(n);
   for i:=1 to n do
   begin
      with urut[i] do
      begin
 writeln('ID Data: ',i);     
 write('NIM: '); readln(nim); 
 write('Nama: '); readln(nama);  
 write('Jenis Kelamin: '); readln(kelamin);
 write('Tanggal Lahir: '); readln(ttl); 
 write('Alamat: '); readln(alamat); 
 writeln('|==========================================================================================================|');
     end
   end;
clrscr;
writeln('$=========================================================================================================$');
writeln('|                                          DATA IDENTITAS MAHASISWA                                       |');
writeln('$=========================================================================================================$');
writeln('| NO| NIM       |Nama              | Gender    | Tgl.Lahir  | Alamat                                      |');
 for i:=1 to n do
   begin {//P}
      with urut[i] do
      begin
gotoxy(3,i+4);writeln(i); gotoxy(7,i+4);writeln(nim); gotoxy(18,i+4);writeln(nama);
gotoxy(37,i+4);writeln(kelamin);gotoxy(49,i+4);writeln(ttl); gotoxy(62,i+4);writeln(alamat);
    end;
  end;
writeln('$=========================================================================================================$');
write('ULANGI LAGI? (y/t) = ');readln(lagi);
until lagi='t';
end.