Function Pol(X:real; N:real;): real;
Var  i : integer;  H : Real; 
begin
      H:=1;
      For i:=1 to N do 
      begin
           H := H * X; 
      End;
       Pol := H; 
End; 