maxList([M], M).              
maxList([H|T], M) :-         
    maxList(T, M1),
    (H > M1 -> M = H; M = M1).  


# Queries
?- maxList([3, 5, 2, 8, 1], Max).   
?- maxList([4, 9, 12, 7], Max).    
?- maxList([2, 2, 2], Max).         
