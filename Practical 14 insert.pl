insert(I, 1, L, [I|L]).               % Base case: Insert element I at the first position.
insert(I, N, [H|T], [H|R]) :-          % Recursive case: Insert element in the tail of the list.
    N > 1,                             % Ensure the position N is greater than 1.
    N1 is N - 1,                       % Decrease the position by 1.
    insert(I, N1, T, R).               % Recursively insert in the tail (rest of the list).


# Queries
?- insert(10, 3, [1, 2, 3, 4, 5], Result).
?- insert(7, 1, [1, 2, 3], Result).  
?- insert(99, 5, [10, 20, 30, 40], Result).
