program NilaiMahasiswa;
uses crt;
  var na,tgs,uts,uas,kd : real;
begin
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
  readln;
end.
