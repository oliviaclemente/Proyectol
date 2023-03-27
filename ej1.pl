% Base de conocimientos
enfermedad(infeccion_oido, 0.5, ciprofloxacina).
enfermedad(gripe, 0.2, oseltamivir).

% Reglas
diagnostico(Enfermedad) :-
    enfermedad(Enfermedad, _, _).

medicamento(infeccion_oido, Medicamento) :-
    enfermedad(infeccion_oido, _, Medicamento).
medicamento(gripe, Medicamento) :-
    enfermedad(gripe, _, Medicamento).

% Consulta
?- write('¿Cuál es la enfermedad?'), nl,
   read(Enfermedad),
   diagnostico(Enfermedad),
   write('El medicamento recomendado es: '),
   medicamento(Enfermedad, Medicamento),
   write(Medicamento), nl.
