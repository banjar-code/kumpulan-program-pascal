program nilai; 
uses crt,wincrt; 
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
var i,j,bbt,jumus,jumsks:integer; 
 ip:real; 
begin 
clrscr;
 jumsks:=0; 
 gotoxy(28,1);writeln('PENGOLAHAN NILAI MAHASISWA'); 
 for i:=1 to 8 do 
 jumsks:=jumsks+sks[i]; 
 gotoxy(1,3);writeln('No.  NPM      Nama         MK1  MK2  MK3  MK4  Mk5  MK6  MK7  MK8  IPK   KET'); 
 for i:=1 to 32767 do begin 
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
end; 
{--------------------------------------------------------------------} 
begin 
 masuk(kul); 
end. 