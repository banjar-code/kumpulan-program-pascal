UNIT box;
{========================================================================
 Informasi Modul/unit
 - Procedure :
01. Procedure CreateMenu(MN: MstMenu; X,Y:INTEGER; Jenis, FC, BC: 
    INTEGER; Var Pil :CHAR);
02. Procedure CreateBox(X1,Y1,X2,Y2 :INTEGER; Jenis, FC,BC: INTEGER);
03. Procedure BalanceBox(X,Y,Z:INTEGER; Jenis, FC,BC: INTEGER);
04. Procedure VReplicate(CC: Char; N,X,Y: Integer);

 - Function :
   01. Function HReplicate(CC: Char; N: Integer): String;

==========================================================================}
{Kamus Data }

INTERFACE
  USES Crt;
  Const
    {===== Garis ganda menggunakan character ASCII langsung ====}
      Top2Left      = chr(201);  Top2Right     = chr(187);
      Left2Medium   = chr(204);  Right2Medium  = chr(185);
      Bottom2Left   = chr(200);  Bottom2Right  = chr(188);
      Top2Medium    = chr(203);  Bottom2Medium = chr(202);
      Horiz2Line    = chr(205);  Vertic2Line   = chr(186);
      Cross2        = chr(206);

    {===== Garis tunggal dengan menggunakan cara fungsi CHR ====}
      Top1Left    = chr(218);  Top1Right     = chr(191);
      Left1Medium = chr(195);  Right1Medium  = chr(180);
      Bottom1Left = chr(192);  Bottom1Right  = chr(217);
      Top1Medium  = chr(194);  Bottom1Medium = chr(193);
      Horiz1Line  = chr(196);  Vertic1Line   = chr(179);
      Cross1      = chr(197);


  TYPE Simbol     = Char;
       ElemenMenu = String;
       MstMenu    = array[0..16] of ElemenMenu;


  VAR TLeft, TRight, LMedium, RMedium, BLeft, BRight,
      TMedium, BMedium, HLine, VLine, Cross : Simbol;


{>>> Prototype procedure =========================================}
 
  Procedure CreateMenu(MN: MstMenu; X,Y:INTEGER; Jenis,FC,BC:INTEGER; Var Pil :CHAR);
  {IS: X,Y koordinat layar, Font/Background Color FC-BC, Pil sembarang}
  {FS: terbentuk kotak menu di X,Y, warna FC,BC, dan nilai input Pil}

  Procedure CreateBox(X1,Y1,X2,Y2 :INTEGER; Jenis, FC,BC: INTEGER);
  {IS: (X1,Y2),(X2,Y2) koordinat kotak di layar, Jenis=1/2 garis tunggal
       /ganda, Font/Background Color FC-BC}
  {FS: terbentuk kotak dari (X1,Y1)-(X2,Y2) Jenis 1/2, berwarna FC/BC}

  Procedure BalanceBox(X,Y,Z:INTEGER; Jenis, FC,BC: INTEGER);
  {IS: (X,Y) koordinat pusat kotak, ukuran Z, Jenis=1/2 garis tunggal
       /ganda, Font/Background Color FC-BC}
  {FS: terbentuk kotak berpusat (X,Y) ukuran Z, Jenis 1/2,berwarna FC/BC}

  Procedure VReplicate(CC: Char; N,X,Y: Integer);
  { I.S.: Karakter CC dan banyaknya pengulangan N, minimal N=1 }
  { F.S.: Tercetak string CC N kali Vertikal kolom X, mulai baris Y}


{>>> Prototype Function =========================================}

  Function HReplicate(CC: Char; N: Integer): String;
  {Input: Karakter CC Current Char dan banyak pengulangan N, minimal N=1 }
  {RV   : Return Value/dikirim sebuah string horisontal CC sebanyak N kali}

{========================================================================}
{ Realisasi Algoritma                                                    }
{========================================================================}

IMPLEMENTATION
{>> PROCEDURE : }
{>>> Realisasi CreateMenu =========================================}
  Procedure CreateMenu(MN: MstMenu; X,Y:INTEGER; Jenis,FC,BC:INTEGER; Var Pil :CHAR);
  {IS: X,Y koordinat layar, Font/Background Color FC-BC, Pil sembarang}
  {FS: terbentuk kotak menu di X,Y, warna FC,BC, dan nilai input Pil}
   var i, Panjang, BatasMenu : integer; { i adalah identifikasi baris}
       OK : Boolean;
   begin
      TextColor(FC); TextBackground(BC);
      Case Jenis Of
         1 : Begin
                TLeft   := Top1Left;      TRight  := Top1Right;
                LMEdium := Left1Medium;   RMEdium := Right1Medium;
                BLeft   := Bottom1Left;   BRight  := Bottom1Right;
                HLine   := Horiz1Line;    VLine   := Vertic1Line;
                Cross   := Cross1;
             End;
         2 : Begin
                TLeft   := Top2Left;      TRight   := Top2Right;
                LMEdium := Left2Medium;   RMEdium  := Right2Medium;
                BLeft   := Bottom2Left;   BRight   := Bottom2Right;
                HLine   := Horiz2Line;    VLine    := Vertic2Line;
                Cross   := Cross2;
             End;
         {3:, 4:, dst Cadangan}
      end;{Case}


     {membuat isi dan kotak MENU Khusus}
     Panjang := Length(Mn[0]);
     GotoXY(X,Y);   write(TLeft,HReplicate(HLine,Panjang),TRight);
     GotoXY(X,Y+1); write(VLine,Mn[0],VLIne); {JUDUL MENU }
     GotoXY(X,Y+2); write(LMedium,HReplicate(HLine,Panjang),RMedium);
     OK := False;
     BatasMenu := 15;
     for i := 1 to BatasMenu do begin
        If (Mn[i] = '*') then begin OK := True; BatasMenu:=i; end;
        If (Not OK) then begin
          gotoxy(X,Y+2+i);
          write(VLine,Mn[i],VLine);
        end;
     end;
     GotoXY(X,Y+2+BatasMenu); write(LMedium,HReplicate(HLine,Panjang),RMedium);
     GotoXY(X,Y+2+BatasMenu+1); 
         write(VLine,' >>> Pilih Nomor = _',HReplicate(' ',Panjang-20),VLine);
     GotoXY(X,Y+2+BatasMenu+2);write(BLeft,HReplicate(HLine,Panjang),BRight);
     GotoXY(X+20,Y+2+BatasMenu+1); Readln(Pil);

     {Normalkan warna}
     TextColor(White); TextBackground(Black);
   end;


{>>> Realisasi CreateBox =========================================}
  Procedure CreateBox(X1,Y1,X2,Y2 :INTEGER; Jenis, FC,BC: INTEGER);
  {IS: (X1,Y2),(X2,Y2) koordinat kotak di layar, Jenis=1/2 garis tunggal
       /ganda, Font/Background Color FC-BC}
  {FS: terbentuk kotak dari (X1,Y1)-(X2,Y2) Jenis 1/2, berwarna FC/BC}
   var i, Lebar, Tinggi : integer;
   Begin
      TextColor(FC); TextBackground(BC);
      Case Jenis Of
         1 : Begin
                TLeft   := Top1Left;      TRight   := Top1Right;
                BLeft   := Bottom1Left;   BRight   := Bottom1Right;
                HLine   := Horiz1Line;    VLine    := Vertic1Line;
             End;
         2 : Begin
                TLeft   := Top2Left;      TRight   := Top2Right;
                BLeft   := Bottom2Left;   BRight   := Bottom2Right;
                HLine   := Horiz2Line;    VLine    := Vertic2Line;
             End;
         {3:, 4:, dst Cadangan}
      end;{Case}

      {membuat kotak : Garis atas, garis 2 dinding tegak, garis bawah }
      Lebar  := X2-X1;
      Tinggi := Y2-Y1;
      GotoXY(X1,Y1); write(TLeft,HReplicate(HLine,Lebar),TRight);
      for i := 1 to Tinggi do begin
         gotoxy(X1,Y1+i); write(VLine,HReplicate(' ',Lebar),VLine);
      end;
      GotoXY(X1,Y1+Tinggi); write(BLeft,HReplicate(HLine,Lebar),BRight);

      {Normalkan warna}
      TextColor(White); TextBackground(Black);
    end;


{>>> Realisasi BalanceBox =========================================}
  Procedure BalanceBox(X,Y,Z:INTEGER; Jenis, FC,BC: INTEGER);
  {IS: (X,Y) koordinat pusat kotak, ukuran Z, Jenis=1/2 garis tunggal
       /ganda, Font/Background Color FC-BC}
  {FS: terbentuk kotak berpusat (X,Y) ukuran Z, Jenis 1/2,berwarna FC/BC}
   var i, Size : integer;
   Begin
      TextColor(FC); TextBackground(BC);
      Case Jenis Of
         1 : Begin
                TLeft   := Top1Left;      TRight   := Top1Right;
                BLeft   := Bottom1Left;   BRight   := Bottom1Right;
                HLine   := Horiz1Line;    VLine    := Vertic1Line;
             End;
         2 : Begin
                TLeft   := Top2Left;      TRight   := Top2Right;
                BLeft   := Bottom2Left;   BRight   := Bottom2Right;
                HLine   := Horiz2Line;    VLine    := Vertic2Line;
             End;
         {3:, 4:, dst Cadangan}
      end;{Case}

      {membuat kotak : Garis atas, garis 2 dinding tegak, garis bawah }
      Size := 2;
      Size := Size * Z;
      GotoXY(X-Z,Y-Z); write(TLeft,HReplicate(HLine,Size),TRight);
      for i := 1 to Size do begin
         gotoxy(X-Z,Y-Z+i); write(VLine,HReplicate(' ',Size),VLine);
      end;
      GotoXY(X-Z,Y+Z); write(BLeft,HReplicate(HLine,Size),BRight);

      { Normalkan warna }
      TextColor(White); TextBackground(Black);
    end;

{>>> Realisasi VReplicate =========================================}
  Procedure VReplicate(CC: Char; N,X,Y: Integer);
  { I.S.: Karakter CC dan banyaknya pengulangan N, minimal N=1 }
  { F.S.: Tercetak string CC N kali Vertikal kolom X, mulai baris Y}
   Var i: integer;
   Begin {algoritma}
     for i:=1 to N do begin { i traversal 1..n}
        gotoXY(X,Y+i-1); Write(CC);
     end;
   End;

{>> FUNCTION : }
{>>> Realisasi HReplicate =========================================}
  Function HReplicate(CC: Char; N: Integer): String;
  {Input: Karakter CC Current Char dan banyak pengulangan N, minimal N=1 }
  {RV   : Return Value/dikirim sebuah string horisontal CC sebanyak N kali}
   Var i: integer; s : String;
   Begin {algoritma}
     s := ''; {inisialisasi}
     for i:=1 to N do { i traversal 1..N}
       s := s + CC;
     HReplicate := s;  { RV --> s}
   End;
{=========================================================================}
END. 
