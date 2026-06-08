-- Generated metadata and FK proposals for IBM i workshop
-- Purpose: Add COMMENT/LABEL stubs and propose FOREIGN KEY constraints
-- Review and replace all 'TODO:' texts with project-specific descriptions.

BEGIN;

/*
Metadata template per table (must appear before deployment):
-- Nombre de la Tabla: <NAME>
-- DESCRIPCIÓN: <TODO: descripción funcional>
-- Objetivo: <TODO: objetivo>
-- Tipo de Tabla: SQL
-- Origen de los Datos: <TODO>
-- Permanencia de Datos: <TODO>
-- Uso de los datos: <TODO>
-- Hecho por: <TODO>
-- Fecha: <TODO>
-- Proyecto: <TODO>
*/

-- ========================
-- GLBLN (Maestro de cuentas mayores)
-- ========================
COMMENT ON TABLE GLBLN IS 'TODO: Maestro de saldos y cuentas mayores (agregar descripción).';
LABEL ON TABLE GLBLN IS 'GLBLN - Cuentas Mayores';
COMMENT ON COLUMN GLBLN.codigo_banco IS 'TODO: Código del banco.';
COMMENT ON COLUMN GLBLN.codigo_sucursal IS 'TODO: Código de sucursal.';
COMMENT ON COLUMN GLBLN.codigo_moneda IS 'TODO: Código de moneda.';
COMMENT ON COLUMN GLBLN.cuenta_contable IS 'TODO: Cuenta contable (clave).';
COMMENT ON COLUMN GLBLN.descripcion_cuenta IS 'TODO: Descripción de la cuenta.';
LABEL ON COLUMN GLBLN.codigo_banco IS 'Banco';
LABEL ON COLUMN GLBLN.codigo_sucursal IS 'Sucursal';
LABEL ON COLUMN GLBLN.codigo_moneda IS 'Moneda';
LABEL ON COLUMN GLBLN.cuenta_contable IS 'Cuenta Contable';

-- ========================
-- GLMST (Maestro de cuentas) 
-- ========================
COMMENT ON TABLE GLMST IS 'TODO: Catálogo maestro de cuentas (descripción).';
LABEL ON TABLE GLMST IS 'GLMST - Maestro de Cuentas';
COMMENT ON COLUMN GLMST.codigo_banco IS 'TODO: Código del banco.';
COMMENT ON COLUMN GLMST.codigo_moneda IS 'TODO: Código de moneda.';
COMMENT ON COLUMN GLMST.cuenta_contable IS 'TODO: Cuenta contable (clave).';
LABEL ON COLUMN GLMST.cuenta_contable IS 'Cuenta Contable';

-- ========================
-- TRANS (Transacciones históricas)
-- ========================
COMMENT ON TABLE TRANS IS 'TODO: Transacciones históricas. Cada registro representa un movimiento.';
LABEL ON TABLE TRANS IS 'TRANS - Transacciones';
COMMENT ON COLUMN TRANS.id_transaccion IS 'TODO: Identificador único de la transacción.';
COMMENT ON COLUMN TRANS.numero_registro_relativo IS 'TODO: Referencia relacional entre sistemas.';
COMMENT ON COLUMN TRANS.codigo_banco IS 'TODO: Código del banco (FK propuesta a GLBLN).' ;
COMMENT ON COLUMN TRANS.codigo_sucursal IS 'TODO: Código de sucursal (FK propuesta a GLBLN).';
COMMENT ON COLUMN TRANS.codigo_moneda IS 'TODO: Código de moneda (FK propuesta a GLBLN).';
COMMENT ON COLUMN TRANS.cuenta_contable IS 'TODO: Cuenta contable (FK propuesta a GLBLN).';
COMMENT ON COLUMN TRANS.id_cliente IS 'TODO: Identificador del cliente (FK propuesta a CUMST).';
LABEL ON COLUMN TRANS.id_transaccion IS 'ID Transacción';

-- ========================
-- TTRAN (Transacciones del día)
-- ========================
COMMENT ON TABLE TTRAN IS 'TODO: Transacciones del día (detalle por corrida).';
LABEL ON TABLE TTRAN IS 'TTRAN - Transacciones Día';
COMMENT ON COLUMN TTRAN.id_transaccion_dia IS 'TODO: Identificador de la transacción diaria.';
COMMENT ON COLUMN TTRAN.numero_registro_relativo IS 'TODO: Referencia relacional (puede vincularse a TRANS).';
COMMENT ON COLUMN TTRAN.codigo_banco IS 'TODO: Código del banco (FK propuesta a GLBLN).';
COMMENT ON COLUMN TTRAN.cuenta_contable IS 'TODO: Cuenta contable (FK propuesta a GLBLN).';
LABEL ON COLUMN TTRAN.id_transaccion_dia IS 'ID Transacción Día';

-- ========================
-- CUMST (Clientes - maestro)
-- ========================
COMMENT ON TABLE CUMST IS 'TODO: Maestro de clientes. Información identificatoria del cliente.';
LABEL ON TABLE CUMST IS 'CUMST - Clientes';
COMMENT ON COLUMN CUMST.id_cliente IS 'TODO: Identificador único del cliente.';
LABEL ON COLUMN CUMST.id_cliente IS 'ID Cliente';

-- ========================
-- CUMAD (Direcciones/Contactos Clientes)
-- ========================
COMMENT ON TABLE CUMAD IS 'TODO: Direcciones y datos de contacto por cliente/operación.';
LABEL ON TABLE CUMAD IS 'CUMAD - Direcciones Clientes';
COMMENT ON COLUMN CUMAD.id_cliente_operacion IS 'TODO: Identificador del cliente u operación (FK propuesta a CUMST.id_cliente).';
LABEL ON COLUMN CUMAD.id_cliente_operacion IS 'ID Cliente/Operación';

-- ========================
-- ACMST (Cuentas de detalle)
-- ========================
COMMENT ON TABLE ACMST IS 'TODO: Maestro de cuentas de detalle.';
LABEL ON TABLE ACMST IS 'ACMST - Cuentas Detalle';
COMMENT ON COLUMN ACMST.id IS 'TODO: Identificador interno de la cuenta detalle.';
LABEL ON COLUMN ACMST.id IS 'ID Cuenta';

-- ========================
-- PBTRN (Transacciones de libretas de ahorro)
-- ========================
COMMENT ON TABLE PBTRN IS 'TODO: Transacciones de libretas de ahorro (detalle por cuenta y fecha).';
LABEL ON TABLE PBTRN IS 'PBTRN - Libretas Transacciones';
COMMENT ON COLUMN PBTRN.numero_cuenta IS 'TODO: Número de cuenta (sugerir FK a ACMST.numero_cuenta si aplica).';
LABEL ON COLUMN PBTRN.numero_cuenta IS 'Número Cuenta';

-- ========================
-- Propuestas de FOREIGN KEY (ajustar nombres según política)
-- ========================
-- Nota: revisar que los tipos y longitudes coincidan antes de aplicar en destino IBM i.

-- 1) Vincular TRANS(codigo_banco,codigo_sucursal,codigo_moneda,cuenta_contable) -> GLBLN(...)
ALTER TABLE TRANS
    ADD CONSTRAINT fk_trans_glbln
    FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
    REFERENCES GLBLN (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable);

-- 2) Vincular TTRAN(...) -> GLBLN(...)
ALTER TABLE TTRAN
    ADD CONSTRAINT fk_ttran_glbln
    FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
    REFERENCES GLBLN (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable);

-- 3) Vincular TRANS.id_cliente -> CUMST.id_cliente
ALTER TABLE TRANS
    ADD CONSTRAINT fk_trans_cumst
    FOREIGN KEY (id_cliente)
    REFERENCES CUMST (id_cliente);

-- 4) Vincular CUMAD.id_cliente_operacion -> CUMST.id_cliente
ALTER TABLE CUMAD
    ADD CONSTRAINT fk_cumad_cumst
    FOREIGN KEY (id_cliente_operacion)
    REFERENCES CUMST (id_cliente);

-- 5) Ejemplo: PBTRN.numero_cuenta -> ACMST.id (si corresponde mapping)
ALTER TABLE PBTRN
    ADD CONSTRAINT fk_pbtrn_acmst
    FOREIGN KEY (numero_cuenta)
    REFERENCES ACMST (id);

-- 6) Vincular TTRAN.numero_registro_relativo -> TRANS.numero_registro_relativo (si es única/consistente)
ALTER TABLE TTRAN
    ADD CONSTRAINT fk_ttran_trans_rel
    FOREIGN KEY (numero_registro_relativo)
    REFERENCES TRANS (numero_registro_relativo);

-- ========================
-- Indicaciones finales
-- - Reemplazar todos los 'TODO:' con descripciones reales.
-- - Si una FK propuesta no aplica, comentar o eliminar la sentencia.
-- - Considerar nombrar constraints con prefijos por convención (e.g., CONSTR_<tabla>_<tipo>).
-- - Añadir bloques de metadata de encabezado para cada script de creación de tabla.
-- - Agregar RCDFMT y RENAME TABLE ... FOR SYSTEM NAME ... si aplica en entorno IBM i.

COMMIT;
