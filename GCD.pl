gcd(A, 0, A) :- A > 0.                  
gcd(A, B, R) :-                         
    B > 0,                               
    Rem is A mod B,                       
    gcd(B, Rem, R).                       


?- gcd(56, 98, R).   
?- gcd(48, 18, R).   
?- gcd(101, 103, R).  
