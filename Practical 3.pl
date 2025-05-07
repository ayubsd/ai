% reverse_list(InputList, ReversedList)
reverse_list([], []).
reverse_list([Head|Tail], Result) :-
    reverse_list(Tail, ReversedTail),
    append_list(ReversedTail, [Head], Result).

% append_list(List1, List2, Result)
append_list([], L, L).
append_list([H|T], L, [H|R]) :-
    append_list(T, L, R).


# Queries:
?- reverse_list([1,2,3], X).        % X = [3,2,1]
?- reverse_list([a,b,c], Result).   % Result = [c,b,a]
?- reverse_list([], R).             % R = []
