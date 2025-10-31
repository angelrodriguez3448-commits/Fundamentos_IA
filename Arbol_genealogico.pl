%Angel Ariel Rodriguez Arellano

%Hechos
es_hombre(arthur).
es_hombre(bill).
es_hombre(teddy).
es_hombre(louis).
es_hombre(percy).
es_hombre(goerge).
es_hombre(fred).
es_hombre(harry).
es_hombre(james).
es_hombre(albus).
es_hombre(ron).
es_hombre(hugo).

es_mujer(mollyP).
es_mujer(fleur).
es_mujer(victoire).
es_mujer(dominique).
es_mujer(audrey).
es_mujer(lucy).
es_mujer(molly).
es_mujer(angelina).
es_mujer(roxanne).
es_mujer(ginny).
es_mujer(lily).
es_mujer(hermione).
es_mujer(rose).

%Relaciones
%Relacion progenitor_de(X, Y) X es el progenitor, Y es el hijo
progenitor_de(arthur, bill).
progenitor_de(arthur, percy).
progenitor_de(arthur, goerge).
progenitor_de(arthur, ron).
progenitor_de(arthur, ginny).
progenitor_de(mollyP, bill).
progenitor_de(mollyP, percy).
progenitor_de(mollyP, goerge).
progenitor_de(mollyP, ron).
progenitor_de(mollyP, ginny).

progenitor_de(bill, victoire).
progenitor_de(bill, dominique).
progenitor_de(bill, louis).
progenitor_de(fleur, victoire).
progenitor_de(fleur, dominique).
progenitor_de(fleur, louis).

progenitor_de(percy, lucy).
progenitor_de(percy, molly).
progenitor_de(audrey, lucy).
progenitor_de(audrey, molly).

progenitor_de(goerge, fred).
progenitor_de(goerge, roxanne).
progenitor_de(angelina, fred).
progenitor_de(angelina, roxanne).

progenitor_de(harry, james).
progenitor_de(harry, lily).
progenitor_de(harry, albus).
progenitor_de(ginny, james).
progenitor_de(ginny, lily).
progenitor_de(ginny, albus).

progenitor_de(ron, hugo).
progenitor_de(ron, rose).
progenitor_de(hermione, hugo).
progenitor_de(hermione, rose).

%Relacion pareja_de(X, Y) X es hombre, Y es mujer
pareja_de(arthur, mollyP).
pareja_de(bill, fleur).
pareja_de(percy, audrey).
pareja_de(goerge, angelina).
pareja_de(harry, ginny).
pareja_de(ron, hermione).

%Reglas
padre(X, Y) :- es_hombre(X), progenitor_de(X, Y).
madre(X, Y) :- es_mujer(X), progenitor_de(X, Y).

hermano(X, Y) :- es_hombre(X), padre(Z, X), madre(W, Y), pareja_de(Z, W), not(X == Y).
hermana(X, Y) :- es_mujer(X), padre(Z, X), madre(W, Y), pareja_de(Z, W), not(X == Y).

esposo(X, Y) :- es_hombre(X), pareja_de(X, Y).
esposa(X, Y) :- es_mujer(X), pareja_de(Y, X).

suegro(X, Y) :- es_hombre(X), progenitor_de(X, Z), (pareja_de(Y, Z); pareja_de(Z, Y)).
suegra(X, Y) :- es_mujer(X), progenitor_de(X, Z), (pareja_de(Y, Z); pareja_de(Z, Y)).

yerno(X, Y) :- progenitor_de(Y, Z), esposo(X, Z).
nuera(X, Y) :- progenitor_de(Y, Z), esposa(X, Z).

cunnado(X, Y) :- esposo(X, Z), hermana(Z, Y).
cunnada(X, Y) :- esposa(X, Z), hermano(Z, Y).

abuelo(X, Y) :- padre(X, Z), progenitor_de(Z, Y).
abuela(X, Y) :- madre(X, Z), progenitor_de(Z, Y).

nieto(X, Y) :- es_hombre(X), progenitor_de(Y, Z), progenitor_de(Z, X).
nieta(X, Y) :- es_mujer(X), progenitor_de(Y, Z), progenitor_de(Z, X).

tio(X, Y) :- progenitor_de(Z, Y), (hermano(X, Z); cunnado(X, Z)).
tia(X, Y) :- progenitor_de(Z, Y), (hermana(X, Z); cunnada(X, Z)).

primo(X, Y) :- es_hombre(X), progenitor_de(Z, Y), tio(Z, X), tia(W, X), pareja_de(Z, W).
prima(X, Y) :- es_mujer(X), progenitor_de(Z, Y), tio(Z, X), tia(W, X), pareja_de(Z, W).
