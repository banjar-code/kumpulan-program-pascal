Program Polynomial;
uses wincrt;
type
 Point = ^node;
 node = record
 pangkat : integer;
 koefisien : integer;
 next : point;
 end;
var
 P : point;
{============================================================
 = Procedure untuk memasukkan data secara urut =
 ============================================================}
Procedure InsertUrut(var A : point; Koef, Pang : integer);
var
 baru, bantu : point;
begin
 new(baru);
 baru^.next:=nil;
 baru^.Pangkat := Pang;
 baru^.Koefisien := Koef;
 if A=nil then
 A:=baru
 else
 begin
 if Pang < A^.Pangkat then
 begin
 baru^.next := A;
 A:=baru; 
 end
 else
 begin
 bantu:=A;
 while (bantu^.next <> nil) and (Pang > bantu^.next^.Pangkat)
do
 bantu:=bantu^.next;
 if (bantu^.next<>nil) and (Pang = bantu^.next^.Pangkat)
then
 bantu^.next^.Koefisien := bantu^.next^.Koefisien +
Koef
 else
 if (Pang = bantu^.Pangkat) then
 bantu^.Koefisien := bantu^.Koefisien + Koef
 else
 begin
 baru^.next:=bantu^.next;
 bantu^.next:=baru;
 end;
 end;
 end;
 end;
{============================================================
 = Procedure untuk mencetak Persamaan dari Polynomial =
 = yang dihasilkan =
 ============================================================}
Procedure CetakPoly(A : Point);
var
 bantu : point;
begin
 bantu:=A;
 if bantu<>nil then
 begin
 gotoxy(16,13);writeln('Bentuk Persamaan Plynomialnya adalah:');
 gotoxy(16,15);write('Y = ');
 while bantu<>nil do
 begin
 write(bantu^.koefisien,'x^',bantu^.pangkat);
 bantu:=bantu^.next;
 if bantu <> nil then write(' + ');
 end;
 end;
 else
 begin
 gotoxy(16,13);writeln('Belum ada Polynomial');
 gotoxy(16,14);writeln('Pilih no 1 untuk membuat..!!??');
 end;

end;
{============================================================
 = Procedure untuk memasukkan Koefisien dan Pangkat pada =
 = Suatu Polynomial =
 ============================================================} 
111
Procedure InsertPoly(var A : point);
var
 i, jum, dataP, dataK : integer;
begin
 gotoxy(16,13);write('Jumlah data :');readln(jum);
 for i:=1 to jum do
 begin
 gotoxy(16,15);write('Nilai Koefisien ke-[',i,'] :');readln(dataK);
 gotoxy(16,16);write('Nilai Pangkat ke-[',i,'] :');readln(dataP);
 InsertUrut(A, dataK, dataP);
 end;
end;
{============================================================
 = Fungsi untuk menghitung perpangkatan =
 ============================================================}
Function Pangkat(a,b : integer):Real;
var
 i : integer;
 Hsl : real;
begin
 if a=0 then
 Hsl:=0
 else
 begin
 if b=0 then
 Hsl:=1
 else
 begin
 if b > 0 then
 begin
 Hsl:=1;
 for i:=1 to b do
 Hsl := Hsl*a;
 end
 else
 begin
 Hsl:=1;
 for i:=1 to abs(b) do
 Hsl := Hsl*a;
 Hsl :=1/Hsl;
 end;
 end;
 end;
 Pangkat:=Hsl;
end;
{============================================================
 = Fungsi untuk menghitung derivatif dari Polynomial =
 ============================================================}
Function Deriv(x : integer; A : point):real;
var
 bantu : point;
 Hsl : Real;
begin 
112
 Hsl:=0;
 bantu:=A;
 while bantu<>nil do
 begin
 Hsl:=Hsl+bantu^.Pangkat * bantu^.Koefisien *
Pangkat(x,bantu^.Pangkat-1);
 bantu:=bantu^.next;
 end;
 Deriv:=Hsl;
end;
{============================================================
 = Procedure untuk menampilkan Judul =
 ============================================================}
Procedure Judul;
const
 garis = '===========================================';
begin
 gotoxy(14,1);writeln(' PROGRAM POLYNOMIAL DENGAN POINTER
');
 gotoxy(14,4);writeln(garis);
 gotoxy(14,5);writeln('| MENU UTAMA
|');
 gotoxy(14,6);writeln(garis);
 gotoxy(14,7);writeln('| 1. Memasukkan Data
|');
 gotoxy(14,8);writeln('| 2. Menampilkan Persamaan Polynomial
|');
 gotoxy(14,9);writeln('| 3. Menghitung derivatif dari Polinomial
|');
 gotoxy(14,10);writeln('| 4. Hapus Polynomial
|');
 gotoxy(14,11);writeln(garis);
end;
{============================================================
 = Procedure untuk menghitung derivatif dari Polynomial =
 ============================================================}
Procedure HitungDeriv(nilai : integer;var P : point);
var
 x, n : integer;
begin
 gotoxy(16,13);write('Masukkan nilai x:');readln(n);
 CetakPoly(P);
 gotoxy(16,17);write('Derivatif dengan x=',n,' adalah
:',Deriv(n,P):4:3);
end;
Procedure HapusPoly(var A : point);
var
 bantu : point;
 jawab : char;
begin
 gotoxy(16,13);write('Yakin akan dihapus ?');readln(jawab);
 if upcase(jawab)='Y' then 
113
 begin
 bantu:=nil;
 dispose(A);
 A:=bantu;
 end;
 gotoxy(16,15);write('Polynomial sudah dihapus..');
end;
{============================================================
 = Procedure untuk menu utama =
 ============================================================}
Procedure Menu;
var
 jawab : char;
 Pilih,x : integer;
begin
 jawab := 'Y';
 repeat
 clrscr;
 Judul;
 gotoxy(16,12);write('Pilihan 1,2,3 atau 0 --> Exit ! :
');readln(Pilih);
 case Pilih of
 0 : jawab:='T';
 1 : InsertPoly(P);
 2 : cetakPoly(P);
 3 : HitungDeriv(x,P);
 4 : HapusPoly(P);
 else gotoxy(16,13);writeln('Ma''af Anda salah Pilih..!');
 end;
 gotoxy(16,21);writeln('Tekan sebarang tombol untuk lanjut...!');
 readkey;
 until jawab='T';
 clrscr;
 gotoxy(30,12);write('Terima Kasih..!');
end;
{============================================================
 = Program Utama =
 ============================================================}
begin
 Menu;
end. 