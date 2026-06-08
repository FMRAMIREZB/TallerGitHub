-- FK proposals (commented) based on Documentacion_IBMi/Base_Datos/estructura_bd.md
-- Review column names/types and uncomment the ALTER TABLE statements to apply.
-- Use this file to enable FKs after validating column names and datatypes.

-- Example usage (after verifying columns exist and datatypes match):
-- ALTER TABLE child_table ADD CONSTRAINT fk_child_parent FOREIGN KEY (child_col1, child_col2) REFERENCES parent_table(parent_col1, parent_col2);

-- 1) Cliente relations
-- CUMAD -> CUMST
-- ALTER TABLE CUMAD ADD CONSTRAINT fk_cumad_cumst FOREIGN KEY (id_cliente) REFERENCES CUMST(id_cliente);

-- CUMSD -> CUMST
-- ALTER TABLE CUMSD ADD CONSTRAINT fk_cumsd_cumst FOREIGN KEY (id_cliente) REFERENCES CUMST(id_cliente);

-- SPINS -> CUMST (if SPINS has cliente or cuenta)
-- ALTER TABLE SPINS ADD CONSTRAINT fk_spins_cumst FOREIGN KEY (cuenta_o_cliente) REFERENCES CUMST(id_cliente);

-- 2) Cuentas / Detalle relations
-- ACMST -> CUMST (account owner)
-- ALTER TABLE ACMST ADD CONSTRAINT fk_acmst_cumst FOREIGN KEY (id_cliente) REFERENCES CUMST(id_cliente);

-- STPMT -> ACMST (bank/sucursal/moneda/cuenta_contable/numero_cuenta)
-- ALTER TABLE STPMT ADD CONSTRAINT fk_stpmt_acmst FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta) REFERENCES ACMST(codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta);

-- PBTRN -> ACMST (libreta tx linking account)
-- ALTER TABLE PBTRN ADD CONSTRAINT fk_pbtrn_acmst FOREIGN KEY (numero_cuenta) REFERENCES ACMST(numero_cuenta);

-- RCLNB -> ACMST
-- ALTER TABLE RCLNB ADD CONSTRAINT fk_rclnb_acmst FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta) REFERENCES ACMST(codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta);

-- CHMST/CHPER -> ACMST
-- ALTER TABLE CHMST ADD CONSTRAINT fk_chmst_acmst FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_cuenta) REFERENCES ACMST(codigo_banco, codigo_sucursal, codigo_moneda, numero_cuenta);
-- ALTER TABLE CHPER ADD CONSTRAINT fk_chper_chmst FOREIGN KEY (codigo_banco, codigo_sucursal, numero_cuenta) REFERENCES CHMST(codigo_banco, codigo_sucursal, numero_cuenta);

-- 3) Contratos / Deals relations
-- DLPMT -> DEALS
-- ALTER TABLE DLPMT ADD CONSTRAINT fk_dlpmtd_deals FOREIGN KEY (numero_prestamo) REFERENCES DEALS(id);
-- DLDRF -> DEALS
-- ALTER TABLE DLDRF ADD CONSTRAINT fk_dldrf_deals FOREIGN KEY (numero_prestamo) REFERENCES DEALS(id);

-- 4) Cartas de crédito relations
-- LCDOC -> LCMST
-- ALTER TABLE LCDOC ADD CONSTRAINT fk_lcdoc_lcmst FOREIGN KEY (numero_carta_credito) REFERENCES LCMST(id);
-- LCADM -> LCMST
-- ALTER TABLE LCADM ADD CONSTRAINT fk_lcadm_lcmst FOREIGN KEY (numero_carta_credito) REFERENCES LCMST(id);
-- LCCOV -> LCMST
-- ALTER TABLE LCCOV ADD CONSTRAINT fk_lccov_lcmst FOREIGN KEY (numero_carta_credito) REFERENCES LCMST(id);
-- LCDIN -> LCMST
-- ALTER TABLE LCDIN ADD CONSTRAINT fk_lcdin_lcmst FOREIGN KEY (numero_carta_credito) REFERENCES LCMST(id);

-- 5) Contabilidad relations
-- GLBLN -> GLMST (balance references master account)
-- ALTER TABLE GLBLN ADD CONSTRAINT fk_glbln_glmst FOREIGN KEY (cuenta_contable) REFERENCES GLMST(cuenta_contable);

-- INPUT/INPT2/NXINP -> GLMST (asientos contables referencia cuenta)
-- ALTER TABLE INPUT ADD CONSTRAINT fk_input_glmst FOREIGN KEY (cuenta_contable) REFERENCES GLMST(cuenta_contable);
-- ALTER TABLE INPT2 ADD CONSTRAINT fk_inpt2_glmst FOREIGN KEY (cuenta_contable) REFERENCES GLMST(cuenta_contable);

-- 6) Transacciones relations
-- TRDSC -> TRANS (numero_registro_relativo)
-- ALTER TABLE TRDSC ADD CONSTRAINT fk_trdsc_trans FOREIGN KEY (numero_registro_relativo) REFERENCES TRANS(numero_registro_relativo);

-- TTRAN -> TRANS (numero_registro_relativo)
-- ALTER TABLE TTRAN ADD CONSTRAINT fk_ttran_trans FOREIGN KEY (numero_registro_relativo) REFERENCES TRANS(numero_registro_relativo);

-- TTRAN -> GLMST / ACMST
-- ALTER TABLE TTRAN ADD CONSTRAINT fk_ttran_glmst FOREIGN KEY (cuenta_contable) REFERENCES GLMST(cuenta_contable);
-- ALTER TABLE TTRAN ADD CONSTRAINT fk_ttran_acmst FOREIGN KEY (numero_cuenta) REFERENCES ACMST(numero_cuenta);

-- 7) Proveedores / CxP relations
-- BAPRC -> BAVEN (proveedor)
-- ALTER TABLE BAPRC ADD CONSTRAINT fk_baprc_baven FOREIGN KEY (id_cliente) REFERENCES BAVEN(numero_proveedor);

-- 8) Propuesta de credito relations
-- PLPRD -> PLPCR
-- ALTER TABLE PLPRD ADD CONSTRAINT fk_plprd_plpcr FOREIGN KEY (numero_propuesta) REFERENCES PLPCR(numero_propuesta);
-- PLGRT -> PLPCR
-- ALTER TABLE PLGRT ADD CONSTRAINT fk_plgrt_plpcr FOREIGN KEY (numero_propuesta) REFERENCES PLPCR(numero_propuesta);

-- 9) Garantias relations
-- RCOLL -> ROCOL
-- ALTER TABLE RCOLL ADD CONSTRAINT fk_rcoll_rocol FOREIGN KEY (cuenta_a_garantizar) REFERENCES ROCOL(numero_cuenta);

-- 10) Documentos relations
-- DITBL -> DIMST
-- ALTER TABLE DITBL ADD CONSTRAINT fk_ditbl_dimst FOREIGN KEY (numero_tabla) REFERENCES DIMST(numero_tabla);

-- 11) Usuarios / Seguridad
-- USERS -> (si existe tabla de usuarios maestros) -- verify
-- ALTER TABLE USERS ADD CONSTRAINT fk_users_cumst FOREIGN KEY (codigo_usuario) REFERENCES CUMST(id_cliente);

-- NOTE: The above proposals are GENERIC templates derived from the conceptual model.
-- Before enabling any FK:
--  1) Verify exact column names/types in src/estructura_bd.sql
--  2) Ensure referencing and referenced columns have matching datatypes/lengths
--  3) Add or adjust constraint names to fit your naming conventions
--  4) For composite keys, ensure order of columns matches the PK definition in the parent table

-- To enable a specific FK, remove the leading '--' and run the ALTER TABLE statement.

