Program Tebak_warna;
uses crt;
const
warna: array[1..10] of string =('merah','putih','hitam','kuning','hijau',
                               'biru','coklat','ungu','pink','cyan');
type nomor    = string;
     bilangan = byte;
     karakter = char;
var  nowarna                         :nomor;
     score,t1,t2,t3,t4,y,w1,w2,w3,w4 :byte;
     x,ulang                         :karakter;
     tebak1,tebak2,tebak3,tebak4     :boolean;
{---ALGORITMA---}
begin
   repeat
      clrscr;
      gotoxy(10,7);writeln ('$=================TEBAK WARNA===============$');
      gotoxy(10,8);writeln ('$=========KODE WARNA SEBAGAI BERIKUT========$');
      gotoxy(10,9);writeln('|  1=merah 2=putih 3=hitam 4=kuning 5=hijau |');
      gotoxy(10,10);writeln('|  6=biru 7=coklat 8=ungu 9=pink 10=cyan    |');
      gotoxy(10,11);writeln('|===========================================|');
      gotoxy(10,12);writeln('|  T1    T2   T3   T4   J1 J2  J3 J4 SCORE  |');
      gotoxy(10,14);writeln('|===========================================|');
      score:=0;
      for y:=1 to 4 do
      begin
         randomize;
         w1:=random(10);
         w2:=random(10);
         w3:=random(10);
         w4:=random(10);
         nowarna:=warna[w1]; gotoxy(14,13);write('?');
         nowarna:=warna[w2]; gotoxy(19,13);write('?');
         nowarna:=warna[w3]; gotoxy(24,13);write('?');
         nowarna:=warna[w4];gotoxy(29,13);write('?');
     end;
     gotoxy(14,15);
     readln(t1);{//I}
     if(t1=w1)then{//P}
     begin
        gotoxy(34,15);
        score:=score+25;
        write('B');
        gotoxy(14,13);
        write(w1);
        tebak1:=true;
     end else
     begin
        gotoxy(34,15);
        write('S');
        tebak1:=false;
     end;
     gotoxy(19,15);
     readln(t2);
     if(t2=w2)then
     begin
        gotoxy(37,15);
        score:=score+25;
        write('B');
        gotoxy(19,13);
        write(w2);
        tebak2:=true;
     end else
     begin
        gotoxy(37,15);
        write('S');
        tebak2:=false;
     end;
     gotoxy(24,15);
     readln(t3);
     if(t3=w3)then
     begin
        gotoxy(41,15);
        score:=score+25;
        write('B');
        gotoxy(24,13);
        write(w3);
        tebak3:=true;
     end else
     begin
        gotoxy(41,15);
        write('S');
        tebak3:=false;
     end;
     gotoxy(29,15);
     readln(t4);
     if(t4=w4)then
     begin
        gotoxy(45,15);
        score:=score+25;
        write('B');
        gotoxy(29,13);
        write(w4);
        tebak4:=true;
     end else
     begin
        gotoxy(45,15);
        write('S');
        tebak4:=false;
     end;
     gotoxy(48,15);write('=',score,'%');
     {//Percobaan Ke-2}
     if(tebak1=false) then
     begin
        gotoxy(14,16);
        readln(t1);
        if(t1=w1)then
        begin
           gotoxy(34,16);
           score:=score+25;
           write('B');
           gotoxy(14,13);
           write(w1);
           tebak1:=true;
        end else
        begin
           gotoxy(34,16);
           write('S');
           tebak1:=false;
        end;
     end;
     if(tebak2=false)then
     begin
        gotoxy(19,16);
        readln(t2);
        if(t2=w2)then
        begin
           gotoxy(37,16);
           score:=score+25;
           write('B');
           gotoxy(19,13);
           write(w2);
           tebak2:=true;
        end else
        begin
           gotoxy(37,16);
           write('S');
           tebak2:=false;
        end;
     end;
     if(tebak3=false) then
     begin
        gotoxy(24,16);
        readln(t3);
        if(t3=w3)then
        begin
           gotoxy(41,16);
           score:=score+25;
           write('B');
           gotoxy(24,13);
           write(w3);
           tebak3:=true;
        end else
        begin
           gotoxy(41,16);
           write('S');
           tebak3:=false;
        end;
     end;
     if(tebak4=false) then
     begin
        gotoxy(29,16);
        readln(t4);
        if(t4=w4)then
        begin
           gotoxy(45,16);
           score:=score+25;
           write('B');
           gotoxy(29,13);
           write(w4);
          tebak4:=true;
        end else
        begin
           gotoxy(45,16);
           write('S');
          tebak4:=false;
        end;
        gotoxy(48,16);
        write('=',score,'%');
     end;
     {//Percobaan ke-3}
     if(tebak1=false) then
     begin
        gotoxy(14,17);
        readln(t1);
        if(t1=w1)then
        begin
           gotoxy(34,17);
           score:=score+25;
           write('B');
           gotoxy(14,13);
           write(w1);
           tebak1:=true;
        end else
        begin
           gotoxy(34,17);
           write('S');
           tebak1:=false;
        end;
     end;
     if(tebak2=false)then
     begin
        gotoxy(19,17);
        readln(t2);
        if(t2=w2)then
        begin
           gotoxy(37,17);
           score:=score+25;
           write('B');
           gotoxy(19,13);
           write(w2);
           tebak2:=true;
        end else
        begin
           gotoxy(37,17);
           write('S');
          tebak2:=false;
        end;
     end;
     if(tebak3=false) then
     begin
        gotoxy(24,17);
        readln(t3);
        if(t3=w3)then
        begin
           gotoxy(41,17);
           score:=score+25;
           write('B');
           gotoxy(24,13);
           write(w3);
          tebak3:=true;
        end else
        begin
           gotoxy(41,17);
           write('S');
           tebak3:=false;
        end;
     end;
     if(tebak4=false) then
     begin
        gotoxy(29,17);
        readln(t4);
        if(t4=w4)then
        begin
           gotoxy(45,17);
           score:=score+25;
           write('B');
           gotoxy(29,13);
           write(w4);
           tebak4:=true;
        end else
        begin
           gotoxy(45,17);
           write('S');
           tebak4:=false;
        end;
        gotoxy(48,17);
        write('=',score,'%');
     end;
     {//Percobaan ke-4}
     if(tebak1=false) then
     begin
        gotoxy(14,18);
        readln(t1);
        if(t1=w1)then
        begin
           gotoxy(34,18);
           score:=score+25;
           write('B');
           gotoxy(14,13);
           write(w1);
           tebak1:=true;
        end else
        begin
           gotoxy(34,18);
           write('S');
           tebak1:=false;
        end;
     end;
     if(tebak2=false)then
     begin
        gotoxy(19,18);
        readln(t2);
        if(t2=w2)then
        begin
           gotoxy(37,18);
           score:=score+25;
           write('B');
           gotoxy(19,13);
           write(w2);
           tebak2:=true;
        end else
        begin
           gotoxy(37,18);
           write('S');
          tebak2:=false;
        end;
     end;
     if(tebak3=false) then
     begin
        gotoxy(24,18);
        readln(t3);
        if(t3=w3)then
        begin
           gotoxy(41,18);
           score:=score+25;
           write('B');
           gotoxy(24,13);
           write(w3);
          tebak3:=true;
        end else
        begin
           gotoxy(41,18);
           write('S');
           tebak3:=false;
        end;
     end;
     if(tebak4=false) then
     begin
        gotoxy(29,18);
        readln(t4);
        if(t4=w4)then
        begin
           gotoxy(45,18);
           score:=score+25;
           write('B');
           gotoxy(29,13);
           write(w4);
           tebak4:=true;
        end else
        begin
           gotoxy(45,18);
           write('S');
           tebak4:=false;
        end;
        gotoxy(48,18);
        write('=',score,'%');
     end;
     {//Percobaan ke-5}
     if(tebak1=false) then
     begin
        gotoxy(14,19);
        readln(t1);
        if(t1=w1)then
        begin
           gotoxy(34,19);
           score:=score+25;
           write('B');
           gotoxy(14,13);
           write(w1);
           tebak1:=true;
        end else
        begin
           gotoxy(34,19);
           write('S');
           tebak1:=false;
        end;
     end;
     if(tebak2=false)then
     begin
        gotoxy(19,19);
        readln(t2);
        if(t2=w2)then
        begin
           gotoxy(37,19);
           score:=score+25;
           write('B');
           gotoxy(19,13);
           write(w2);
           tebak2:=true;
        end else
        begin
           gotoxy(37,19);
           write('S');
          tebak2:=false;
        end;
     end;
     if(tebak3=false) then
     begin
        gotoxy(24,19);
        readln(t3);
        if(t3=w3)then
        begin
           gotoxy(41,19);
           score:=score+25;
           write('B');
           gotoxy(24,13);
           write(w3);
          tebak3:=true;
        end else
        begin
           gotoxy(41,19);
           write('S');
           tebak3:=false;
        end;
     end;
     if(tebak4=false) then
     begin
        gotoxy(29,19);
        readln(t4);
        if(t4=w4)then
        begin
           gotoxy(45,19);
           score:=score+25;
           write('B');
           gotoxy(29,13);
           write(w4);
           tebak4:=true;
        end else
        begin
           gotoxy(45,19);
           write('S');
           tebak4:=false;
        end;
        gotoxy(48,19);
        write('=',score,'%');
     end;
     if(score=100)then
     begin
        gotoxy(29,14);
        writeln('Oke,Anda berhasil menebak semua warna');
     end else
     if(score=0) then
     begin
        gotoxy(29,20); writeln('MAAF TEBAKAN ANDA: GAGAL!!!');
     end;
     gotoxy(19,20);
     writeln(score,'% OK');
     gotoxy(19,21);
     write('Mau main lagi?(y/t)');
     read(ulang);
   until(ulang='T')or(ulang='t');
   readln;
end.



