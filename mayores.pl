% Facts
:- [facts].

% Mayor facilidad de negocios
fac_neg(Pais):-
  facilidad_de_hacer_negocios(Pais, _),
  not( hayMayores_fac_neg(Pais)), !.
hayMayores_fac_neg(Pais):-
  facilidad_de_hacer_negocios(Pais, N),
  facilidad_de_hacer_negocios(C, M), C\=Pais, M > N.

% Mayor comparación filtrada
comp_filt(Pais):-
  comparacion_filtrada(Pais, _),
  not( hayMayores_comp_filt(Pais)), !.
hayMayores_comp_filt(Pais):-
  comparacion_filtrada(Pais, N),
  comparacion_filtrada(C, M), C\=Pais, M > N.

% Mayor Apertura de un negocio
apt_neg(Pais):-
  apertura_de_un_negocio(Pais, _),
  not( hayMayores_apt_neg(Pais)), !.
hayMayores_apt_neg(Pais):-
  apertura_de_un_negocio(Pais, N),
  apertura_de_un_negocio(C, M), C\=Pais, M > N.


% Mayor manejo de permisos de construccion
perm_const(Pais):-
  manejo_de_permisos_de_construccion(Pais, _),
  not( hayMayores_perm_const(Pais)), !.
hayMayores_perm_const(Pais):-
  manejo_de_permisos_de_construccion(Pais, N),
  manejo_de_permisos_de_construccion(C, M), C\=Pais, M > N.

% Cumplimientos de contratos
cmp_cont(Pais):-
  cumplimiento_de_contratos(Pais, _),
  not( hayMayores_cmp_cont(Pais)), !.
hayMayores_cmp_cont(Pais):-
  cumplimiento_de_contratos(Pais, N),
  cumplimiento_de_contratos(C, M), C\=Pais, M > N.

% Obtencion de electricidad
obt_elect(Pais):-
  obtencion_de_electricidad(Pais, _),
  not( hayMayores_obt_elect(Pais)), !.
hayMayores_obt_elect(Pais):-
  obtencion_de_electricidad(Pais, N),
  obtencion_de_electricidad(C, M), C\=Pais, M > N.

% Registros de propiedades
reg_prop(Pais):-
  registro_de_propiedades(Pais, _),
  not( hayMayores_reg_prop(Pais)), !.
hayMayores_reg_prop(Pais):-
  registro_de_propiedades(Pais, N),
  registro_de_propiedades(C, M), C\=Pais, M > N.

% Obtencion de credito
obt_cred(Pais):-
  obtencion_de_credito(Pais, _),
  not( hayMayores_obt_cred(Pais)), !.
hayMayores_obt_cred(Pais):-
  obtencion_de_credito(Pais, N),
  obtencion_de_credito(C, M), C\=Pais, M > N.

% Proteccion de los inversionistas minoritarios
prot_inv(Pais):-
  proteccion_de_los_inversionistas_minoritarios(Pais, _),
  not( hayMayores_prot_inv(Pais)), !.
hayMayores_prot_inv(Pais):-
  proteccion_de_los_inversionistas_minoritarios(Pais, N),
  proteccion_de_los_inversionistas_minoritarios(C, M), C\=Pais, M > N.

% Pago de impuestos
pag_impt(Pais):-
  pago_de_impuestos(Pais, _),
  not( hayMayores_pag_impt(Pais)), !.
hayMayores_pag_impt(Pais):-
  pago_de_impuestos(Pais, N),
  pago_de_impuestos(C, M), C\=Pais, M > N.

% Comercio transfronterizo
com_trs(Pais):-
  comercio_transfronterizo(Pais, _),
  not( hayMayores_com_trs(Pais)), !.
hayMayores_com_trs(Pais):-
  comercio_transfronterizo(Pais, N),
  comercio_transfronterizo(C, M), C\=Pais, M > N.

% Resolucion de insolvencia
res_ins(Pais):-
  resolucion_de_la_insolvencia(Pais, _),
  not( hayMayores_res_ins(Pais)), !.
hayMayores_res_ins(Pais):-
  resolucion_de_la_insolvencia(Pais, N),
  resolucion_de_la_insolvencia(C, M), C\=Pais, M > N.

%--------------------------------------------%
