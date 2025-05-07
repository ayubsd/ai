fib(0, 0).          % Base case: fib(0) = 0
fib(1, 1).          % Base case: fib(1) = 1
fib(N, T) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, T1),
    fib(N2, T2),
    T is T1 + T2.


# Queries
?- fib(0, F).      % F = 0
?- fib(1, F).      % F = 1
?- fib(5, F).      % F = 5
?- fib(7, F).      % F = 13
