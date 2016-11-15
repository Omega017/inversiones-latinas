% Facts
:- [facts].


mostrarMsg:-writeln('Se presiono el boton').

%****************************LO QUE FALTA****************************
% Aca iran las funciones que hacen la logica del programa (calcular
% cada pregunta)


%************
%Prueba de coneccion de preguntas para bryancitogeocito
solve(Texto1) :-
  facilidad_de_hacer_negocios(X_PAIS,Texto1),
  writeln(X_PAIS).





%Pregunta 1

abrirP1():- new(P1, dialog('Pregunta 1')),

	new(Etiqueta1, label(nombre,'Pregunta 1: Pais que brinda mas facilidades para invertir?')),
	new(Texto1, text_item('Ingrese el criterio A')),
	new(Texto2, text_item('Ingrese el criterio B')),
	new(Texto3, text_item('El pais con dichos criterios es')),
	new(Boton0, button('Pais con mas facilidades', message(@prolog,solve,47))),
	new(Boton1, button('Pais que satisface A y B', message(@prolog,mostrarMsg))),


	send(P1, append, Etiqueta1),
	send(P1, append, Texto1),
	send(P1, append, Texto2),
	%send(P1, append, Texto3),
	send(P1, append, Boton0),
	send(P1, append, Boton1),
	send(P1,open).


abrirP2():- new(P2, dialog('Pregunta 2')),
	%Pregunta 2

	new(Etiqueta2, label(nombre,'Pregunta 2: Pais mas seguro para invertir?')),
	new(Texto4, text_item('Ingrese el criterio C')),
	new(Texto5, text_item('Ingrese el criterio F')),
	%new(Texto6, text_item('El paos con dichos criterios es')),
	new(Boton2, button('Pais mas seguro para invertir', message(@prolog,mostrarMsg))),
	new(Boton22, button('Pais que satisface C y F', message(@prolog,mostrarMsg))),


	send(P2, append, Etiqueta2),
	send(P2, append, Texto4),
	send(P2, append, Texto5),
	%send(P2, append, Texto6),
	send(P2, append, Boton2),
	send(P2, append, Boton22),
	send(P2, open).

abrirP3():- new(P3, dialog('Pregunta 3')),
	%Pregunta 3
	new(Etiqueta3, label(nombre,'Pregunta 3: Pais con mayor estabilidad en inversiones?')),
	%new(Texto9, text_item('El pais con mayor estabilidad en inversiones es')),
	new(Boton3, button('Ver pais', message(@prolog,mostrarMsg))),

	send(P3, append, Etiqueta3),
%	send(P3, append, Texto9),
	send(P3, append, Boton3),
	send(P3, open).

abrirP4():- new(P4, dialog('Pregunta 4')),
	%Pregunta 4
	new(Etiqueta4, label(nombre,'Pregunta 4: Cual de los dos paises brinda mas facilidades para invertir?')),
	new(Texto10, text_item('Ingrese el pais 1')),
	new(Texto11, text_item('Ingrese el pais 2')),
%	new(Texto12, text_item('El pais que brinda m�s facilidades para
%	invertir es')),
	new(Boton4, button('Ingresar', message(@prolog,mostrarMsg))),

	send(P4, append, Etiqueta4),
	send(P4, append, Texto10),
	send(P4, append, Texto11),
%	send(P4, append, Texto12),
	send(P4, append, Boton4),
	send(P4, open).

abrirP5():- new(P5, dialog('Pregunta 5')),
	%Pregunta 5
	new(Etiqueta5, label(nombre,'Pregunta 5: Cual de los dos paises es mas seguro para invertir?')),
	new(Texto13, text_item('Ingrese el pa�s 1')),
	new(Texto14, text_item('Ingrese el pa�s 2')),
%	new(Texto15, text_item('El pais mas seguro para invertir es')),
	new(Boton5, button('Ingresar', message(@prolog,mostrarMsg))),

	send(P5, append, Etiqueta5),
	send(P5, append, Texto13),
	send(P5, append, Texto14),
	%send(P5, append, Texto15),
	send(P5, append, Boton5),
	send(P5, open).

abrirP6():- new(P6, dialog('Pregunta 6')),
	%Pregunta 6
	new(Etiqueta6, label(nombre,'Pregunta 6: Cual de los dos paises tiene mayor estabilidad para invertir?')),
	new(Texto16, text_item('Ingrese el pais 1')),
	new(Texto17, text_item('Ingrese el pais 2')),
%	new(Texto18, text_item('El pais que brinda mayor estabilidad
%	para invertir es')),
	new(Boton6, button('Ingresar', message(@prolog,mostrarMsg))),

	send(P6, append, Etiqueta6),
	send(P6, append, Texto16),
	send(P6, append, Texto17),
	%send(P6, append, Texto18),
	send(P6, append, Boton6),
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
