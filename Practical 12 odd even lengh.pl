evenLength([]).
evenLength([_|[_|List]]):-
evenLength(List).

oddLength([_]).
oddLength([_|[_|List]]):-
oddLength(List).
