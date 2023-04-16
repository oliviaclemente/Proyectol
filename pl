% FACTS 

% Otitis 
sintoma(otitis,dolor_de_oido).
sintoma(otitis,fiebre).
sintoma(otitis,otorrea).
sintoma(otitis,vertigo).
tratamiento(otitis,antibiotico).

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


