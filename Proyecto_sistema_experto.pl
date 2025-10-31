%Proyecto sistema experto
%Hecho por: Angel Ariel Rodriguez Arellano

iniciar :-
    write('--Sistema experto de dinosaurios--'), nl,
    write('Responda las siguientes preguntas con si o no'), nl,
    write('--------------------------------'), nl,
    analisis(_),
    cerrar.

%Dinosaurios
analisis(adamantisaurio):- adamantisaurio, !.
analisis(albertaceratops):- albertaceratops, !.
analisis(anquilosaurio):- anquilosaurio, !.
analisis(apatosaurio):- apatosaurio, !.
analisis(baryonyx):- baryonyx, !.
analisis(brachiosaurio):- brachiosaurio, !.
analisis(carnotauro):- carnotauro, !.
analisis(coelophysis):- coelophysis, !.
analisis(compsognathus):- compsognathus, !.
analisis(eoraptor):- eoraptor, !.
analisis(espinosaurio):- espinosaurio, !.
analisis(estegoceras):- estegoceras, !.
analisis(estegosaurio):- estegosaurio, !.
analisis(gallimimus):- gallimimus, !.
analisis(giganotosaurio):- giganotosaurio, !.
analisis(herrerasaurio):- herrerasaurio, !.
analisis(iguanodon):- iguanodon, !.
analisis(lesothosaurio):- lesothosaurio, !.
analisis(minmi):- minmi, !.
analisis(ornithomimus):- ornithomimus, !.
analisis(oviraptor):- oviraptor, !.
analisis(paquicefalosaurio):- paquicefalosaurio, !.
analisis(plateosaurio):- plateosaurio, !.
analisis(protoceratops):- protoceratops, !.
analisis(tiranosaurio):- tiranosaurio, !.
analisis(triceratops):- triceratops, !.
analisis(troodon):- troodon, !.
analisis(velociraptor):- velociraptor, !.
analisis(wannanosaurio):- wannanosaurio, !.
analisis(desconocido):- desconocido, !.

%Hechos de los dinosaurios
adamantisaurio :-
    verificar('Saurischia'),
    verificar('Sauropodomorpha'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Sur'),
    verificar('100 toneladas'),
    write('El dinosaurio que buscas es Adamantisaurio (Adamantisaurus mezzalirai)'), nl.

albertaceratops :-
    verificar('Ornithischia'),
    verificar('Marginocephalia'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('498 kg'),
    write('El dinosaurio que buscas es Albertaceratops (Albertaceratops nesmoi)'), nl.

anquilosaurio :-
    verificar('Ornithischia'),
    verificar('Thyreophora'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('6 toneladas'),
    write('El dinosaurio que buscas es Anquilosaurio (Ankylosaurus magniventris)'), nl.

apatosaurio :-
    verificar('Saurischia'),
    verificar('Sauropodomorpha'),
    verificar('Herbivoro'),
    verificar('Jurasico'),
    verificar('America del Norte'),
    verificar('16 toneladas'),
    write('El dinosaurio que buscas es Apatosaurio (Apatosaurus ajax)'), nl.

baryonyx :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('Europa'),
    verificar('2 toneladas'),
    write('El dinosaurio que buscas es Baryonyx (Baryonyx walkeri)'), nl.

brachiosaurio :-
    verificar('Saurischia'),
    verificar('Sauropodomorpha'),
    verificar('Herbivoro'),
    verificar('Jurasico'),
    verificar('Africa, Europa y America del Norte'),
    verificar('50 toneladas'),
    write('El dinosaurio que buscas es Brachiosaurio (Brachiosaurus altithorax)'), nl.

carnotauro :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('America del Sur'),
    verificar('1 tonelada'),
    write('El dinosaurio que buscas es Carnotauro (Carnotaurus sastrei)'), nl.

coelophysis :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Triasico'),
    verificar('America del Norte'),
    verificar('25 kg'),
    write('El dinosaurio que buscas es Coelophysis (Coelophysis bauri)'), nl.

compsognathus :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Jurasico'),
    verificar('Europa'),
    verificar('4 kg'),
    write('El dinosaurio que buscas es Compsognathus (Compsognathus longipes)'), nl.

eoraptor :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Omnivoro'),
    verificar('Triasico'),
    verificar('America del Sur'),
    verificar('10 kg'),
    write('El dinosaurio que buscas es Eoraptor (Eoraptor lunensis)'), nl.

espinosaurio :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('Norte de Africa'),
    verificar('6 toneladas'),
    write('El dinosaurio que buscas es Espinosaurio (Spinosaurus aegyptiacus)'), nl.

estegoceras :-
    verificar('Ornithischia'),
    verificar('Marginocephalia'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('77 kg'),
    write('El dinosaurio que buscas es Estegoceras (Stegoceras validum)'), nl.

estegosaurio :-
    verificar('Ornithischia'),
    verificar('Thyreophora'),
    verificar('Herbivoro'),
    verificar('Jurasico'),
    verificar('America del Norte'),
    verificar('5 toneladas'),
    write('El dinosaurio que buscas es Estegosaurio (Stegosaurus armatus)'), nl.

gallimimus :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Omnivoro'),
    verificar('Cretacico'),
    verificar('Asia'),
    verificar('400 kg'),
    write('El dinosaurio que buscas es Gallimimus (Gallimimus bullatus)'), nl.

giganotosaurio :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('America del Sur'),
    verificar('8 toneladas'),
    write('El dinosaurio que buscas es Giganotosaurio (Giganotosaurus carolinii)'), nl.

herrerasaurio :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Triasico'),
    verificar('America del Sur'),
    verificar('210 kg'),
    write('El dinosaurio que buscas es Herrerasaurio (Herrerasaurus ischigualastensis)'), nl.

iguanodon :-
    verificar('Ornithischia'),
    verificar('Ornithopoda'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Norte, Asia y Europa'),
    verificar('4 toneladas'),
    write('El dinosaurio que buscas es Iguanodon (Iguanodon bernissartensis)'), nl.

lesothosaurio :-
    verificar('Ornithischia'),
    verificar('Ornithopoda'),
    verificar('Herbivoro'),
    verificar('Triasico'),
    verificar('Africa'),
    verificar('10 kg'),
    write('El dinosaurio que buscas es Lesothosaurio (Lesothosaurus diagnosticus)'), nl.

megalosaurio :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Jurasico'),
    verificar('Europa'),
    verificar('2 toneladas'),
    write('El dinosaurio que buscas es Megalosaurio (Megalosaurus bucklandii)'), nl.

minmi :-
    verificar('Ornithischia'),
    verificar('Thyreophora'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('Australia'),
    verificar('362 kg'),
    write('El dinosaurio que buscas es Minmi (Minmi paravertebra)'), nl.

ornithomimus :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Omnivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('158 kg'),
    write('El dinosaurio que buscas es Ornithomimus (Ornithomimus velox)'), nl.

oviraptor :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('Asia'),
    verificar('45 kg'),
    write('El dinosaurio que buscas es Oviraptor (Oviraptor philoceratops)'), nl.

paquicefalosaurio :-
    verificar('Ornithischia'),
    verificar('Marginocephalia'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('430 kg'),
    write('El dinosaurio que buscas es Paquicefalosaurio (Pachycephalosaurus wyomingensis)'), nl.

plateosaurio :-
    verificar('Saurischia'),
    verificar('Sauropodomorpha'),
    verificar('Herbivoro'),
    verificar('Triasico'),
    verificar('Europa'),
    verificar('4 toneladas'),
    write('El dinosaurio que buscas es Plateosaurio (Plateosaurus engelhardti)'), nl.

protoceratops :-
    verificar('Ornithischia'),
    verificar('Marginocephalia'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('Asia'),
    verificar('453 kg'),
    write('El dinosaurio que buscas es Protoceratops (Protoceratops andrewsi)'), nl.

tiranosaurio :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('7 toneladas'),
    write('El dinosaurio que buscas es Tiranosaurio (Tyrannosaurus rex)'), nl.

triceratops :-
    verificar('Ornithischia'),
    verificar('Marginocephalia'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('America del Norte'),
    verificar('6 toneladas'),
    write('El dinosaurio que buscas es Triceratops (Triceratops horridus)'), nl.

troodon :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('Asia y America del Norte'),
    verificar('6 kg'),
    write('El dinosaurio que buscas es Troodon (Troodon formosus)'), nl.

velociraptor :-
    verificar('Saurischia'),
    verificar('Theropoda'),
    verificar('Carnivoro'),
    verificar('Cretacico'),
    verificar('Asia'),
    verificar('18 kg'),
    write('El dinosaurio que buscas es Velociraptor (Velociraptor mongoliensis)'), nl.

wannanosaurio :-
    verificar('Ornithischia'),
    verificar('Marginocephalia'),
    verificar('Herbivoro'),
    verificar('Cretacico'),
    verificar('Asia'),
    verificar('3 kg'),
    write('El dinosaurio que buscas es Wannanosaurio (Wannanosaurus yansiensis)'), nl.
%Caso no se encuentra el dinosaurio
desconocido :-
    write('El dinosaurio que buscas es desconocido.'), nl.

%Preguntar
preguntar(Caracteristica) :-
    write('El dinosaurio tiene la siguiente caracteristica: '),
    write(Caracteristica), write('?'), nl,
    read(Respuesta), nl,
    ( (Respuesta == si ; Respuesta == s)
      ->
       assert(si(Caracteristica)) ;
       assert(no(Caracteristica)), fail ).
:- dynamic si/1, no/1.

verificar(Caracteristica) :-
    si(Caracteristica) -> true; (no(Caracteristica) -> fail; preguntar(Caracteristica)).

cerrar :- retract(si(_)), fail.
cerrar :- retract(no(_)), fail.
cerrar.
