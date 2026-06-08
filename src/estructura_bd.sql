-- generated from estructura_bd.md
BEGIN;

-- Table CNOFT
CREATE TABLE CNOFT (
    codigo_tabla VARCHAR(20),
    idioma VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_tabla, idioma)
);
CREATE INDEX idx_cnoft_pk ON CNOFT (codigo_tabla, idioma);
CREATE INDEX idx_cnoft_created_at ON CNOFT (created_at);

-- Table CNOFC
CREATE TABLE CNOFC (
    codigo_tabla VARCHAR(20),
    codigo_registro VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_tabla, codigo_registro)
);
CREATE INDEX idx_cnofc_pk ON CNOFC (codigo_tabla, codigo_registro);
CREATE INDEX idx_cnofc_created_at ON CNOFC (created_at);

-- Table MLNCT
CREATE TABLE MLNCT (
    codigo_banco VARCHAR(20),
    codigo_de_notificacion VARCHAR(20),
    nivel INT,
    idioma VARCHAR(20),
    secuencia INT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_de_notificacion, nivel, idioma, secuencia)
);
CREATE INDEX idx_mlnct_pk ON MLNCT (codigo_banco, codigo_de_notificacion);
CREATE INDEX idx_mlnct_created_at ON MLNCT (created_at);

-- Table MLNOT
CREATE TABLE MLNOT (
    codigo_banco VARCHAR(20),
    fecha_proceso DATE,
    numero_cuenta VARCHAR(24),
    codigo_de_notificacion VARCHAR(20),
    nivel INT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, fecha_proceso, numero_cuenta, codigo_de_notificacion, nivel)
);
CREATE INDEX idx_mlnot_pk ON MLNOT (codigo_banco, fecha_proceso);
CREATE INDEX idx_mlnot_fecha ON MLNOT (fecha_proceso);

-- Table HSNOT
CREATE TABLE HSNOT (
    codigo_banco VARCHAR(20),
    fecha_proceso DATE,
    numero_cuenta VARCHAR(24),
    codigo_de_notificacion VARCHAR(20),
    nivel INT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, fecha_proceso, numero_cuenta, codigo_de_notificacion, nivel)
);
CREATE INDEX idx_hsnot_pk ON HSNOT (codigo_banco, fecha_proceso);
CREATE INDEX idx_hsnot_fecha ON HSNOT (fecha_proceso);

-- Table HEAD
CREATE TABLE HEAD (
    nombre_printer_file VARCHAR(50),
    secuencia INT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (nombre_printer_file, secuencia)
);
CREATE INDEX idx_head_pk ON HEAD (nombre_printer_file, secuencia);
CREATE INDEX idx_head_created_at ON HEAD (created_at);

-- Table MSSGS
CREATE TABLE MSSGS (
    id BIGINT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_mssgs_pk ON MSSGS (id);
CREATE INDEX idx_mssgs_created_at ON MSSGS (created_at);

-- Table HOLYD
CREATE TABLE HOLYD (
    codigo_moneda VARCHAR(20),
    fecha DATE,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_moneda, fecha)
);
CREATE INDEX idx_holyd_pk ON HOLYD (codigo_moneda, fecha);
CREATE INDEX idx_holyd_fecha ON HOLYD (fecha);

-- Table APCLS
CREATE TABLE APCLS (
    codigo_banco VARCHAR(20),
    codigo_de_producto VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_de_producto)
);
CREATE INDEX idx_apcls_pk ON APCLS (codigo_banco, codigo_de_producto);
CREATE INDEX idx_apcls_created_at ON APCLS (created_at);

-- Table RATES
CREATE TABLE RATES (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda)
);
CREATE INDEX idx_rates_pk ON RATES (codigo_banco, codigo_moneda);
CREATE INDEX idx_rates_created_at ON RATES (created_at);

-- Table RTRNS
CREATE TABLE RTRNS (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    fecha DATE,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda, fecha)
);
CREATE INDEX idx_rtrns_pk ON RTRNS (codigo_banco, codigo_moneda);
CREATE INDEX idx_rtrns_fecha ON RTRNS (fecha);

-- Table HLHIS
CREATE TABLE HLHIS (
    id BIGINT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_hlhis_pk ON HLHIS (id);
CREATE INDEX idx_hlhis_created_at ON HLHIS (created_at);

-- Table PRENA
CREATE TABLE PRENA (
    nombre_programa VARCHAR(50),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (nombre_programa)
);
CREATE INDEX idx_prena_pk ON PRENA (nombre_programa);
CREATE INDEX idx_prena_created_at ON PRENA (created_at);

-- Table PRENS
CREATE TABLE PRENS (
    nombre_programa VARCHAR(50),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (nombre_programa)
);
CREATE INDEX idx_prens_pk ON PRENS (nombre_programa);
CREATE INDEX idx_prens_created_at ON PRENS (created_at);

-- Table UT500
CREATE TABLE UT500 (
    codigo_usuario VARCHAR(20),
    fecha DATE,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_usuario, fecha)
);
CREATE INDEX idx_ut500_pk ON UT500 (codigo_usuario, fecha);
CREATE INDEX idx_ut500_fecha ON UT500 (fecha);

-- Table UT510
CREATE TABLE UT510 (
    codigo_usuario VARCHAR(20),
    fecha DATE,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_usuario, fecha)
);
CREATE INDEX idx_ut510_pk ON UT510 (codigo_usuario, fecha);
CREATE INDEX idx_ut510_fecha ON UT510 (fecha);

-- Table MICRF
CREATE TABLE MICRF (
    tipo_formulario VARCHAR(50),
    nombre_reporte VARCHAR(50),
    secuencia INT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (tipo_formulario, nombre_reporte, secuencia)
);
CREATE INDEX idx_micrf_pk ON MICRF (tipo_formulario, nombre_reporte);
CREATE INDEX idx_micrf_created_at ON MICRF (created_at);

-- Table IBSDD
CREATE TABLE IBSDD (
    id BIGINT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_ibsdd_pk ON IBSDD (id);
CREATE INDEX idx_ibsdd_created_at ON IBSDD (created_at);

-- Table IBTBL
CREATE TABLE IBTBL (
    id BIGINT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_ibtbl_pk ON IBTBL (id);
CREATE INDEX idx_ibtbl_created_at ON IBTBL (created_at);

-- Table TRANS
CREATE TABLE TRANS (
    id_transaccion BIGINT,
    numero_registro_relativo VARCHAR(30),
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    numero_cuenta VARCHAR(24),
    id_cliente VARCHAR(30),
    fecha_operacion DATE,
    fecha_valor DATE,
    hora_operacion TIME,
    tipo_movimiento VARCHAR(20),
    debito_credito CHAR(1),
    monto DECIMAL(18,2),
    saldo_anterior DECIMAL(18,2),
    saldo_posterior DECIMAL(18,2),
    canal_origen VARCHAR(20),
    terminal_origen VARCHAR(30),
    referencia_externa VARCHAR(40),
    estado_transaccion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_transaccion)
);
CREATE INDEX idx_trans_pk ON TRANS (id_transaccion);
CREATE INDEX idx_trans_reg_rel ON TRANS (numero_registro_relativo);
CREATE INDEX idx_trans_cuenta_fecha ON TRANS (numero_cuenta, fecha_operacion);
CREATE INDEX idx_trans_contable_fecha ON TRANS (cuenta_contable, fecha_operacion);
CREATE INDEX idx_trans_cliente_fecha ON TRANS (id_cliente, fecha_operacion);
CREATE INDEX idx_trans_created_at ON TRANS (created_at);

-- Table TRDSC
CREATE TABLE TRDSC (
    numero_registro_relativo VARCHAR(30),
    secuencia INT,
    tipo_descripcion VARCHAR(20),
    texto_descripcion VARCHAR(200),
    codigo_idioma VARCHAR(5),
    formato_salida VARCHAR(20),
    obligatorio BOOLEAN,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_registro_relativo, secuencia)
);
CREATE INDEX idx_trdsc_pk ON TRDSC (numero_registro_relativo, secuencia);
CREATE INDEX idx_trdsc_tipo ON TRDSC (tipo_descripcion);
CREATE INDEX idx_trdsc_created_at ON TRDSC (created_at);

-- Table TTRAN
CREATE TABLE TTRAN (
    id_transaccion_dia BIGINT,
    numero_registro_relativo VARCHAR(30),
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    numero_cuenta VARCHAR(24),
    id_cliente VARCHAR(30),
    fecha DATE,
    fecha_valor DATE,
    hora_operacion TIME,
    tipo_movimiento VARCHAR(20),
    debito_credito CHAR(1),
    monto DECIMAL(18,2),
    saldo_anterior DECIMAL(18,2),
    saldo_posterior DECIMAL(18,2),
    canal_origen VARCHAR(20),
    terminal_origen VARCHAR(30),
    referencia_externa VARCHAR(40),
    estado_transaccion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_transaccion_dia, codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, fecha)
);
CREATE INDEX idx_ttran_pk ON TTRAN (id_transaccion_dia, codigo_banco);
CREATE INDEX idx_ttran_reg_rel ON TTRAN (numero_registro_relativo);
CREATE INDEX idx_ttran_cuenta_fecha ON TTRAN (numero_cuenta, fecha);
CREATE INDEX idx_ttran_contable_fecha ON TTRAN (cuenta_contable, fecha);
CREATE INDEX idx_ttran_cliente_fecha ON TTRAN (id_cliente, fecha);
CREATE INDEX idx_ttran_fecha ON TTRAN (fecha);

-- Table CIFXF
CREATE TABLE CIFXF (
    id BIGINT,
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_cifxf_pk ON CIFXF (id);
CREATE INDEX idx_cifxf_created_at ON CIFXF (created_at);

-- Table CNTRLCNT
CREATE TABLE CNTRLCNT (
    codigo_banco VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco)
);
CREATE INDEX idx_cntrlcnt_pk ON CNTRLCNT (codigo_banco);
CREATE INDEX idx_cntrlcnt_created_at ON CNTRLCNT (created_at);

-- Table CNTRLBRN
CREATE TABLE CNTRLBRN (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal)
);
CREATE INDEX idx_cntrlbrn_pk ON CNTRLBRN (codigo_banco, codigo_sucursal);
CREATE INDEX idx_cntrlbrn_created_at ON CNTRLBRN (created_at);

-- Table CNTRLNUM
CREATE TABLE CNTRLNUM (
    codigo_aplicacion VARCHAR(20),
    tipo_cuenta VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_aplicacion, tipo_cuenta)
);
CREATE INDEX idx_cntrlnum_pk ON CNTRLNUM (codigo_aplicacion, tipo_cuenta);
CREATE INDEX idx_cntrlnum_created_at ON CNTRLNUM (created_at);

-- Table CNTRLTAX
CREATE TABLE CNTRLTAX (
    codigo_banco VARCHAR(20),
    codigo_impuesto VARCHAR(20),
    descripcion VARCHAR(120),
    valor_texto VARCHAR(50),
    valor_numerico DECIMAL(18,2),
    vigencia_desde DATE,
    vigencia_hasta DATE,
    orden_visualizacion INT,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_impuesto)
);
CREATE INDEX idx_cntrltax_pk ON CNTRLTAX (codigo_banco, codigo_impuesto);
CREATE INDEX idx_cntrltax_created_at ON CNTRLTAX (created_at);

-- Table CUMST
CREATE TABLE CUMST (
    id_cliente VARCHAR(30),
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente)
);
CREATE INDEX idx_cumst_pk ON CUMST (id_cliente);
CREATE INDEX idx_cumst_created_at ON CUMST (created_at);

-- Table CUMAD
CREATE TABLE CUMAD (
    id_cliente_operacion VARCHAR(30),
    tipo_registro VARCHAR(20),
    secuencia INT,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente_operacion, tipo_registro, secuencia)
);
CREATE INDEX idx_cumad_pk ON CUMAD (id_cliente_operacion, tipo_registro);
CREATE INDEX idx_cumad_created_at ON CUMAD (created_at);

-- Table CUMPR
CREATE TABLE CUMPR (
    palabra VARCHAR(50),
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (palabra)
);
CREATE INDEX idx_cumpr_pk ON CUMPR (palabra);
CREATE INDEX idx_cumpr_created_at ON CUMPR (created_at);

-- Table CUMSD
CREATE TABLE CUMSD (
    id_cliente VARCHAR(30),
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente)
);
CREATE INDEX idx_cumsd_pk ON CUMSD (id_cliente);
CREATE INDEX idx_cumsd_created_at ON CUMSD (created_at);

-- Table SPINS
CREATE TABLE SPINS (
    tipo_informacion VARCHAR(50),
    cuenta_o_cliente VARCHAR(50),
    secuencia INT,
    tipo_persona VARCHAR(20),
    tipo_identificacion VARCHAR(20),
    numero_identificacion VARCHAR(30),
    nombres VARCHAR(80),
    apellidos VARCHAR(80),
    razon_social VARCHAR(80),
    fecha_nacimiento DATE,
    direccion VARCHAR(120),
    email VARCHAR(80),
    telefono VARCHAR(80),
    pais_residencia VARCHAR(50),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (tipo_informacion, cuenta_o_cliente, secuencia)
);
CREATE INDEX idx_spins_pk ON SPINS (tipo_informacion, cuenta_o_cliente);
CREATE INDEX idx_spins_created_at ON SPINS (created_at);

-- Table ACMST
CREATE TABLE ACMST (
    id BIGINT,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_acmst_pk ON ACMST (id);
CREATE INDEX idx_acmst_created_at ON ACMST (created_at);

-- Table STPMT
CREATE TABLE STPMT (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    numero_cuenta VARCHAR(24),
    secuencia INT,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, secuencia)
);
CREATE INDEX idx_stpmt_pk ON STPMT (codigo_banco, codigo_sucursal);
CREATE INDEX idx_stpmt_created_at ON STPMT (created_at);

-- Table UNCOL
CREATE TABLE UNCOL (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    numero_cuenta VARCHAR(24),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cuenta)
);
CREATE INDEX idx_uncol_pk ON UNCOL (codigo_banco, codigo_sucursal);
CREATE INDEX idx_uncol_created_at ON UNCOL (created_at);

-- Table PBTRN
CREATE TABLE PBTRN (
    numero_cuenta VARCHAR(24),
    fecha DATE,
    hora TIME,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_cuenta, fecha, hora)
);
CREATE INDEX idx_pbtrn_pk ON PBTRN (numero_cuenta, fecha);
CREATE INDEX idx_pbtrn_fecha ON PBTRN (fecha);

-- Table OFMST
CREATE TABLE OFMST (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    numero_cheque VARCHAR(30),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cheque)
);
CREATE INDEX idx_ofmst_pk ON OFMST (codigo_banco, codigo_sucursal);
CREATE INDEX idx_ofmst_created_at ON OFMST (created_at);

-- Table RCLNB
CREATE TABLE RCLNB (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    numero_cuenta VARCHAR(24),
    fecha DATE,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta, fecha)
);
CREATE INDEX idx_rclnb_pk ON RCLNB (codigo_banco, codigo_sucursal);
CREATE INDEX idx_rclnb_fecha ON RCLNB (fecha);

-- Table TLMST
CREATE TABLE TLMST (
    codigo_de_cajero VARCHAR(20),
    codigo_moneda VARCHAR(20),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_de_cajero, codigo_moneda)
);
CREATE INDEX idx_tlmst_pk ON TLMST (codigo_de_cajero, codigo_moneda);
CREATE INDEX idx_tlmst_created_at ON TLMST (created_at);

-- Table TDRCR
CREATE TABLE TDRCR (
    codigo_de_transaccion VARCHAR(20),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_de_transaccion)
);
CREATE INDEX idx_tdrcr_pk ON TDRCR (codigo_de_transaccion);
CREATE INDEX idx_tdrcr_created_at ON TDRCR (created_at);

-- Table AUDIT
CREATE TABLE AUDIT (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_cajero VARCHAR(20),
    codigo_moneda VARCHAR(20),
    referencia VARCHAR(50),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_cajero, codigo_moneda, referencia)
);
CREATE INDEX idx_audit_pk ON AUDIT (codigo_banco, codigo_sucursal);
CREATE INDEX idx_audit_created_at ON AUDIT (created_at);

-- Table CHMST
CREATE TABLE CHMST (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    numero_cuenta VARCHAR(24),
    cheque_inicial VARCHAR(50),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_cuenta, cheque_inicial)
);
CREATE INDEX idx_chmst_pk ON CHMST (codigo_banco, codigo_sucursal);
CREATE INDEX idx_chmst_created_at ON CHMST (created_at);

-- Table CHPER
CREATE TABLE CHPER (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    numero_cuenta VARCHAR(24),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, numero_cuenta)
);
CREATE INDEX idx_chper_pk ON CHPER (codigo_banco, codigo_sucursal);
CREATE INDEX idx_chper_created_at ON CHPER (created_at);

-- Table CHSTS
CREATE TABLE CHSTS (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    numero_cuenta VARCHAR(24),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable, numero_cuenta)
);
CREATE INDEX idx_chsts_pk ON CHSTS (codigo_banco, codigo_sucursal);
CREATE INDEX idx_chsts_created_at ON CHSTS (created_at);

-- Table DEVOL
CREATE TABLE DEVOL (
    numero_cuenta VARCHAR(24),
    numero_cheque VARCHAR(30),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_cuenta, numero_cheque)
);
CREATE INDEX idx_devol_pk ON DEVOL (numero_cuenta, numero_cheque);
CREATE INDEX idx_devol_created_at ON DEVOL (created_at);

-- Table CMRIN
CREATE TABLE CMRIN (
    codigo_banco VARCHAR(20),
    sucursal_moneda VARCHAR(50),
    numero_cuenta VARCHAR(24),
    monto DECIMAL(18,2),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, sucursal_moneda, numero_cuenta, monto)
);
CREATE INDEX idx_cmrin_pk ON CMRIN (codigo_banco, sucursal_moneda);
CREATE INDEX idx_cmrin_created_at ON CMRIN (created_at);

-- Table OVDRF
CREATE TABLE OVDRF (
    id BIGINT,
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_ovdrf_pk ON OVDRF (id);
CREATE INDEX idx_ovdrf_created_at ON OVDRF (created_at);

-- Table CNTRLMSG
CREATE TABLE CNTRLMSG (
    codigo_banco VARCHAR(20),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco)
);
CREATE INDEX idx_cntrlmsg_pk ON CNTRLMSG (codigo_banco);
CREATE INDEX idx_cntrlmsg_created_at ON CNTRLMSG (created_at);

-- Table CNTRLRTE
CREATE TABLE CNTRLRTE (
    codigo_banco VARCHAR(20),
    tipo_producto VARCHAR(20),
    codigo_tabla VARCHAR(20),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, tipo_producto, codigo_tabla)
);
CREATE INDEX idx_cntrlrte_pk ON CNTRLRTE (codigo_banco, tipo_producto);
CREATE INDEX idx_cntrlrte_created_at ON CNTRLRTE (created_at);

-- Table CNTRLDEV
CREATE TABLE CNTRLDEV (
    codigo_causal VARCHAR(20),
    fecha_apertura DATE,
    fecha_ultima_transaccion DATE,
    saldo_actual DECIMAL(18,2),
    saldo_disponible DECIMAL(18,2),
    limite_sobregiro DECIMAL(18,2),
    estado_cuenta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_causal)
);
CREATE INDEX idx_cntrldev_pk ON CNTRLDEV (codigo_causal);
CREATE INDEX idx_cntrldev_created_at ON CNTRLDEV (created_at);

-- Table DEALS
CREATE TABLE DEALS (
    id BIGINT,
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_deals_pk ON DEALS (id);
CREATE INDEX idx_deals_created_at ON DEALS (created_at);

-- Table DLPMT
CREATE TABLE DLPMT (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    numero_prestamo VARCHAR(30),
    fecha DATE,
    tipo_registro VARCHAR(20),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_prestamo, fecha, tipo_registro)
);
CREATE INDEX idx_dlpmt_pk ON DLPMT (codigo_banco, codigo_sucursal);
CREATE INDEX idx_dlpmt_fecha ON DLPMT (fecha);

-- Table DLDRF
CREATE TABLE DLDRF (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    numero_prestamo VARCHAR(30),
    identificacion VARCHAR(50),
    numero_documento VARCHAR(30),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_prestamo, identificacion, numero_documento)
);
CREATE INDEX idx_dldrf_pk ON DLDRF (codigo_banco, codigo_sucursal);
CREATE INDEX idx_dldrf_created_at ON DLDRF (created_at);

-- Table DLSDE
CREATE TABLE DLSDE (
    numero_prestamo VARCHAR(30),
    fecha DATE,
    tipo_registro VARCHAR(20),
    secuencia INT,
    codigo_deduccion VARCHAR(20),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_prestamo, fecha, tipo_registro, secuencia, codigo_deduccion)
);
CREATE INDEX idx_dlsde_pk ON DLSDE (numero_prestamo, fecha);
CREATE INDEX idx_dlsde_fecha ON DLSDE (fecha);

-- Table DLCLP
CREATE TABLE DLCLP (
    id_cliente VARCHAR(30),
    numero_cuenta VARCHAR(24),
    referencia VARCHAR(50),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente, numero_cuenta, referencia)
);
CREATE INDEX idx_dlclp_pk ON DLCLP (id_cliente, numero_cuenta);
CREATE INDEX idx_dlclp_created_at ON DLCLP (created_at);

-- Table DDCPN
CREATE TABLE DDCPN (
    numero_prestamo VARCHAR(30),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_prestamo)
);
CREATE INDEX idx_ddcpn_pk ON DDCPN (numero_prestamo);
CREATE INDEX idx_ddcpn_created_at ON DDCPN (created_at);

-- Table DLITP
CREATE TABLE DLITP (
    numero_prestamo VARCHAR(30),
    codigo_deduccion VARCHAR(20),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_prestamo, codigo_deduccion)
);
CREATE INDEX idx_dlitp_pk ON DLITP (numero_prestamo, codigo_deduccion);
CREATE INDEX idx_dlitp_created_at ON DLITP (created_at);

-- Table CDRTE
CREATE TABLE CDRTE (
    numero_tabla VARCHAR(30),
    fecha DATE,
    codigo_moneda VARCHAR(20),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_tabla, fecha, codigo_moneda)
);
CREATE INDEX idx_cdrte_pk ON CDRTE (numero_tabla, fecha);
CREATE INDEX idx_cdrte_fecha ON CDRTE (fecha);

-- Table CNTRLDLS
CREATE TABLE CNTRLDLS (
    codigo_banco VARCHAR(20),
    numero_tabla VARCHAR(30),
    tipo_producto VARCHAR(20),
    fecha_desembolso DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    tasa_interes DECIMAL(18,2),
    plazo_meses INT,
    dias_mora INT,
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, numero_tabla, tipo_producto)
);
CREATE INDEX idx_cntrldls_pk ON CNTRLDLS (codigo_banco, numero_tabla);
CREATE INDEX idx_cntrldls_created_at ON CNTRLDLS (created_at);

-- Table LCMST
CREATE TABLE LCMST (
    id BIGINT,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_lcmst_pk ON LCMST (id);
CREATE INDEX idx_lcmst_created_at ON LCMST (created_at);

-- Table LCDOC
CREATE TABLE LCDOC (
    numero_carta_credito VARCHAR(30),
    tipo_registro VARCHAR(20),
    codigo_banco VARCHAR(20),
    codigo_documento VARCHAR(20),
    numero_linea VARCHAR(30),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_carta_credito, tipo_registro, codigo_banco, codigo_documento, numero_linea)
);
CREATE INDEX idx_lcdoc_pk ON LCDOC (numero_carta_credito, tipo_registro);
CREATE INDEX idx_lcdoc_created_at ON LCDOC (created_at);

-- Table LCFIN
CREATE TABLE LCFIN (
    nivel INT,
    codigo_documento VARCHAR(20),
    secuencia_de_texto VARCHAR(50),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (nivel, codigo_documento, secuencia_de_texto)
);
CREATE INDEX idx_lcfin_pk ON LCFIN (nivel, codigo_documento);
CREATE INDEX idx_lcfin_created_at ON LCFIN (created_at);

-- Table LCFMT
CREATE TABLE LCFMT (
    codigo_documento VARCHAR(20),
    secuencia_de_texto VARCHAR(50),
    numero_linea VARCHAR(30),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_documento, secuencia_de_texto, numero_linea)
);
CREATE INDEX idx_lcfmt_pk ON LCFMT (codigo_documento, secuencia_de_texto);
CREATE INDEX idx_lcfmt_created_at ON LCFMT (created_at);

-- Table LCADM
CREATE TABLE LCADM (
    numero_carta_credito VARCHAR(30),
    numero_enmienda VARCHAR(30),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_carta_credito, numero_enmienda)
);
CREATE INDEX idx_lcadm_pk ON LCADM (numero_carta_credito, numero_enmienda);
CREATE INDEX idx_lcadm_created_at ON LCADM (created_at);

-- Table LCCOV
CREATE TABLE LCCOV (
    numero_carta_credito VARCHAR(30),
    secuencia INT,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_carta_credito, secuencia)
);
CREATE INDEX idx_lccov_pk ON LCCOV (numero_carta_credito, secuencia);
CREATE INDEX idx_lccov_created_at ON LCCOV (created_at);

-- Table LCDIN
CREATE TABLE LCDIN (
    numero_carta_credito VARCHAR(30),
    secuencia INT,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_carta_credito, secuencia)
);
CREATE INDEX idx_lcdin_pk ON LCDIN (numero_carta_credito, secuencia);
CREATE INDEX idx_lcdin_created_at ON LCDIN (created_at);

-- Table LCSTA
CREATE TABLE LCSTA (
    id BIGINT,
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_lcsta_pk ON LCSTA (id);
CREATE INDEX idx_lcsta_created_at ON LCSTA (created_at);

-- Table CNTRLLCP
CREATE TABLE CNTRLLCP (
    codigo_banco VARCHAR(20),
    lcrparm VARCHAR(20),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, lcrparm)
);
CREATE INDEX idx_cntrllcp_pk ON CNTRLLCP (codigo_banco, lcrparm);
CREATE INDEX idx_cntrllcp_created_at ON CNTRLLCP (created_at);

-- Table CNTRLRLC
CREATE TABLE CNTRLRLC (
    codigo_banco VARCHAR(20),
    tipo_producto VARCHAR(20),
    numero_tabla VARCHAR(30),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_actual DECIMAL(18,2),
    banco_corresponsal VARCHAR(80),
    pais_destino VARCHAR(80),
    estado_carta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, tipo_producto, numero_tabla)
);
CREATE INDEX idx_cntrlrlc_pk ON CNTRLRLC (codigo_banco, tipo_producto);
CREATE INDEX idx_cntrlrlc_created_at ON CNTRLRLC (created_at);

-- Table DCMST
CREATE TABLE DCMST (
    id BIGINT,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_dcmst_pk ON DCMST (id);
CREATE INDEX idx_dcmst_created_at ON DCMST (created_at);

-- Table APPRV
CREATE TABLE APPRV (
    numero_carta_credito VARCHAR(30),
    tipo_registro VARCHAR(20),
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_carta_credito, tipo_registro)
);
CREATE INDEX idx_apprv_pk ON APPRV (numero_carta_credito, tipo_registro);
CREATE INDEX idx_apprv_created_at ON APPRV (created_at);

-- Table LCFEE
CREATE TABLE LCFEE (
    numero_carta_credito VARCHAR(30),
    codigo_de_comision VARCHAR(20),
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_carta_credito, codigo_de_comision)
);
CREATE INDEX idx_lcfee_pk ON LCFEE (numero_carta_credito, codigo_de_comision);
CREATE INDEX idx_lcfee_created_at ON LCFEE (created_at);

-- Table CNTRLRCO
CREATE TABLE CNTRLRCO (
    codigo_banco VARCHAR(20),
    tipo_producto VARCHAR(20),
    numero_tabla VARCHAR(30),
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    tipo_documento VARCHAR(20),
    estado_operacion VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, tipo_producto, numero_tabla)
);
CREATE INDEX idx_cntrlrco_pk ON CNTRLRCO (codigo_banco, tipo_producto);
CREATE INDEX idx_cntrlrco_created_at ON CNTRLRCO (created_at);

-- Table GLMST
CREATE TABLE GLMST (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda, cuenta_contable)
);
CREATE INDEX idx_glmst_pk ON GLMST (codigo_banco, codigo_moneda);
CREATE INDEX idx_glmst_created_at ON GLMST (created_at);

-- Table INPUT
CREATE TABLE INPUT (
    numero_del_lote VARCHAR(30),
    secuencia_dentro_del_lote VARCHAR(50),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_del_lote, secuencia_dentro_del_lote)
);
CREATE INDEX idx_input_pk ON INPUT (numero_del_lote, secuencia_dentro_del_lote);
CREATE INDEX idx_input_created_at ON INPUT (created_at);

-- Table GLBLN
CREATE TABLE GLBLN (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    cuenta_contable VARCHAR(24),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
);
CREATE INDEX idx_glbln_pk ON GLBLN (codigo_banco, codigo_sucursal);
CREATE INDEX idx_glbln_created_at ON GLBLN (created_at);

-- Table GLBSE
CREATE TABLE GLBSE (
    id BIGINT,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_glbse_pk ON GLBSE (id);
CREATE INDEX idx_glbse_created_at ON GLBSE (created_at);

-- Table GLFIN
CREATE TABLE GLFIN (
    id BIGINT,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_glfin_pk ON GLFIN (id);
CREATE INDEX idx_glfin_created_at ON GLFIN (created_at);

-- Table CCDSC
CREATE TABLE CCDSC (
    id BIGINT,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_ccdsc_pk ON CCDSC (id);
CREATE INDEX idx_ccdsc_created_at ON CCDSC (created_at);

-- Table INPT2
CREATE TABLE INPT2 (
    id BIGINT,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE INDEX idx_inpt2_pk ON INPT2 (id);
CREATE INDEX idx_inpt2_created_at ON INPT2 (created_at);

-- Table NXINP
CREATE TABLE NXINP (
    numero_batch VARCHAR(30),
    secuencia INT,
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_batch, secuencia)
);
CREATE INDEX idx_nxinp_pk ON NXINP (numero_batch, secuencia);
CREATE INDEX idx_nxinp_created_at ON NXINP (created_at);

-- Table BUMST
CREATE TABLE BUMST (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    codigo_moneda VARCHAR(20),
    numero_presupuesto VARCHAR(30),
    centro_costo VARCHAR(50),
    descripcion_cuenta VARCHAR(120),
    naturaleza_cuenta VARCHAR(20),
    nivel_cuenta VARCHAR(50),
    saldo_actual DECIMAL(18,2),
    fecha_proceso_sistema TIMESTAMP,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, codigo_moneda, numero_presupuesto, centro_costo)
);
CREATE INDEX idx_bumst_pk ON BUMST (codigo_banco, codigo_sucursal);
CREATE INDEX idx_bumst_created_at ON BUMST (created_at);

-- Table ROCOL
CREATE TABLE ROCOL (
    codigo_banco VARCHAR(20),
    id_cliente VARCHAR(30),
    numero_garantia VARCHAR(30),
    tipo_garantia VARCHAR(20),
    valor_garantia DECIMAL(18,2),
    fecha_avaluo DATE,
    fecha_vencimiento DATE,
    estado_garantia VARCHAR(20),
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, id_cliente, numero_garantia)
);
CREATE INDEX idx_rocol_pk ON ROCOL (codigo_banco, id_cliente);
CREATE INDEX idx_rocol_created_at ON ROCOL (created_at);

-- Table RCOLL
CREATE TABLE RCOLL (
    codigo_banco VARCHAR(20),
    cuenta_a_garantizar VARCHAR(50),
    cuenta_que_garantiza VARCHAR(50),
    tipo_garantia VARCHAR(20),
    valor_garantia DECIMAL(18,2),
    fecha_avaluo DATE,
    fecha_vencimiento DATE,
    estado_garantia VARCHAR(20),
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, cuenta_a_garantizar, cuenta_que_garantiza)
);
CREATE INDEX idx_rcoll_pk ON RCOLL (codigo_banco, cuenta_a_garantizar);
CREATE INDEX idx_rcoll_created_at ON RCOLL (created_at);

-- Table LNECR
CREATE TABLE LNECR (
    id_cliente VARCHAR(30),
    numero_linea VARCHAR(30),
    fecha_aprobacion DATE,
    fecha_vencimiento DATE,
    monto_aprobado DECIMAL(18,2),
    monto_utilizado DECIMAL(18,2),
    monto_disponible DECIMAL(18,2),
    estado_linea VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente, numero_linea)
);
CREATE INDEX idx_lnecr_pk ON LNECR (id_cliente, numero_linea);
CREATE INDEX idx_lnecr_created_at ON LNECR (created_at);

-- Table FIXMS
CREATE TABLE FIXMS (
    numero_activo VARCHAR(30),
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INT,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_activo)
);
CREATE INDEX idx_fixms_pk ON FIXMS (numero_activo);
CREATE INDEX idx_fixms_created_at ON FIXMS (created_at);

-- Table CLSMS
CREATE TABLE CLSMS (
    codigo_clase VARCHAR(20),
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INT,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_clase)
);
CREATE INDEX idx_clsms_pk ON CLSMS (codigo_clase);
CREATE INDEX idx_clsms_created_at ON CLSMS (created_at);

-- Table LOCMS
CREATE TABLE LOCMS (
    numero_localizacion VARCHAR(30),
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INT,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_localizacion)
);
CREATE INDEX idx_locms_pk ON LOCMS (numero_localizacion);
CREATE INDEX idx_locms_created_at ON LOCMS (created_at);

-- Table CNTRLFIX
CREATE TABLE CNTRLFIX (
    codigo_banco VARCHAR(20),
    descripcion VARCHAR(120),
    fecha_adquisicion DATE,
    valor_adquisicion DECIMAL(18,2),
    vida_util_meses INT,
    depreciacion_acumulada DECIMAL(18,2),
    estado_activo VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco)
);
CREATE INDEX idx_cntrlfix_pk ON CNTRLFIX (codigo_banco);
CREATE INDEX idx_cntrlfix_created_at ON CNTRLFIX (created_at);

-- Table BAVEN
CREATE TABLE BAVEN (
    numero_proveedor VARCHAR(30),
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_proveedor)
);
CREATE INDEX idx_baven_pk ON BAVEN (numero_proveedor);
CREATE INDEX idx_baven_created_at ON BAVEN (created_at);

-- Table BAPRC
CREATE TABLE BAPRC (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    origen_cuenta VARCHAR(20),
    tipo_cuenta VARCHAR(20),
    id_cliente VARCHAR(30),
    numero_referencia VARCHAR(30),
    tipo_registro VARCHAR(20),
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, tipo_registro)
);
CREATE INDEX idx_baprc_pk ON BAPRC (codigo_banco, codigo_sucursal);
CREATE INDEX idx_baprc_created_at ON BAPRC (created_at);

-- Table BAMOR
CREATE TABLE BAMOR (
    codigo_banco VARCHAR(20),
    codigo_sucursal VARCHAR(20),
    origen_cuenta VARCHAR(20),
    tipo_cuenta VARCHAR(20),
    id_cliente VARCHAR(30),
    numero_referencia VARCHAR(30),
    tipo_registro VARCHAR(20),
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_sucursal, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, tipo_registro)
);
CREATE INDEX idx_bamor_pk ON BAMOR (codigo_banco, codigo_sucursal);
CREATE INDEX idx_bamor_created_at ON BAMOR (created_at);

-- Table BAINP
CREATE TABLE BAINP (
    numero_batch VARCHAR(30),
    secuencia INT,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_batch, secuencia)
);
CREATE INDEX idx_bainp_pk ON BAINP (numero_batch, secuencia);
CREATE INDEX idx_bainp_created_at ON BAINP (created_at);

-- Table BAHIS
CREATE TABLE BAHIS (
    codigo_banco VARCHAR(20),
    origen_cuenta VARCHAR(20),
    tipo_cuenta VARCHAR(20),
    id_cliente VARCHAR(30),
    numero_referencia VARCHAR(30),
    fecha DATE,
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, origen_cuenta, tipo_cuenta, id_cliente, numero_referencia, fecha)
);
CREATE INDEX idx_bahis_pk ON BAHIS (codigo_banco, origen_cuenta);
CREATE INDEX idx_bahis_fecha ON BAHIS (fecha);

-- Table CNTRLBAF
CREATE TABLE CNTRLBAF (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda)
);
CREATE INDEX idx_cntrlbaf_pk ON CNTRLBAF (codigo_banco, codigo_moneda);
CREATE INDEX idx_cntrlbaf_created_at ON CNTRLBAF (created_at);

-- Table CNTRLBAP
CREATE TABLE CNTRLBAP (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    numero_identificacion VARCHAR(30),
    razon_social VARCHAR(80),
    email VARCHAR(80),
    telefono VARCHAR(80),
    monto_original DECIMAL(18,2),
    saldo_pendiente DECIMAL(18,2),
    fecha_emision DATE,
    fecha_vencimiento DATE,
    estado_cxp VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda)
);
CREATE INDEX idx_cntrlbap_pk ON CNTRLBAP (codigo_banco, codigo_moneda);
CREATE INDEX idx_cntrlbap_created_at ON CNTRLBAP (created_at);

-- Table FIWRT
CREATE TABLE FIWRT (
    codigo_banco VARCHAR(20),
    numero_transferencia VARCHAR(30),
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, numero_transferencia)
);
CREATE INDEX idx_fiwrt_pk ON FIWRT (codigo_banco, numero_transferencia);
CREATE INDEX idx_fiwrt_created_at ON FIWRT (created_at);

-- Table POFED
CREATE TABLE POFED (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    id_cliente VARCHAR(30),
    tipo_registro VARCHAR(20),
    numero_cuenta VARCHAR(24),
    numero_referencia VARCHAR(30),
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia)
);
CREATE INDEX idx_pofed_pk ON POFED (codigo_banco, codigo_moneda);
CREATE INDEX idx_pofed_created_at ON POFED (created_at);

-- Table POSWF
CREATE TABLE POSWF (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    id_cliente VARCHAR(30),
    tipo_registro VARCHAR(20),
    numero_cuenta VARCHAR(24),
    numero_referencia VARCHAR(30),
    monto DECIMAL(18,2),
    fecha_operacion DATE,
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia, monto)
);
CREATE INDEX idx_poswf_pk ON POSWF (codigo_banco, codigo_moneda);
CREATE INDEX idx_poswf_created_at ON POSWF (created_at);

-- Table POTLX
CREATE TABLE POTLX (
    codigo_banco VARCHAR(20),
    codigo_moneda VARCHAR(20),
    id_cliente VARCHAR(30),
    tipo_registro VARCHAR(20),
    numero_cuenta VARCHAR(24),
    numero_referencia VARCHAR(30),
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, codigo_moneda, id_cliente, tipo_registro, numero_cuenta, numero_referencia)
);
CREATE INDEX idx_potlx_pk ON POTLX (codigo_banco, codigo_moneda);
CREATE INDEX idx_potlx_created_at ON POTLX (created_at);

-- Table SWITF
CREATE TABLE SWITF (
    codigo_banco VARCHAR(20),
    numero_referencia VARCHAR(30),
    formato_swift VARCHAR(50),
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, numero_referencia, formato_swift)
);
CREATE INDEX idx_switf_pk ON SWITF (codigo_banco, numero_referencia);
CREATE INDEX idx_switf_created_at ON SWITF (created_at);

-- Table CNTRLPRF
CREATE TABLE CNTRLPRF (
    codigo_banco VARCHAR(20),
    parametro VARCHAR(20),
    codigo_tabla VARCHAR(20),
    fecha_operacion DATE,
    monto DECIMAL(18,2),
    beneficiario VARCHAR(80),
    banco_destino VARCHAR(80),
    canal_pago VARCHAR(20),
    estado_pago VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_banco, parametro, codigo_tabla)
);
CREATE INDEX idx_cntrlprf_pk ON CNTRLPRF (codigo_banco, parametro);
CREATE INDEX idx_cntrlprf_created_at ON CNTRLPRF (created_at);

-- Table PLPCR
CREATE TABLE PLPCR (
    numero_propuesta VARCHAR(30),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_propuesta)
);
CREATE INDEX idx_plpcr_pk ON PLPCR (numero_propuesta);
CREATE INDEX idx_plpcr_created_at ON PLPCR (created_at);

-- Table PLPRD
CREATE TABLE PLPRD (
    numero_propuesta VARCHAR(30),
    codigo_producto VARCHAR(20),
    tipo_producto VARCHAR(20),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_propuesta, codigo_producto, tipo_producto)
);
CREATE INDEX idx_plprd_pk ON PLPRD (numero_propuesta, codigo_producto);
CREATE INDEX idx_plprd_created_at ON PLPRD (created_at);

-- Table PLGRT
CREATE TABLE PLGRT (
    numero_propuesta VARCHAR(30),
    secuencia INT,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_propuesta, secuencia)
);
CREATE INDEX idx_plgrt_pk ON PLGRT (numero_propuesta, secuencia);
CREATE INDEX idx_plgrt_created_at ON PLGRT (created_at);

-- Table DPMST
CREATE TABLE DPMST (
    id_cliente VARCHAR(30),
    secuencia INT,
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente, secuencia)
);
CREATE INDEX idx_dpmst_pk ON DPMST (id_cliente, secuencia);
CREATE INDEX idx_dpmst_created_at ON DPMST (created_at);

-- Table DPDTL
CREATE TABLE DPDTL (
    id_cliente VARCHAR(30),
    secuencia INT,
    tipo_registro VARCHAR(20),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente, secuencia, tipo_registro)
);
CREATE INDEX idx_dpdtl_pk ON DPDTL (id_cliente, secuencia);
CREATE INDEX idx_dpdtl_created_at ON DPDTL (created_at);

-- Table IFMST
CREATE TABLE IFMST (
    id_cliente VARCHAR(30),
    anio INT,
    mes INT,
    formato_balance VARCHAR(50),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente, anio, mes, formato_balance)
);
CREATE INDEX idx_ifmst_pk ON IFMST (id_cliente, anio);
CREATE INDEX idx_ifmst_created_at ON IFMST (created_at);

-- Table IFDTL
CREATE TABLE IFDTL (
    id_cliente VARCHAR(30),
    anio INT,
    mes INT,
    formato_balance VARCHAR(50),
    codigo_linea VARCHAR(20),
    codigo_cuenta VARCHAR(20),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente, anio, mes, formato_balance, codigo_linea, codigo_cuenta)
);
CREATE INDEX idx_ifdtl_pk ON IFDTL (id_cliente, anio);
CREATE INDEX idx_ifdtl_created_at ON IFDTL (created_at);

-- Table DPGLN
CREATE TABLE DPGLN (
    tipo_balance VARCHAR(20),
    codigo_cuenta VARCHAR(20),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (tipo_balance, codigo_cuenta)
);
CREATE INDEX idx_dpgln_pk ON DPGLN (tipo_balance, codigo_cuenta);
CREATE INDEX idx_dpgln_created_at ON DPGLN (created_at);

-- Table LIMST
CREATE TABLE LIMST (
    id_cliente VARCHAR(30),
    fecha_propuesta DATE,
    monto_solicitado DECIMAL(18,2),
    plazo_meses INT,
    tasa_propuesta DECIMAL(18,2),
    dictamen_credito VARCHAR(120),
    estado_propuesta VARCHAR(20),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_cliente)
);
CREATE INDEX idx_limst_pk ON LIMST (id_cliente);
CREATE INDEX idx_limst_created_at ON LIMST (created_at);

-- Table DIMST
CREATE TABLE DIMST (
    tipo_cuenta VARCHAR(20),
    numero_tabla VARCHAR(30),
    secuencia INT,
    tipo_documento VARCHAR(20),
    descripcion_documento VARCHAR(120),
    obligatorio BOOLEAN,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (tipo_cuenta, numero_tabla, secuencia)
);
CREATE INDEX idx_dimst_pk ON DIMST (tipo_cuenta, numero_tabla);
CREATE INDEX idx_dimst_created_at ON DIMST (created_at);

-- Table DITBL
CREATE TABLE DITBL (
    numero_tabla VARCHAR(30),
    secuencia INT,
    tipo_documento VARCHAR(20),
    descripcion_documento VARCHAR(120),
    obligatorio BOOLEAN,
    fecha_recepcion DATE,
    fecha_vencimiento DATE,
    observaciones VARCHAR(120),
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (numero_tabla, secuencia)
);
CREATE INDEX idx_ditbl_pk ON DITBL (numero_tabla, secuencia);
CREATE INDEX idx_ditbl_created_at ON DITBL (created_at);

-- Table USERS
CREATE TABLE USERS (
    codigo_usuario VARCHAR(20),
    menu VARCHAR(20),
    opcion VARCHAR(20),
    rol VARCHAR(20),
    nivel_autorizacion INT,
    permite_consulta BOOLEAN,
    permite_creacion BOOLEAN,
    permite_actualizacion BOOLEAN,
    permite_aprobacion BOOLEAN,
    usuario_creacion VARCHAR(30),
    usuario_actualizacion VARCHAR(30),
    version_registro INT,
    observaciones VARCHAR(120),
    estado_registro CHAR(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (codigo_usuario, menu, opcion)
);
CREATE INDEX idx_users_pk ON USERS (codigo_usuario, menu);
CREATE INDEX idx_users_created_at ON USERS (created_at);

COMMIT;