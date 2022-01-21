uses  CRT, box;

Const STOP = '0';

Type  INT         = Integer;
      MENUPILIHAN = Char;

Var   Pilihan     : MENUPILIHAN;
      Menu1       : MstMenu; {Type ada di Unit U_Basic1}

  Procedure DefineMenu(Var Mn : MstMenu);
  {I.S.: Mn Array sembarang max indeks = 16, N = indeks terakhir }
  {F.S.: Mn[0]=Judul menu, Isi konten Mn[1]..Mn[N-1], Mn[N]='*'  }
  begin
    Mn[0] := '        JUDUL MENU        ';
    Mn[1] := ' [1] Create Box           ';
    Mn[2] := ' [2] Balance Box          ';
    Mn[3] := ' [3] Delete CreateBox     ';
    Mn[4] := ' [4] Delete Balance Box   ';
    Mn[5] := ' [5] Create & Balance Box ';
    Mn[6] := ' ---------                ';
    Mn[7] := ' <0> Stop                 ';
    Mn[8] := '*';
  end;


BEGIN {ALGORITMA =================================================}
   TextColor(White); TextBackground(Black); Clrscr;
   {--------------------------------------------------------------}
   { Membuat Menu memanfaatkan fungsi lokal & prosedur U_BASIC1   }
   {--------------------------------------------------------------}
   Pilihan := '0';
   Repeat
       {>>> DefineMenu(Var Mn : MstMenu)}
      DefineMenu(Menu1);
      {>>> CreateMenu(MN:MstMenu;X,Y:INTEGER;Jenis,FC,BC:INTEGER;Var Pil:CHAR)}
      CreateMenu(Menu1,30,04,2,White,Blue,Pilihan);
        {--Proses Pilihan }
      Case Pilihan Of
         '1' : Begin
                   {>>>CreateBox(X1,Y1,X2,Y2:INTEGER;Jenis,FC,BC:INTEGER)}
                 CreateBox(05,05,20,20,1,White,Brown);
               End;
         '2' : Begin
                   {>>> BalanceBox(X,Y,Z:INTEGER; Jenis,FC,BC:INTEGER)}
                 BalanceBox(70,10,5,1,White,Green);
               End;
         '3' : Begin
                 CreateBox(05,05,20,20,1,Black,Black);
               End;
         '4' : Begin
                 BalanceBox(70,10,5,1,Black,Black);
               End;
         '5' : Begin
                 CreateBox(05,05,20,20,1,White,Red);
                 BalanceBox(70,10,5,1,White,Cyan);
               End;
      End;{Case}
   Until (Pilihan = STOP); {sudah dipastikan STOP=0 }

   Clrscr; {Pesan penutup}
   GotoXY(30,12); Write('o-------------------o');
   GotoXY(30,13); Write('|     THANK YOU     |');
   GotoXY(30,14); Write('o-------------------o');
   Readln;

END.{ALGORITMA =================================================}
