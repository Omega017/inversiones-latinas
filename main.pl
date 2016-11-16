% Facts
:- consult(mayores).

fn(X):-fac_neg(Pais),send(X,selection,Pais).

cf(X):-prot_inv(Pais),send(X,selection,Pais).

cf2(X):-obt_elect(Pais),send(X,selection,Pais).

cf3(X):-com_trs(Pais),send(X,selection,Pais).
cf4(X):-perm_const(Pais),send(X,selection,Pais).
an(X):-apt_neg(Pais),send(X,selection,Pais).

la4(X,Pais1,Pais2):-
  proteccion_de_los_inversionistas_minoritarios(Pais1,Valor1),
    proteccion_de_los_inversionistas_minoritarios(Pais2,Valor2),
  (
     Valor1 > Valor2 ->
      send(X,selection,Pais1)

  ;   send(X,selection,Pais2)
  ).

  la5(X,Pais1,Pais2):-
    pago_de_impuestos(Pais1,Valor1),
      pago_de_impuestos(Pais2,Valor2),
    (
       Valor1 > Valor2 ->
        send(X,selection,Pais1)

    ;   send(X,selection,Pais2)
    ).

    la6(X,Pais1,Pais2):-
      comercio_transfronterizo(Pais1,Valor1),
        comercio_transfronterizo(Pais2,Valor2),
      (
         Valor1 > Valor2 ->
          send(X,selection,Pais1)

      ;   send(X,selection,Pais2)
      ).




%el codigo para mostrar en consola el resultado es
%mostrarMsg(X1):-writeln('algun mensaje'),writeln(X1).
%
%****************************LO QUE FALTA****************************
% Aca iran las funciones que hacen la logica del programa (calcular
% cada pregunta)


%************
%Prueba de coneccion de preguntas para bryancitogeocito
solve(Texto1) :-
  facilidad_de_hacer_negocios(X_PAIS,Texto1),
  writeln(X_PAIS).




%Pregunta 1

%Pregunta 1

abrirP1():- new(P1, dialog('Pregunta 1')),

	new(Etiqueta1, label(nombre,'Pregunta 1: Pais que brinda mas facilidades para invertir?')),
	new(Texto1, text_item('El resultado es')),

	new(Boton0, button('Generar', message(@prolog,fn,Texto1))),


	send(P1, append, Etiqueta1),
	send(P1, append, Boton0),
	send(P1, append, Texto1),


	send(P1,open).








abrirP2():- new(P2, dialog('Pregunta 2')),
	%Pregunta 2

  new(Etiqueta1, label(nombre,'Pregunta 2: Pais mas seguro para invertir')),
	new(Texto1, text_item('El resultado es')),

	new(Boton0, button('Generar', message(@prolog,cf,Texto1))),


	send(P2, append, Etiqueta1),
	send(P2, append, Boton0),
	send(P2, append, Texto1),


	send(P2,open).



abrirP3():- new(P3, dialog('Pregunta 3')),
	%Pregunta 3
	new(Etiqueta3, label(nombre,'Pregunta 3: Pais con mayor estabilidad en inversiones?')),
  new(Texto1, text_item('El resultado es')),

	new(Boton0, button('Generar', message(@prolog,cf,Texto1))),


	send(P3, append, Etiqueta3),
	send(P3, append, Boton0),
	send(P3, append, Texto1),

	send(P3, open).

abrirP4():- new(P4, dialog('Pregunta 4')),
	%Pregunta 4
	new(Etiqueta4, label(nombre,'Pregunta 4: Cual de los dos paises brinda mas facilidades para invertir?')),
	new(Texto1, text_item('Ingrese Pais 1')),
	new(Texto2, text_item('Ingrese Pais 2')),
	new(Texto3, text_item('El resultado es')),

	new(Boton0, button('Generar', message(@prolog,la4,Texto3,Texto1?selection,Texto2?selection))),


	send(P4, append, Etiqueta4),
	send(P4, append, Texto1),
	send(P4, append, Texto2),
	send(P4, append, Boton0),
	send(P4, append, Texto3),
	send(P4, open).

abrirP5():- new(P5, dialog('Pregunta 5')),
	%Pregunta 5
	new(Etiqueta5, label(nombre,'Pregunta 5: Cual de los dos paises es mas seguro para invertir?')),
  new(Texto1, text_item('Ingrese Pais 1')),
	new(Texto2, text_item('Ingrese Pais 2')),
	new(Texto3, text_item('El resultado es')),

	new(Boton0, button('Generar', message(@prolog,la5,Texto3,Texto1?selection,Texto2?selection))),


	send(P5, append, Etiqueta5),
	send(P5, append, Texto1),
	send(P5, append, Texto2),
	send(P5, append, Boton0),
	send(P5, append, Texto3),
	send(P5, open).

abrirP6():- new(P6, dialog('Pregunta 6')),
	%Pregunta 6
	new(Etiqueta6, label(nombre,'Pregunta 6: Cual de los dos paises tiene mayor estabilidad para invertir?')),
  new(Texto1, text_item('Ingrese Pais 1')),
	new(Texto2, text_item('Ingrese Pais 2')),
	new(Texto3, text_item('El resultado es')),

	new(Boton0, button('Generar', message(@prolog,la6,Texto3,Texto1?selection,Texto2?selection))),


	send(P6, append, Etiqueta6),
	send(P6, append, Texto1),
	send(P6, append, Texto2),
	send(P6, append, Boton0),
	send(P6, append, Texto3),
	send(P6, open).








:- new(Dialogo, dialog('Taller 3')),

	%Pregunta 1

	new(Etiqueta1, label(nombre,'Pregunta 1: Pais que brinda mas facilidades para invertir')),
	new(Boton1, button('Pregunta 1', message(@prolog,abrirP1))),
	send(Dialogo, append, Etiqueta1),
	send(Dialogo, append, Boton1),

	%Pregunta 2

	new(Etiqueta2, label(nombre,'Pregunta 2: Pais mas seguro para invertir')),
	new(Boton2, button('Pregunta 2', message(@prolog,abrirP2))),
	send(Dialogo, append, Etiqueta2),
	send(Dialogo, append, Boton2),


	%Pregunta 3

	new(Etiqueta3, label(nombre,'Pregunta 3: Pais con mayor estabilidad en inversiones')),
	new(Boton3, button('Pregunta 3', message(@prolog,abrirP3))),
	send(Dialogo, append, Etiqueta3),
	send(Dialogo, append, Boton3),

	%Pregunta 4

	new(Etiqueta4, label(nombre,'Pregunta 4: Cual de los dos paises brinda mas facilidades para invertir?')),
	new(Boton4, button('Pregunta 4', message(@prolog,abrirP4))),
	send(Dialogo, append, Etiqueta4),
	send(Dialogo, append, Boton4),

	%Pregunta 5
	new(Etiqueta5, label(nombre,'Pregunta 5: Cual de los dos paises es mas seguro para invertir?')),
	new(Boton5, button('Pregunta 5', message(@prolog,abrirP5))),
	send(Dialogo, append, Etiqueta5),
	send(Dialogo, append, Boton5),

	%Pregunta 6

	new(Etiqueta6, label(nombre,'Pregunta 6: Cual de los dos paises tiene mayor estabilidad para invertir?')),
	new(Boton6, button('Pregunta 6', message(@prolog,abrirP6))),
	send(Dialogo, append, Etiqueta6),
	send(Dialogo, append, Boton6),



	send(Dialogo, open).
