lire(X) :- write('donner un entier'), nl, read(X), nl, write('votre entier est '), write(X),nl,nl.
calcul_carre(X,Y):- Y is X*X.
ecrire_resultat(X,Y) :- write('le carre de'), write(X), write('est'),write(Y),nl,nl.
aller :- lire(X), calcul_carre(X,Y), ecrire_resultat(X,Y).
carre :- write('donner un entier'), nl, read(X), nl, write('votre entier est '), write(X),nl,nl, Y is X*X, write('le carre de'), write(X), write('est'),write(Y),nl,nl.
carre_loop :- write('donner un entier'), nl, read(X),(X =\= 0 -> write('votre carre est '), Y is X*X, write(Y),nl,carre_loop;write('entier 0, en train d abandonner...'),nl).
factorial(N, F):- N<2, F=1.

factorial(N, F) :- 
     M is N-1, 
     factorial(M,T), 
     F is N*T.