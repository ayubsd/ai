max(X, Y, M) :- X > Y, M = X.
max(X, Y, M) :- X < Y, M = Y.
max(X, Y, M) :- X =:= Y, M = X.   % Handles the case when X equals Y



# Queries 
?- max(5, 3, M).      % M = 5
?- max(2, 7, M).      % M = 7
?- max(4, 4, M).      % M = 4
