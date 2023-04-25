go :-
hypothesis(enfermedad),
write('Es probable que el paciente adolezca de: '),
nl,
write(enfermedad),
nl, 
undo.

/* Regla para determinar si el paciente padece una enfermedad en particular */
hypothesis(otitis)       :- otitis,!.
hypothesis(gripe)        :- gripe,!.
hypothesis(osteoporosis) :- osteoporosis,!.
hypothesis(neumonia)     :- neumonia,!.
hypothesis(unknown).   /* no diagnosis */

/* Regla para determinar si el paciente padece otitis */
otitis :-
verify(dolor_de_oido),
verify(fiebre),
verify(otorrea),
verify(vertigo),

write('Tratamiento/Medicación :'),
nl,
write('1:Antibiotico'),
nl,
write('Se recomienda acudir al Otorrinolaringologo '),
nl.

/* Regla para determinar si el paciente padece gripe */
gripe :-
verify(dolor_de_cabeza),
verify(fiebre),
varify(malestar_general),
verify(dolores_articulares),
verify(dolores_musculares),
nl. 

write('Tratamiento/Medicación:'),
nl,
write('Reposo e hidratación')
nl,
write('Medicación: Paracetamol'),

nl.


/* Regla para determinar si el paciente padece osteoporosis */
osteoporosis :-
verify(microfracturas),
verify(aplastamientos_vertebrales),
verify(dolor),
verify(fracturas_vertebrales),
nl.

write('Tratamiento/Medicación:'),
nl,
write('Dieta:calcio y bajas en proteínas'),
nl,
write('Abstención de tabaco y alcohol'),   
nl,
write('Ejercicio físico'),
nl,
write('Se recomienda acudir al Osteólogo')
nl.

/* Regla para determinar si el paciente padece neumonia */
neumonia :-
verify (tos_con_expectoracion_purulenta),
verify(dolor_torácico),
verify(fiebre_con_escalofríos)
nl.
write('Tratamiento/Medicación:'),
nl,
write('Broncoscopia'),
nl,
write('Serología'),
nl,
write('Tratamiento intravenoso con antibióticos')
nl.


      ask(Question):-
        write('Tiene el presente paciente los siguientes sintomas: '),
        write(Question),
        write('? ')
        read(Response),
        nl,
        (Response == yes ; Response == y)
->
assert (yes(Questions)):
assert(no(Question)),fail.
:- dynamic yes/1 no/1.
     /*How to verify something */
     verify(S):-
        (yes(S))
        ->
        fail, 
        asks(S).

/* undo all yes/no assertions*/
undo:- retract(res(_)),fail.
undo:-retract(no(_)),fail. 
undo.




