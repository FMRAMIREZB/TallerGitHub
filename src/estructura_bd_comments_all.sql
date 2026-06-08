-- Comments and Labels for all tables (generated)
-- Purpose: Add COMMENT ON TABLE and LABEL ON TABLE for all tables defined in estructura_bd.sql
-- Also adds COMMENT ON COLUMN for primary key columns detected in the DDL.
-- Review and edit descriptions as needed; run this script after table creation.

BEGIN;

-- Auto-generated: comments/labels for all tables

-- CNOFT
COMMENT ON TABLE CNOFT IS 'Archivo Maestro de Tablas de Datos Comunes (ver Documentacion_IBMi/Base_Datos/estructura_bd.md).';
LABEL ON TABLE CNOFT IS 'CNOFT - Maestro Tablas Comunes';
COMMENT ON COLUMN CNOFT.codigo_tabla IS 'Parte de PK: codigo_tabla';
COMMENT ON COLUMN CNOFT.idioma IS 'Parte de PK: idioma';

-- CNOFC
COMMENT ON TABLE CNOFC IS 'Archivo de Referencias del Sistema o de Datos Comunes.';
LABEL ON TABLE CNOFC IS 'CNOFC - Referencias Sistema';
COMMENT ON COLUMN CNOFC.codigo_tabla IS 'Parte de PK: codigo_tabla';
COMMENT ON COLUMN CNOFC.codigo_registro IS 'Parte de PK: codigo_registro';

-- MLNCT
COMMENT ON TABLE MLNCT IS 'Archivo de patrones/formatos de Notificaciones a Clientes (Usos).';
LABEL ON TABLE MLNCT IS 'MLNCT - Patrones Notificaciones';
COMMENT ON COLUMN MLNCT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN MLNCT.codigo_de_notificacion IS 'Parte de PK: codigo_de_notificacion';
COMMENT ON COLUMN MLNCT.nivel IS 'Parte de PK: nivel';
COMMENT ON COLUMN MLNCT.idioma IS 'Parte de PK: idioma';
COMMENT ON COLUMN MLNCT.secuencia IS 'Parte de PK: secuencia';

-- MLNOT
COMMENT ON TABLE MLNOT IS 'Archivo que contiene los datos a imprimir en la notificación (Usos).';
LABEL ON TABLE MLNOT IS 'MLNOT - Datos Notificacion';
COMMENT ON COLUMN MLNOT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN MLNOT.fecha_proceso IS 'Parte de PK: fecha_proceso';
COMMENT ON COLUMN MLNOT.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN MLNOT.codigo_de_notificacion IS 'Parte de PK: codigo_de_notificacion';
COMMENT ON COLUMN MLNOT.nivel IS 'Parte de PK: nivel';

-- HSNOT
COMMENT ON TABLE HSNOT IS 'Histórico de Datos impresos en las Notificaciones.';
LABEL ON TABLE HSNOT IS 'HSNOT - Historico Notif';
COMMENT ON COLUMN HSNOT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN HSNOT.fecha_proceso IS 'Parte de PK: fecha_proceso';
COMMENT ON COLUMN HSNOT.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN HSNOT.codigo_de_notificacion IS 'Parte de PK: codigo_de_notificacion';
COMMENT ON COLUMN HSNOT.nivel IS 'Parte de PK: nivel';

-- HEAD
COMMENT ON TABLE HEAD IS 'Archivo títulos de reportes.';
LABEL ON TABLE HEAD IS 'HEAD - Titulos Reportes';
COMMENT ON COLUMN HEAD.nombre_printer_file IS 'Parte de PK: nombre_printer_file';
COMMENT ON COLUMN HEAD.secuencia IS 'Parte de PK: secuencia';

-- MSSGS
COMMENT ON TABLE MSSGS IS 'Archivo mensajes de Errores.';
LABEL ON TABLE MSSGS IS 'MSSGS - Mensajes Errores';
COMMENT ON COLUMN MSSGS.id IS 'Parte de PK: id';

-- HOLYD
COMMENT ON TABLE HOLYD IS 'Archivo de Feriados.';
LABEL ON TABLE HOLYD IS 'HOLYD - Feriados';
COMMENT ON COLUMN HOLYD.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN HOLYD.fecha IS 'Parte de PK: fecha';

-- APCLS
COMMENT ON TABLE APCLS IS 'Archivo Maestro de Productos.';
LABEL ON TABLE APCLS IS 'APCLS - Productos';
COMMENT ON COLUMN APCLS.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN APCLS.codigo_de_producto IS 'Parte de PK: codigo_de_producto';

-- RATES
COMMENT ON TABLE RATES IS 'Archivos de Tasas de Cambio.';
LABEL ON TABLE RATES IS 'RATES - Tasas Cambio';
COMMENT ON COLUMN RATES.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN RATES.codigo_moneda IS 'Parte de PK: codigo_moneda';

-- RTRNS
COMMENT ON TABLE RTRNS IS 'Historia de Tasas de Cambio.';
LABEL ON TABLE RTRNS IS 'RTRNS - Historia Tasas';
COMMENT ON COLUMN RTRNS.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN RTRNS.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN RTRNS.fecha IS 'Parte de PK: fecha';

-- HLHIS
COMMENT ON TABLE HLHIS IS 'Archivo histórico de Cambios en Retenciones.';
LABEL ON TABLE HLHIS IS 'HLHIS - Historico Retenciones';
COMMENT ON COLUMN HLHIS.id IS 'Parte de PK: id';

-- PRENA
COMMENT ON TABLE PRENA IS 'Archivo de Descripciones de Programas en Inglés.';
LABEL ON TABLE PRENA IS 'PRENA - Descripciones Programas EN';
COMMENT ON COLUMN PRENA.nombre_programa IS 'Parte de PK: nombre_programa';

-- PRENS
COMMENT ON TABLE PRENS IS 'Archivo de Descripciones de Programas en Español.';
LABEL ON TABLE PRENS IS 'PRENS - Descripciones Programas ES';
COMMENT ON COLUMN PRENS.nombre_programa IS 'Parte de PK: nombre_programa';

-- UT500
COMMENT ON TABLE UT500 IS 'Agenda Personalizada.';
LABEL ON TABLE UT500 IS 'UT500 - Agenda';
COMMENT ON COLUMN UT500.codigo_usuario IS 'Parte de PK: codigo_usuario';
COMMENT ON COLUMN UT500.fecha IS 'Parte de PK: fecha';

-- UT510
COMMENT ON TABLE UT510 IS 'Mensajes de Usuarios.';
LABEL ON TABLE UT510 IS 'UT510 - Mensajes Usuarios';
COMMENT ON COLUMN UT510.codigo_usuario IS 'Parte de PK: codigo_usuario';
COMMENT ON COLUMN UT510.fecha IS 'Parte de PK: fecha';

-- MICRF
COMMENT ON TABLE MICRF IS 'Archivo que contiene los reportes salvados en Microficha.';
LABEL ON TABLE MICRF IS 'MICRF - Reportes Microficha';
COMMENT ON COLUMN MICRF.tipo_formulario IS 'Parte de PK: tipo_formulario';
COMMENT ON COLUMN MICRF.nombre_reporte IS 'Parte de PK: nombre_reporte';
COMMENT ON COLUMN MICRF.secuencia IS 'Parte de PK: secuencia';

-- IBSDD
COMMENT ON TABLE IBSDD IS 'Diccionario de Datos del IBS.';
LABEL ON TABLE IBSDD IS 'IBSDD - Diccionario IBS';
COMMENT ON COLUMN IBSDD.id IS 'Parte de PK: id';

-- IBTBL
COMMENT ON TABLE IBTBL IS 'Archivo de Referencias Cruzadas para manejo de Intersucursales.';
LABEL ON TABLE IBTBL IS 'IBTBL - Referencias Intersucursales';
COMMENT ON COLUMN IBTBL.id IS 'Parte de PK: id';

-- TRANS
COMMENT ON TABLE TRANS IS 'Archivo histórico de transacciones.';
LABEL ON TABLE TRANS IS 'TRANS - Transacciones';
COMMENT ON COLUMN TRANS.id_transaccion IS 'Parte de PK: id_transaccion';

-- TRDSC
COMMENT ON TABLE TRDSC IS 'Descripciones Adicionales a las Transacciones (TRANS).';
LABEL ON TABLE TRDSC IS 'TRDSC - Descripciones Trans';
COMMENT ON COLUMN TRDSC.numero_registro_relativo IS 'Parte de PK: numero_registro_relativo';
COMMENT ON COLUMN TRDSC.secuencia IS 'Parte de PK: secuencia';

-- TTRAN
COMMENT ON TABLE TTRAN IS 'Archivo Maestro de Transacciones del día.';
LABEL ON TABLE TTRAN IS 'TTRAN - Transacciones Dia';
COMMENT ON COLUMN TTRAN.id_transaccion_dia IS 'Parte de PK: id_transaccion_dia';
COMMENT ON COLUMN TTRAN.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN TTRAN.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN TTRAN.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN TTRAN.cuenta_contable IS 'Parte de PK: cuenta_contable';
COMMENT ON COLUMN TTRAN.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN TTRAN.fecha IS 'Parte de PK: fecha';

-- CIFXF
COMMENT ON TABLE CIFXF IS 'Relación de operaciones con clientes.';
LABEL ON TABLE CIFXF IS 'CIFXF - Operaciones Clientes';
COMMENT ON COLUMN CIFXF.id IS 'Parte de PK: id';

-- CNTRLCNT
COMMENT ON TABLE CNTRLCNT IS 'Parámetros Generales del Sistema.';
LABEL ON TABLE CNTRLCNT IS 'CNTRLCNT - Parametros Sistema';
COMMENT ON COLUMN CNTRLCNT.codigo_banco IS 'Parte de PK: codigo_banco';

-- CNTRLBRN
COMMENT ON TABLE CNTRLBRN IS 'Archivo de Sucursales.';
LABEL ON TABLE CNTRLBRN IS 'CNTRLBRN - Sucursales';
COMMENT ON COLUMN CNTRLBRN.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLBRN.codigo_sucursal IS 'Parte de PK: codigo_sucursal';

-- CNTRLNUM
COMMENT ON TABLE CNTRLNUM IS 'Control de Numeración Automática de Operaciones.';
LABEL ON TABLE CNTRLNUM IS 'CNTRLNUM - Control Numeracion';
COMMENT ON COLUMN CNTRLNUM.codigo_aplicacion IS 'Parte de PK: codigo_aplicacion';
COMMENT ON COLUMN CNTRLNUM.tipo_cuenta IS 'Parte de PK: tipo_cuenta';

-- CNTRLTAX
COMMENT ON TABLE CNTRLTAX IS 'Definiciones para el manejo de cobro de impuestos.';
LABEL ON TABLE CNTRLTAX IS 'CNTRLTAX - Impuestos';
COMMENT ON COLUMN CNTRLTAX.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLTAX.codigo_impuesto IS 'Parte de PK: codigo_impuesto';

-- CUMST
COMMENT ON TABLE CUMST IS 'Archivo de Maestro de Clientes.';
LABEL ON TABLE CUMST IS 'CUMST - Clientes';
COMMENT ON COLUMN CUMST.id_cliente IS 'Parte de PK: id_cliente';

-- CUMAD
COMMENT ON TABLE CUMAD IS 'Archivo de Direcciones de Correo y Beneficiarios de Operaciones/Clientes.';
LABEL ON TABLE CUMAD IS 'CUMAD - Direcciones Clientes';
COMMENT ON COLUMN CUMAD.id_cliente_operacion IS 'Parte de PK: id_cliente_operacion';
COMMENT ON COLUMN CUMAD.tipo_registro IS 'Parte de PK: tipo_registro';
COMMENT ON COLUMN CUMAD.secuencia IS 'Parte de PK: secuencia';

-- CUMPR
COMMENT ON TABLE CUMPR IS 'Archivo Maestro de Palabras Reservadas para búsquedas de clientes.';
LABEL ON TABLE CUMPR IS 'CUMPR - Palabras Reservadas';
COMMENT ON COLUMN CUMPR.palabra IS 'Parte de PK: palabra';

-- CUMSD
COMMENT ON TABLE CUMSD IS 'Archivo Maestro de Clientes para búsqueda mediante string.';
LABEL ON TABLE CUMSD IS 'CUMSD - Indice Busqueda Clientes';
COMMENT ON COLUMN CUMSD.id_cliente IS 'Parte de PK: id_cliente';

-- SPINS
COMMENT ON TABLE SPINS IS 'Archivo de Instrucciones especiales.';
LABEL ON TABLE SPINS IS 'SPINS - Instrucciones';
COMMENT ON COLUMN SPINS.tipo_informacion IS 'Parte de PK: tipo_informacion';
COMMENT ON COLUMN SPINS.cuenta_o_cliente IS 'Parte de PK: cuenta_o_cliente';
COMMENT ON COLUMN SPINS.secuencia IS 'Parte de PK: secuencia';

-- ACMST
COMMENT ON TABLE ACMST IS 'Archivo Maestro de Cuentas de Detalle.';
LABEL ON TABLE ACMST IS 'ACMST - Cuentas Detalle';
COMMENT ON COLUMN ACMST.id IS 'Parte de PK: id';

-- STPMT
COMMENT ON TABLE STPMT IS 'Ordenes de No Pago de Cheques.';
LABEL ON TABLE STPMT IS 'STPMT - Ordenes No Pago';
COMMENT ON COLUMN STPMT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN STPMT.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN STPMT.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN STPMT.cuenta_contable IS 'Parte de PK: cuenta_contable';
COMMENT ON COLUMN STPMT.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN STPMT.secuencia IS 'Parte de PK: secuencia';

-- UNCOL
COMMENT ON TABLE UNCOL IS 'Maestro de Retenciones.';
LABEL ON TABLE UNCOL IS 'UNCOL - Retenciones';
COMMENT ON COLUMN UNCOL.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN UNCOL.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN UNCOL.numero_cuenta IS 'Parte de PK: numero_cuenta';

-- PBTRN
COMMENT ON TABLE PBTRN IS 'Transacciones de Libretas de Ahorro.';
LABEL ON TABLE PBTRN IS 'PBTRN - Libretas Transacciones';
COMMENT ON COLUMN PBTRN.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN PBTRN.fecha IS 'Parte de PK: fecha';
COMMENT ON COLUMN PBTRN.hora IS 'Parte de PK: hora';

-- OFMST
COMMENT ON TABLE OFMST IS 'Maestro de Cheques Certificados y Cheques de Gerencia.';
LABEL ON TABLE OFMST IS 'OFMST - Cheques Certificados';
COMMENT ON COLUMN OFMST.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN OFMST.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN OFMST.numero_cheque IS 'Parte de PK: numero_cheque';

-- RCLNB
COMMENT ON TABLE RCLNB IS 'Transacciones de Cuentas Reconciliables.';
LABEL ON TABLE RCLNB IS 'RCLNB - Tx Reconciliables';
COMMENT ON COLUMN RCLNB.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN RCLNB.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN RCLNB.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN RCLNB.cuenta_contable IS 'Parte de PK: cuenta_contable';
COMMENT ON COLUMN RCLNB.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN RCLNB.fecha IS 'Parte de PK: fecha';

-- TLMST
COMMENT ON TABLE TLMST IS 'Maestro de Cajeros.';
LABEL ON TABLE TLMST IS 'TLMST - Cajeros';
COMMENT ON COLUMN TLMST.codigo_de_cajero IS 'Parte de PK: codigo_de_cajero';
COMMENT ON COLUMN TLMST.codigo_moneda IS 'Parte de PK: codigo_moneda';

-- TDRCR
COMMENT ON TABLE TDRCR IS 'Maestro de Transacciones de Cajero.';
LABEL ON TABLE TDRCR IS 'TDRCR - Transacciones Cajero';
COMMENT ON COLUMN TDRCR.codigo_de_transaccion IS 'Parte de PK: codigo_de_transaccion';

-- AUDIT
COMMENT ON TABLE AUDIT IS 'Detalle diario de transacciones de caja.';
LABEL ON TABLE AUDIT IS 'AUDIT - Auditoria Caja';
COMMENT ON COLUMN AUDIT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN AUDIT.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN AUDIT.codigo_cajero IS 'Parte de PK: codigo_cajero';
COMMENT ON COLUMN AUDIT.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN AUDIT.referencia IS 'Parte de PK: referencia';

-- CHMST
COMMENT ON TABLE CHMST IS 'Maestro de Chequeras.';
LABEL ON TABLE CHMST IS 'CHMST - Chequeras';
COMMENT ON COLUMN CHMST.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CHMST.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN CHMST.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN CHMST.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN CHMST.cheque_inicial IS 'Parte de PK: cheque_inicial';

-- CHPER
COMMENT ON TABLE CHPER IS 'Personalizacion de Chequeras.';
LABEL ON TABLE CHPER IS 'CHPER - Personalizacion Chequeras';
COMMENT ON COLUMN CHPER.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CHPER.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN CHPER.numero_cuenta IS 'Parte de PK: numero_cuenta';

-- CHSTS
COMMENT ON TABLE CHSTS IS 'Maestro de cambio de estatus a cuentas de detalle.';
LABEL ON TABLE CHSTS IS 'CHSTS - Cambio Estatus Cuentas';
COMMENT ON COLUMN CHSTS.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CHSTS.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN CHSTS.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN CHSTS.cuenta_contable IS 'Parte de PK: cuenta_contable';
COMMENT ON COLUMN CHSTS.numero_cuenta IS 'Parte de PK: numero_cuenta';

-- DEVOL
COMMENT ON TABLE DEVOL IS 'Detalle de Cheques devueltos.';
LABEL ON TABLE DEVOL IS 'DEVOL - Cheques Devueltos';
COMMENT ON COLUMN DEVOL.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN DEVOL.numero_cheque IS 'Parte de PK: numero_cheque';

-- CMRIN
COMMENT ON TABLE CMRIN IS 'Detalle de Cámara Entrante.';
LABEL ON TABLE CMRIN IS 'CMRIN - Camara Entrante';
COMMENT ON COLUMN CMRIN.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CMRIN.sucursal_moneda IS 'Parte de PK: sucursal_moneda';
COMMENT ON COLUMN CMRIN.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN CMRIN.monto IS 'Parte de PK: monto';

-- OVDRF
COMMENT ON TABLE OVDRF IS 'Archivo diario de Sobregiros.';
LABEL ON TABLE OVDRF IS 'OVDRF - Sobregiros';
COMMENT ON COLUMN OVDRF.id IS 'Parte de PK: id';

-- CNTRLMSG
COMMENT ON TABLE CNTRLMSG IS 'Mensajes a ser impresos en estados de cuenta.';
LABEL ON TABLE CNTRLMSG IS 'CNTRLMSG - Mensajes Estados';
COMMENT ON COLUMN CNTRLMSG.codigo_banco IS 'Parte de PK: codigo_banco';

-- CNTRLRTE
COMMENT ON TABLE CNTRLRTE IS 'Tabla de Tasas y Cargos por Servicio en Cuentas de Detalle.';
LABEL ON TABLE CNTRLRTE IS 'CNTRLRTE - Tasas/Cargos';
COMMENT ON COLUMN CNTRLRTE.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLRTE.tipo_producto IS 'Parte de PK: tipo_producto';
COMMENT ON COLUMN CNTRLRTE.codigo_tabla IS 'Parte de PK: codigo_tabla';

-- CNTRLDEV
COMMENT ON TABLE CNTRLDEV IS 'Definición de las Causales de Devolución de Cheques.';
LABEL ON TABLE CNTRLDEV IS 'CNTRLDEV - Causales Devolucion';
COMMENT ON COLUMN CNTRLDEV.codigo_causal IS 'Parte de PK: codigo_causal';

-- DEALS
COMMENT ON TABLE DEALS IS 'Maestro de Préstamos, Certificados, Giros, Valores al Cobro, Inversiones.';
LABEL ON TABLE DEALS IS 'DEALS - Contratos/Prestamos';
COMMENT ON COLUMN DEALS.id IS 'Parte de PK: id';

-- DLPMT
COMMENT ON TABLE DLPMT IS 'Plan de Pagos para prestamos.';
LABEL ON TABLE DLPMT IS 'DLPMT - Plan Pagos';
COMMENT ON COLUMN DLPMT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN DLPMT.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN DLPMT.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN DLPMT.numero_prestamo IS 'Parte de PK: numero_prestamo';
COMMENT ON COLUMN DLPMT.fecha IS 'Parte de PK: fecha';
COMMENT ON COLUMN DLPMT.tipo_registro IS 'Parte de PK: tipo_registro';

-- DLDRF
COMMENT ON TABLE DLDRF IS 'Detalle de Giros y Valores al Cobro.';
LABEL ON TABLE DLDRF IS 'DLDRF - Detalle Giros';
COMMENT ON COLUMN DLDRF.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN DLDRF.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN DLDRF.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN DLDRF.numero_prestamo IS 'Parte de PK: numero_prestamo';
COMMENT ON COLUMN DLDRF.identificacion IS 'Parte de PK: identificacion';
COMMENT ON COLUMN DLDRF.numero_documento IS 'Parte de PK: numero_documento';

-- DLSDE
COMMENT ON TABLE DLSDE IS 'Detalle de Deducciones del Plan de Pagos.';
LABEL ON TABLE DLSDE IS 'DLSDE - Deducciones Plan';
COMMENT ON COLUMN DLSDE.numero_prestamo IS 'Parte de PK: numero_prestamo';
COMMENT ON COLUMN DLSDE.fecha IS 'Parte de PK: fecha';
COMMENT ON COLUMN DLSDE.tipo_registro IS 'Parte de PK: tipo_registro';
COMMENT ON COLUMN DLSDE.secuencia IS 'Parte de PK: secuencia';
COMMENT ON COLUMN DLSDE.codigo_deduccion IS 'Parte de PK: codigo_deduccion';

-- DLCLP
COMMENT ON TABLE DLCLP IS 'Calificación y Previsión de Cartera.';
LABEL ON TABLE DLCLP IS 'DLCLP - Calificacion Cartera';
COMMENT ON COLUMN DLCLP.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN DLCLP.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN DLCLP.referencia IS 'Parte de PK: referencia';

-- DDCPN
COMMENT ON TABLE DDCPN IS 'Transacciones pendientes de Cobro.';
LABEL ON TABLE DDCPN IS 'DDCPN - Pendientes Cobro';
COMMENT ON COLUMN DDCPN.numero_prestamo IS 'Parte de PK: numero_prestamo';

-- DLITP
COMMENT ON TABLE DLITP IS 'Maestro de Deducciones de Préstamos.';
LABEL ON TABLE DLITP IS 'DLITP - Deducciones Prestamos';
COMMENT ON COLUMN DLITP.numero_prestamo IS 'Parte de PK: numero_prestamo';
COMMENT ON COLUMN DLITP.codigo_deduccion IS 'Parte de PK: codigo_deduccion';

-- CDRTE
COMMENT ON TABLE CDRTE IS 'Tabla de Tasas de Depósitos.';
LABEL ON TABLE CDRTE IS 'CDRTE - Tasas Depositos';
COMMENT ON COLUMN CDRTE.numero_tabla IS 'Parte de PK: numero_tabla';
COMMENT ON COLUMN CDRTE.fecha IS 'Parte de PK: fecha';
COMMENT ON COLUMN CDRTE.codigo_moneda IS 'Parte de PK: codigo_moneda';

-- CNTRLDLS
COMMENT ON TABLE CNTRLDLS IS 'Tabla de Tasas para control de Préstamos.';
LABEL ON TABLE CNTRLDLS IS 'CNTRLDLS - Tasas Prestamos';
COMMENT ON COLUMN CNTRLDLS.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLDLS.numero_tabla IS 'Parte de PK: numero_tabla';
COMMENT ON COLUMN CNTRLDLS.tipo_producto IS 'Parte de PK: tipo_producto';

-- LCMST
COMMENT ON TABLE LCMST IS 'Maestro de Cartas de Crédito.';
LABEL ON TABLE LCMST IS 'LCMST - Cartas Credito';
COMMENT ON COLUMN LCMST.id IS 'Parte de PK: id';

-- LCDOC
COMMENT ON TABLE LCDOC IS 'Documentos de Cartas de Crédito.';
LABEL ON TABLE LCDOC IS 'LCDOC - Documentos Cartas';
COMMENT ON COLUMN LCDOC.numero_carta_credito IS 'Parte de PK: numero_carta_credito';
COMMENT ON COLUMN LCDOC.tipo_registro IS 'Parte de PK: tipo_registro';
COMMENT ON COLUMN LCDOC.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN LCDOC.codigo_documento IS 'Parte de PK: codigo_documento';
COMMENT ON COLUMN LCDOC.numero_linea IS 'Parte de PK: numero_linea';

-- LCFIN
COMMENT ON TABLE LCFIN IS 'Indice de Formatos de Cartas de Crédito.';
LABEL ON TABLE LCFIN IS 'LCFIN - Index Formatos';
COMMENT ON COLUMN LCFIN.nivel IS 'Parte de PK: nivel';
COMMENT ON COLUMN LCFIN.codigo_documento IS 'Parte de PK: codigo_documento';
COMMENT ON COLUMN LCFIN.secuencia_de_texto IS 'Parte de PK: secuencia_de_texto';

-- LCFMT
COMMENT ON TABLE LCFMT IS 'Formatos de Cartas de Crédito.';
LABEL ON TABLE LCFMT IS 'LCFMT - Formatos Cartas';
COMMENT ON COLUMN LCFMT.codigo_documento IS 'Parte de PK: codigo_documento';
COMMENT ON COLUMN LCFMT.secuencia_de_texto IS 'Parte de PK: secuencia_de_texto';
COMMENT ON COLUMN LCFMT.numero_linea IS 'Parte de PK: numero_linea';

-- LCADM
COMMENT ON TABLE LCADM IS 'Enmiendas a Cartas de Crédito.';
LABEL ON TABLE LCADM IS 'LCADM - Enmiendas Cartas';
COMMENT ON COLUMN LCADM.numero_carta_credito IS 'Parte de PK: numero_carta_credito';
COMMENT ON COLUMN LCADM.numero_enmienda IS 'Parte de PK: numero_enmienda';

-- LCCOV
COMMENT ON TABLE LCCOV IS 'Negociaciones de Cartas de Crédito.';
LABEL ON TABLE LCCOV IS 'LCCOV - Negociaciones Cartas';
COMMENT ON COLUMN LCCOV.numero_carta_credito IS 'Parte de PK: numero_carta_credito';
COMMENT ON COLUMN LCCOV.secuencia IS 'Parte de PK: secuencia';

-- LCDIN
COMMENT ON TABLE LCDIN IS 'Documentos Recibidos en Cartas de Crédito.';
LABEL ON TABLE LCDIN IS 'LCDIN - Documentos Recibidos';
COMMENT ON COLUMN LCDIN.numero_carta_credito IS 'Parte de PK: numero_carta_credito';
COMMENT ON COLUMN LCDIN.secuencia IS 'Parte de PK: secuencia';

-- LCSTA
COMMENT ON TABLE LCSTA IS 'Estadistica de Aperturas/Enmiendas/Pagos en Cartas de Crédito.';
LABEL ON TABLE LCSTA IS 'LCSTA - Estadisticas Cartas';
COMMENT ON COLUMN LCSTA.id IS 'Parte de PK: id';

-- CNTRLLCP
COMMENT ON TABLE CNTRLLCP IS 'Archivo de Control de Cartas de Crédito.';
LABEL ON TABLE CNTRLLCP IS 'CNTRLLCP - Control Cartas';
COMMENT ON COLUMN CNTRLLCP.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLLCP.lcrparm IS 'Parte de PK: lcrparm';

-- CNTRLRLC
COMMENT ON TABLE CNTRLRLC IS 'Tabla de Cargos por Servicios o Tarifas de Cartas de Crédito.';
LABEL ON TABLE CNTRLRLC IS 'CNTRLRLC - Cargos Cartas';
COMMENT ON COLUMN CNTRLRLC.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLRLC.tipo_producto IS 'Parte de PK: tipo_producto';
COMMENT ON COLUMN CNTRLRLC.numero_tabla IS 'Parte de PK: numero_tabla';

-- DCMST
COMMENT ON TABLE DCMST IS 'Maestro de Cobranzas Documentarias.';
LABEL ON TABLE DCMST IS 'DCMST - Cobranzas';
COMMENT ON COLUMN DCMST.id IS 'Parte de PK: id';

-- APPRV
COMMENT ON TABLE APPRV IS 'Cobranzas pendientes de Aprobación.';
LABEL ON TABLE APPRV IS 'APPRV - Pendientes Aprobacion';
COMMENT ON COLUMN APPRV.numero_carta_credito IS 'Parte de PK: numero_carta_credito';
COMMENT ON COLUMN APPRV.tipo_registro IS 'Parte de PK: tipo_registro';

-- LCFEE
COMMENT ON TABLE LCFEE IS 'Control de Cobro de Comisiones.';
LABEL ON TABLE LCFEE IS 'LCFEE - Cobro Comisiones';
COMMENT ON COLUMN LCFEE.numero_carta_credito IS 'Parte de PK: numero_carta_credito';
COMMENT ON COLUMN LCFEE.codigo_de_comision IS 'Parte de PK: codigo_de_comision';

-- CNTRLRCO
COMMENT ON TABLE CNTRLRCO IS 'Tabla de Cargos por Servicios o Tarifas de Cobranzas.';
LABEL ON TABLE CNTRLRCO IS 'CNTRLRCO - Cargos Cobranzas';
COMMENT ON COLUMN CNTRLRCO.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLRCO.tipo_producto IS 'Parte de PK: tipo_producto';
COMMENT ON COLUMN CNTRLRCO.numero_tabla IS 'Parte de PK: numero_tabla';

-- GLMST
COMMENT ON TABLE GLMST IS 'Maestro de Cuentas Contables.';
LABEL ON TABLE GLMST IS 'GLMST - Maestro Cuentas';
COMMENT ON COLUMN GLMST.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN GLMST.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN GLMST.cuenta_contable IS 'Parte de PK: cuenta_contable';

-- INPUT
COMMENT ON TABLE INPUT IS 'Archivo de Asientos Contables Aprobados.';
LABEL ON TABLE INPUT IS 'INPUT - Asientos Aprobados';
COMMENT ON COLUMN INPUT.numero_del_lote IS 'Parte de PK: numero_del_lote';
COMMENT ON COLUMN INPUT.secuencia_dentro_del_lote IS 'Parte de PK: secuencia_dentro_del_lote';

-- GLBLN
COMMENT ON TABLE GLBLN IS 'Balances Generales (cuentas mayores).';
LABEL ON TABLE GLBLN IS 'GLBLN - Balances Generales';
COMMENT ON COLUMN GLBLN.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN GLBLN.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN GLBLN.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN GLBLN.cuenta_contable IS 'Parte de PK: cuenta_contable';

-- GLBSE
COMMENT ON TABLE GLBSE IS 'Balances Generales Consolidado.';
LABEL ON TABLE GLBSE IS 'GLBSE - Balances Consolidado';
COMMENT ON COLUMN GLBSE.id IS 'Parte de PK: id';

-- GLFIN
COMMENT ON TABLE GLFIN IS 'Estados Financieros por niveles.';
LABEL ON TABLE GLFIN IS 'GLFIN - Estados Financieros';
COMMENT ON COLUMN GLFIN.id IS 'Parte de PK: id';

-- CCDSC
COMMENT ON TABLE CCDSC IS 'Maestros de Centros de Costos.';
LABEL ON TABLE CCDSC IS 'CCDSC - Centros Costo';
COMMENT ON COLUMN CCDSC.id IS 'Parte de PK: id';

-- INPT2
COMMENT ON TABLE INPT2 IS 'Entradas Contables Automáticas del fin de día.';
LABEL ON TABLE INPT2 IS 'INPT2 - Entradas Auto';
COMMENT ON COLUMN INPT2.id IS 'Parte de PK: id';

-- NXINP
COMMENT ON TABLE NXINP IS 'Transacciones Contables del próximo día.';
LABEL ON TABLE NXINP IS 'NXINP - Prox Dia';
COMMENT ON COLUMN NXINP.numero_batch IS 'Parte de PK: numero_batch';
COMMENT ON COLUMN NXINP.secuencia IS 'Parte de PK: secuencia';

-- BUMST
COMMENT ON TABLE BUMST IS 'Maestro de Presupuestos.';
LABEL ON TABLE BUMST IS 'BUMST - Presupuestos';
COMMENT ON COLUMN BUMST.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN BUMST.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN BUMST.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN BUMST.numero_presupuesto IS 'Parte de PK: numero_presupuesto';
COMMENT ON COLUMN BUMST.centro_costo IS 'Parte de PK: centro_costo';

-- ROCOL
COMMENT ON TABLE ROCOL IS 'Maestro de Garantías.';
LABEL ON TABLE ROCOL IS 'ROCOL - Garantias';
COMMENT ON COLUMN ROCOL.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN ROCOL.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN ROCOL.numero_garantia IS 'Parte de PK: numero_garantia';

-- RCOLL
COMMENT ON TABLE RCOLL IS 'Relaciones entre Garantías.';
LABEL ON TABLE RCOLL IS 'RCOLL - Relaciones Garantias';
COMMENT ON COLUMN RCOLL.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN RCOLL.cuenta_a_garantizar IS 'Parte de PK: cuenta_a_garantizar';
COMMENT ON COLUMN RCOLL.cuenta_que_garantiza IS 'Parte de PK: cuenta_que_garantiza';

-- LNECR
COMMENT ON TABLE LNECR IS 'Maestro de Lineas de Crédito.';
LABEL ON TABLE LNECR IS 'LNECR - Lineas Credito';
COMMENT ON COLUMN LNECR.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN LNECR.numero_linea IS 'Parte de PK: numero_linea';

-- FIXMS
COMMENT ON TABLE FIXMS IS 'Maestro de Activos Fijos.';
LABEL ON TABLE FIXMS IS 'FIXMS - Activos Fijos';
COMMENT ON COLUMN FIXMS.numero_activo IS 'Parte de PK: numero_activo';

-- CLSMS
COMMENT ON TABLE CLSMS IS 'Maestro de Clases de Amortizaciones.';
LABEL ON TABLE CLSMS IS 'CLSMS - Clases Amortizacion';
COMMENT ON COLUMN CLSMS.codigo_clase IS 'Parte de PK: codigo_clase';

-- LOCMS
COMMENT ON TABLE LOCMS IS 'Maestro de Localizaciones de Activos Fijos.';
LABEL ON TABLE LOCMS IS 'LOCMS - Localizaciones Activos';
COMMENT ON COLUMN LOCMS.numero_localizacion IS 'Parte de PK: numero_localizacion';

-- CNTRLFIX
COMMENT ON TABLE CNTRLFIX IS 'Archivo de Control de Activos Fijos.';
LABEL ON TABLE CNTRLFIX IS 'CNTRLFIX - Control Activos';
COMMENT ON COLUMN CNTRLFIX.codigo_banco IS 'Parte de PK: codigo_banco';

-- BAVEN
COMMENT ON TABLE BAVEN IS 'Maestro de Proveedores.';
LABEL ON TABLE BAVEN IS 'BAVEN - Proveedores';
COMMENT ON COLUMN BAVEN.numero_proveedor IS 'Parte de PK: numero_proveedor';

-- BAPRC
COMMENT ON TABLE BAPRC IS 'Maestro de Cuentas por Pagar.';
LABEL ON TABLE BAPRC IS 'BAPRC - Cuentas por Pagar';
COMMENT ON COLUMN BAPRC.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN BAPRC.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN BAPRC.origen_cuenta IS 'Parte de PK: origen_cuenta';
COMMENT ON COLUMN BAPRC.tipo_cuenta IS 'Parte de PK: tipo_cuenta';
COMMENT ON COLUMN BAPRC.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN BAPRC.numero_referencia IS 'Parte de PK: numero_referencia';
COMMENT ON COLUMN BAPRC.tipo_registro IS 'Parte de PK: tipo_registro';

-- BAMOR
COMMENT ON TABLE BAMOR IS 'Amortizaciones de Cuentas por Pagar.';
LABEL ON TABLE BAMOR IS 'BAMOR - Amortizaciones';
COMMENT ON COLUMN BAMOR.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN BAMOR.codigo_sucursal IS 'Parte de PK: codigo_sucursal';
COMMENT ON COLUMN BAMOR.origen_cuenta IS 'Parte de PK: origen_cuenta';
COMMENT ON COLUMN BAMOR.tipo_cuenta IS 'Parte de PK: tipo_cuenta';
COMMENT ON COLUMN BAMOR.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN BAMOR.numero_referencia IS 'Parte de PK: numero_referencia';
COMMENT ON COLUMN BAMOR.tipo_registro IS 'Parte de PK: tipo_registro';

-- BAINP
COMMENT ON TABLE BAINP IS 'Transacciones Contables Diarias de Cuentas por Pagar.';
LABEL ON TABLE BAINP IS 'BAINP - Tx Diarias Cxp';
COMMENT ON COLUMN BAINP.numero_batch IS 'Parte de PK: numero_batch';
COMMENT ON COLUMN BAINP.secuencia IS 'Parte de PK: secuencia';

-- BAHIS
COMMENT ON TABLE BAHIS IS 'Histórico de Cuentas por Pagar.';
LABEL ON TABLE BAHIS IS 'BAHIS - Historico Cxp';
COMMENT ON COLUMN BAHIS.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN BAHIS.origen_cuenta IS 'Parte de PK: origen_cuenta';
COMMENT ON COLUMN BAHIS.tipo_cuenta IS 'Parte de PK: tipo_cuenta';
COMMENT ON COLUMN BAHIS.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN BAHIS.numero_referencia IS 'Parte de PK: numero_referencia';
COMMENT ON COLUMN BAHIS.fecha IS 'Parte de PK: fecha';

-- CNTRLBAF
COMMENT ON TABLE CNTRLBAF IS 'Archivo de Control de Cuentas por Pagar (Comisiones).';
LABEL ON TABLE CNTRLBAF IS 'CNTRLBAF - Control Cxp Comisiones';
COMMENT ON COLUMN CNTRLBAF.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLBAF.codigo_moneda IS 'Parte de PK: codigo_moneda';

-- CNTRLBAP
COMMENT ON TABLE CNTRLBAP IS 'Archivo de Control de Cuentas por Pagar (Otros parámetros).';
LABEL ON TABLE CNTRLBAP IS 'CNTRLBAP - Control Cxp Otros';
COMMENT ON COLUMN CNTRLBAP.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLBAP.codigo_moneda IS 'Parte de PK: codigo_moneda';

-- FIWRT
COMMENT ON TABLE FIWRT IS 'Transacciones Históricas de Pagos y Recibos.';
LABEL ON TABLE FIWRT IS 'FIWRT - Pagos/Recibos';
COMMENT ON COLUMN FIWRT.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN FIWRT.numero_transferencia IS 'Parte de PK: numero_transferencia';

-- POFED
COMMENT ON TABLE POFED IS 'Ordenes de Pago.';
LABEL ON TABLE POFED IS 'POFED - Ordenes Pago';
COMMENT ON COLUMN POFED.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN POFED.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN POFED.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN POFED.tipo_registro IS 'Parte de PK: tipo_registro';
COMMENT ON COLUMN POFED.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN POFED.numero_referencia IS 'Parte de PK: numero_referencia';

-- POSWF
COMMENT ON TABLE POSWF IS 'Ordenes de Pago vía Swift.';
LABEL ON TABLE POSWF IS 'POSWF - Ordenes Swift';
COMMENT ON COLUMN POSWF.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN POSWF.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN POSWF.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN POSWF.tipo_registro IS 'Parte de PK: tipo_registro';
COMMENT ON COLUMN POSWF.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN POSWF.numero_referencia IS 'Parte de PK: numero_referencia';
COMMENT ON COLUMN POSWF.monto IS 'Parte de PK: monto';

-- POTLX
COMMENT ON TABLE POTLX IS 'Ordenes de Pago vía Télex.';
LABEL ON TABLE POTLX IS 'POTLX - Ordenes Telex';
COMMENT ON COLUMN POTLX.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN POTLX.codigo_moneda IS 'Parte de PK: codigo_moneda';
COMMENT ON COLUMN POTLX.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN POTLX.tipo_registro IS 'Parte de PK: tipo_registro';
COMMENT ON COLUMN POTLX.numero_cuenta IS 'Parte de PK: numero_cuenta';
COMMENT ON COLUMN POTLX.numero_referencia IS 'Parte de PK: numero_referencia';

-- SWITF
COMMENT ON TABLE SWITF IS 'Histórico de Pagos y Recibidos vía Swift.';
LABEL ON TABLE SWITF IS 'SWITF - Swift Historico';
COMMENT ON COLUMN SWITF.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN SWITF.numero_referencia IS 'Parte de PK: numero_referencia';
COMMENT ON COLUMN SWITF.formato_swift IS 'Parte de PK: formato_swift';

-- CNTRLPRF
COMMENT ON TABLE CNTRLPRF IS 'Archivo de Control de Pagos y Recibos.';
LABEL ON TABLE CNTRLPRF IS 'CNTRLPRF - Control Pagos';
COMMENT ON COLUMN CNTRLPRF.codigo_banco IS 'Parte de PK: codigo_banco';
COMMENT ON COLUMN CNTRLPRF.parametro IS 'Parte de PK: parametro';
COMMENT ON COLUMN CNTRLPRF.codigo_tabla IS 'Parte de PK: codigo_tabla';

-- PLPCR
COMMENT ON TABLE PLPCR IS 'Propuestas de Crédito.';
LABEL ON TABLE PLPCR IS 'PLPCR - Propuestas Credito';
COMMENT ON COLUMN PLPCR.numero_propuesta IS 'Parte de PK: numero_propuesta';

-- PLPRD
COMMENT ON TABLE PLPRD IS 'Detalle de Productos asociados a una propuesta.';
LABEL ON TABLE PLPRD IS 'PLPRD - Detalle Propuesta';
COMMENT ON COLUMN PLPRD.numero_propuesta IS 'Parte de PK: numero_propuesta';
COMMENT ON COLUMN PLPRD.codigo_producto IS 'Parte de PK: codigo_producto';
COMMENT ON COLUMN PLPRD.tipo_producto IS 'Parte de PK: tipo_producto';

-- PLGRT
COMMENT ON TABLE PLGRT IS 'Garantías asociadas a las propuestas de crédito.';
LABEL ON TABLE PLGRT IS 'PLGRT - Garantias Propuesta';
COMMENT ON COLUMN PLGRT.numero_propuesta IS 'Parte de PK: numero_propuesta';
COMMENT ON COLUMN PLGRT.secuencia IS 'Parte de PK: secuencia';

-- DPMST
COMMENT ON TABLE DPMST IS 'Cabecera de la Declaración Patrimonial de Personas Naturales.';
LABEL ON TABLE DPMST IS 'DPMST - Declaracion Patrimonial PN';
COMMENT ON COLUMN DPMST.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN DPMST.secuencia IS 'Parte de PK: secuencia';

-- DPDTL
COMMENT ON TABLE DPDTL IS 'Detalle de la Declaración Patrimonial de Personas Naturales.';
LABEL ON TABLE DPDTL IS 'DPDTL - Detalle Declaracion PN';
COMMENT ON COLUMN DPDTL.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN DPDTL.secuencia IS 'Parte de PK: secuencia';
COMMENT ON COLUMN DPDTL.tipo_registro IS 'Parte de PK: tipo_registro';

-- IFMST
COMMENT ON TABLE IFMST IS 'Cabecera de Declaración Patrimonial de Personas Jurídicas.';
LABEL ON TABLE IFMST IS 'IFMST - Declaracion PJ';
COMMENT ON COLUMN IFMST.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN IFMST.anio IS 'Parte de PK: anio';
COMMENT ON COLUMN IFMST.mes IS 'Parte de PK: mes';
COMMENT ON COLUMN IFMST.formato_balance IS 'Parte de PK: formato_balance';

-- IFDTL
COMMENT ON TABLE IFDTL IS 'Detalle de Declaración Patrimonial de Personas Jurídicas.';
LABEL ON TABLE IFDTL IS 'IFDTL - Detalle Declaracion PJ';
COMMENT ON COLUMN IFDTL.id_cliente IS 'Parte de PK: id_cliente';
COMMENT ON COLUMN IFDTL.anio IS 'Parte de PK: anio';
COMMENT ON COLUMN IFDTL.mes IS 'Parte de PK: mes';
COMMENT ON COLUMN IFDTL.formato_balance IS 'Parte de PK: formato_balance';
COMMENT ON COLUMN IFDTL.codigo_linea IS 'Parte de PK: codigo_linea';
COMMENT ON COLUMN IFDTL.codigo_cuenta IS 'Parte de PK: codigo_cuenta';

-- DPGLN
COMMENT ON TABLE DPGLN IS 'Plan de Cuentas de nuestros Clientes.';
LABEL ON TABLE DPGLN IS 'DPGLN - Plan Cuentas Clientes';
COMMENT ON COLUMN DPGLN.tipo_balance IS 'Parte de PK: tipo_balance';
COMMENT ON COLUMN DPGLN.codigo_cuenta IS 'Parte de PK: codigo_cuenta';

-- LIMST
COMMENT ON TABLE LIMST IS 'Cabecera de Declaración Legal de Personas Jurídicas.';
LABEL ON TABLE LIMST IS 'LIMST - Declaracion Legal PJ';
COMMENT ON COLUMN LIMST.id_cliente IS 'Parte de PK: id_cliente';

-- DIMST
COMMENT ON TABLE DIMST IS 'Maestro de Inventario de Documentos.';
LABEL ON TABLE DIMST IS 'DIMST - Inventario Documentos';
COMMENT ON COLUMN DIMST.tipo_cuenta IS 'Parte de PK: tipo_cuenta';
COMMENT ON COLUMN DIMST.numero_tabla IS 'Parte de PK: numero_tabla';
COMMENT ON COLUMN DIMST.secuencia IS 'Parte de PK: secuencia';

-- DITBL
COMMENT ON TABLE DITBL IS 'Tablas de Tipos de Documentos.';
LABEL ON TABLE DITBL IS 'DITBL - Tipos Documentos';
COMMENT ON COLUMN DITBL.numero_tabla IS 'Parte de PK: numero_tabla';
COMMENT ON COLUMN DITBL.secuencia IS 'Parte de PK: secuencia';

-- USERS
COMMENT ON TABLE USERS IS 'Archivo de Autorizaciones por menús.';
LABEL ON TABLE USERS IS 'USERS - Autorizaciones Menus';
COMMENT ON COLUMN USERS.codigo_usuario IS 'Parte de PK: codigo_usuario';
COMMENT ON COLUMN USERS.menu IS 'Parte de PK: menu';
COMMENT ON COLUMN USERS.opcion IS 'Parte de PK: opcion';

COMMIT;
