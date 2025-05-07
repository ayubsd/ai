delete(1, [H|T], T).            % Base case: delete the first element (head).
delete(N, [H|T], [H|R]) :-       % Recursive case: traverse the list and remove the N-th element.
    N > 1,                       % Ensure the position N is greater than 1.
    N1 is N - 1,                 % Decrease the position by 1.
    delete(N1, T, R).            


# Queries
?- delete(3, [1, 2, 3, 4, 5], Result).
?- delete(1, [10, 20, 30], Result).  
?- delete(2, [5, 10, 15], Result).     
