%Ejemplo 'Knowledge Base' con 5 enfermedades 
% //FACTS// 

% Otitis 
sintoma(otitis,[dolor_de_oido,fiebre,otorrea,vertigo]).
tratamiento(otitis,antibiotico).
departamento(Otitis,Otorrinolaringologo(unidades_especializadas([Otologia(audicion),Rinologia(nariz),Faringologia(garganta),Laringologia(voz),])))

% Gripe 
sintoma(gripe,[dolor_de_cabeza,fiebre,malestar_general,dolores_articulares,dolores_musculares]).

tratamiento(gripe,reposo_e_hidratacion).
tratamiento(gripe,medicacion(paracetamol)).
       
departamento(Gripe,Medicina_Interna(unidades_especializadas(None)))

%  Osteoporosis 

sintoma(osteoporosis,[fracturas_vertebrales,microfracturas,dolor,aplastamientos_vertebrales]),

tratamiento(osteoporosis,[dieta(calcio, baja_proteinas),abstencion(tabaco),abstencion(alcohol),ejercicio_fisico]).

departamento(Osteoporosis,Endocrinologia_y_Nutricion(unidades_asistenciales[Unidad_de_]))

% Neumonia 

sintoma(neumonia, [tos_con_expectoracion_purulenta, dolor_torácico, fiebre_con_escalofríos]),

tratamiento (neumonia,[broncoscopia,serologia, tratamiento_intrevenoso_con_antibioticos]).

departamento(Neumonia,Neumologia(unidades_especializadas([Neumologia_Pediátrica,Neumologia_Intensiva,Neumologia_Respiratoria]))
% //RULES// 
%  Otitis
enfermedad(Otitis) :-
    sintoma(Enfermedad,[dolor_de_oido,fiebre,otorrea,vertigo]),

    tratamiento(Enfermedad,[antibiotico]),

    padece_sintomas(Paciente,[dolor_de_oido,fiebre,otorrea,vertigo]).


%  Gripe
enfermedad(Gripe) :-
    sintoma(Enfermedad,[dolor_de_cabeza,fiebre,malestar_general,dolores_articulares,dolores_musculares]),

    tratamiento(Enfermedad,[reposo_hidratacion,medicacion(paracetamol)]),

    padece_sintomas(Paciente,[dolor_de_cabeza, fiebre, malestar_general, dolores_musculares, dolores_articulares]).
% Osteoporosis

enfermedad(Enfermedad,Paciente) :-
    sintoma(Enfermedad,[fracturas_vertebrales,microfracturas,dolor,aplastamientos_vertebrales]),

    tratamiento(Enfermedad,[dieta(calcio, baja_proteinas),abstencion(tabaco),abstencion(alcohol),ejercicio_fisico]),
    
    padece_sintomas(Paciente,[fracturas_vertebrales, microfracturas, dolor, aplastamientos_vertebrales])

% Neumonia

enfermedad(neumania,) :-
    sintoma(Enfermedad,[tos_con_expectoracion_purulenta, dolor_torácico, fiebre_con_escalofríos ]),

    tratamiento (Enfermedad,[broncoscopia,serologia, tratamiento_intrevenoso_con_antibioticos ] ),

    padece_sintomas(Paciente,[tos_con_expectoracion_purulenta, dolor_torácico, fiebre_con_escalofríos ]).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%Draft

% Regla para determinar si el paciente padece los síntomas de alguna enfermedad

padece_sintomas(Paciente, Sintomas) :-
    forall(member(sintoma, Sintomas), padece_sintoma(Paciente,sintoma)).


% Regla para determinar si el paciente padece un síntoma en particular

padece_sintoma(Paciente, sintoma) :-
    sintoma(Enfermedad, sintoma),
    padece_enfermedad(Paciente, Enfermedad).


% Regla para determinar si el paciente padece una enfermedad en particular

padece_enfermedad(Paciente, Enfermedad) :-
    enfermedad(Enfermedad, Paciente).


