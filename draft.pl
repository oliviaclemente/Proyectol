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
nl. 
