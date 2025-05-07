sumList([], 0).           % Base case: the sum of an empty list is 0
sumList([H|T], S) :-     % Recursive case: sum the head and the sum of the tail
    sumList(T, S1), 
    S is H + S1.


# Queries
?- sumList([1, 2, 3, 4], S).    % S = 10
?- sumList([10, 20, 30], S).    % S = 60
?- sumList([], S).              % S = 0
