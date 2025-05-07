evenLength([]).                     % Base case: an empty list has an even length (0).
evenLength([_|[_|List]]) :-         % Recursive case: skips two elements and continues with the rest of the list.
    evenLength(List).

oddLength([_]).                      % Base case: a list with one element has an odd length.
oddLength([_|[_|List]]) :-          % Recursive case: skips two elements and continues with the rest of the list.
    oddLength(List).

# Queries
?- evenLength([1, 2, 3, 4]).   % true
?- evenLength([1, 2, 3]).       % false
?- oddLength([1, 2, 3]).        % true
?- oddLength([1, 2, 3, 4]).     % false
