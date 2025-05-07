memb(X,[X|_]).
memb(X,[_|T]):- memb(X,T).


# Queries
?- memb(3, [1, 2, 3, 4]).     % true
?- memb(a, [b, c, d]).        % false
?- memb(X, [1, 2, 3]).        % X = 1 ; X = 2 ; X = 3
