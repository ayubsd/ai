% Family tree representation
parent(john, mary).
parent(john, peter).
parent(mary, alice).
parent(peter, bob).
parent(robert, john).
parent(robert, linda).
parent(susan, mary).
parent(susan, peter).

male(john).
male(peter).
male(bob).
male(robert).

female(mary).
female(alice).
female(linda).
female(susan).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(x).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(X).
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(x).
ancestor(X, Y) :- parent(X, Y).

ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

aunt(X, Y) :- sibling(X, Z), parent(Z, Y), female(X).
uncle(X, Y) :- sibling(X, Z), parent(Z, Y), male(X).
