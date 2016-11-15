% Facts
:- consult(mayores).

% Facilidad de invertir
facilidad_invercion(Fac_neg,Apr_neg,Pais):-
  (   Fac_neg =:= 100, Apr_neg =:= 0 ->
        fac_neg(Pais)
  ;   Fac_neg =:= 0, Apr_neg =:= 100 ->
        apt_neg(Pais)
  ).
