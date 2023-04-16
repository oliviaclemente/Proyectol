% FACTS 

% Otitis 
sintoma(otitis, dolor_de_oido).
sintoma(otitis, fiebre).
sintoma(otitis, otorrea).
sintoma(otitis, vertigo).
tratamiento(otitis, antibiotico).

% Gripe 
sintoma(gripe,dolor_de_cabeza).
sintoma(gripe,fiebre).
sintoma(gripe,malestar_general).
sintoma(gripe,dolores_musculares).
sintoma(gripe,dolores_articulares).
tratamiento(gripe,reposo_e_hidratacion).
tratamiento(gripe,medicacion(paracetamol)).

%  Osteoporosis 
sintoma(osteoporosis,fracturas_vertebreales)
sintoma(osteoporosis,microfracturas)
sintoma(osteoporosis,dolor)
sintoma(osteoporosis,aplastamietnos_vertebrales)
tratamiento(osteoporosis,dieta(calcio, baja_proteinas)).
tratamiento(osteoporosis,abstencion(tabaco)).
tratamiento(osteoporosis,abstencion(alcohol)).
tratamiento(osteoporosis,ejercicio_fisico).

% RULES 
%  Otitis
enfermedad(Enfermedad,Paciente) :-
    sintoma(Enfermedad,dolor_de_oido),
    sintoma(Enfermedad,fiebre),
    sintoma(Enfermedad,otorrea),
    sintoma(Enfermedad,vertigo),
    tratamiento(Enfermedad,antibiotico),
    padece_sintomas(Paciente,[dolor_de_oido, fiebre, otorrea, vertigo]).

%  Gripe
enfermedad(Enfermedad, Paciente) :-
    sintoma(Enfermedad,dolor_de_cabeza),
    sintoma(Enfermedad,fiebre),
    sintoma(Enfermedad,malestar_general),
    sintoma(Enfermedad,dolores_musculares),
    sintoma(Enfermedad,dolores_articulares),
    tratamiento(Enfermedad,reposo_hidratacion),
    tratamiento(Enfermedad,medicacion(paracetamol)),
    padece_sintomas(Paciente,[dolor_de_cabeza, fiebre, malestar_general, dolores_musculares, dolores_articulares]).

