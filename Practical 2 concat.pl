conc([],L,L).
conc([H|T],L,[H|R]):- conc(T,L,R).



# Queries : 
?- conc([a,b], [c,d], X).          % X = [a, b, c, d]
?- conc([], [1,2,3], X).           % X = [1, 2, 3]
?- conc([1,2,3], [], X).           % X = [1, 2, 3]
?- conc([x], [y,z], X).            % X = [x, y, z]
?- conc(X, Y, [1,2]).              % Finds all ways to split [1,2] into two lists
