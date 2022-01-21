Program DesBin; 
uses crt,wincrt; 
Var 
 des,desi : integer; 
 Bin : String; 
Begin 
clrscr;
writeln('$=====================================$');
writeln('$      KONVERSI DESIMAL KE BINER$     $');
 Write('Masukkan Suatu Bilangan Desimal :');Readln(des); 
 desi:=des; 
 bin:=''; 
 repeat 
 if(des mod 2 = 0) then bin:='0'+bin 
 else bin:='1' + bin; 
 des:=des div 2; 
 until des=0; 
 writeln('(',desi,') desimal =',bin,' (Biner)'); 
 writeln('$=====================================$');
 Readln;
end.