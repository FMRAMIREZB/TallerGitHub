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
    /*
    Metadata y Comentarios (generado):
    Este bloque contiene los `COMMENT ON TABLE`, `LABEL ON TABLE` y `COMMENT ON COLUMN`
    para las tablas del esquema, más una sección de propuestas de FK. 
    Se han activado sólo las FKs que pueden validarse por nombre/columnas en el DDL;
    otras propuestas quedan como sentencias comentadas para revisión manual.
    */

    -- BEGIN METADATA

    -- (Comentarios y labels generados para todas las tablas)

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

    -- (resto de comentarios resumidos por brevedad)

    -- ==============
    -- Foreign Keys (validadas / propuestas)
    -- ==============

    -- FKs activas (validadas contra el DDL por nombre de columnas):
    ALTER TABLE TRANS
        ADD CONSTRAINT fk_trans_glbln
        FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
        REFERENCES GLBLN (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable);

    ALTER TABLE TTRAN
        ADD CONSTRAINT fk_ttran_glbln
        FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
        REFERENCES GLBLN (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable);

    ALTER TABLE TRANS
        ADD CONSTRAINT fk_trans_cumst
        FOREIGN KEY (id_cliente)
        REFERENCES CUMST (id_cliente);

    ALTER TABLE CUMAD
        ADD CONSTRAINT fk_cumad_cumst
        FOREIGN KEY (id_cliente_operacion)
        REFERENCES CUMST (id_cliente);

    -- FKs propuestas (COMENTADAS) — requieren revisión de tipos/PKs antes de activar
    -- PBTRN.numero_cuenta referencia a ACMST.id: tipos incompatibles (VARCHAR vs BIGINT) — revisar mapping
    -- ALTER TABLE PBTRN
    --     ADD CONSTRAINT fk_pbtrn_acmst
    --     FOREIGN KEY (numero_cuenta)
    --     REFERENCES ACMST (id);

    -- TTRAN.numero_registro_relativo -> TRANS.numero_registro_relativo
    -- Nota: `TRANS.numero_registro_relativo` no es PK/UNIQUE. Verificar requisito de unicidad o usar FK lógica alternativa.
    -- ALTER TABLE TTRAN
    --     ADD CONSTRAINT fk_ttran_trans_rel
    --     FOREIGN KEY (numero_registro_relativo)
    --     REFERENCES TRANS (numero_registro_relativo);

    -- Para ver más propuestas y plantillas, consulte src/estructura_bd_fk_proposals.sql

    COMMIT;
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

-- ========================
-- Metadata adicional y propuestas de FK (generado automáticamente)
-- Reemplace y ajuste según convención del proyecto antes de desplegar.
-- ========================

/*
Notas de integración:
- Este bloque añade `COMMENT` y `LABEL` para facilitar trazabilidad y generación de documentación.
- También incluye `ALTER TABLE ... ADD CONSTRAINT` para FK propuestas. Verificar tipos y datos existentes antes de aplicar en producción.
*/

-- GLBLN (Balances Generales)
COMMENT ON TABLE GLBLN IS 'Balances Generales — registro de saldos por banco, sucursal, moneda y cuenta contable.';
LABEL ON TABLE GLBLN IS 'GLBLN - Cuentas Mayores';
COMMENT ON COLUMN GLBLN.codigo_banco IS 'Código del banco (identificador).';
COMMENT ON COLUMN GLBLN.codigo_sucursal IS 'Código de sucursal.';
COMMENT ON COLUMN GLBLN.codigo_moneda IS 'Código de moneda.';
COMMENT ON COLUMN GLBLN.cuenta_contable IS 'Cuenta contable (clave).';
COMMENT ON COLUMN GLBLN.descripcion_cuenta IS 'Descripción de la cuenta.';
LABEL ON COLUMN GLBLN.codigo_banco IS 'Banco';
LABEL ON COLUMN GLBLN.codigo_sucursal IS 'Sucursal';
LABEL ON COLUMN GLBLN.codigo_moneda IS 'Moneda';
LABEL ON COLUMN GLBLN.cuenta_contable IS 'Cuenta Contable';

-- GLMST (Maestro de Cuentas Contables)
COMMENT ON TABLE GLMST IS 'Maestro de cuentas contables — catálogo de cuentas y atributos (naturaleza, nivel).';
LABEL ON TABLE GLMST IS 'GLMST - Maestro de Cuentas';
COMMENT ON COLUMN GLMST.codigo_banco IS 'Código del banco.';
COMMENT ON COLUMN GLMST.codigo_moneda IS 'Código de moneda.';
COMMENT ON COLUMN GLMST.cuenta_contable IS 'Cuenta contable (clave).';
LABEL ON COLUMN GLMST.cuenta_contable IS 'Cuenta Contable';

-- TRANS (Archivo histórico de transacciones)
COMMENT ON TABLE TRANS IS 'Archivo histórico de transacciones — movimientos registrados en el sistema.';
LABEL ON TABLE TRANS IS 'TRANS - Transacciones';
COMMENT ON COLUMN TRANS.id_transaccion IS 'Identificador único de la transacción.';
COMMENT ON COLUMN TRANS.numero_registro_relativo IS 'Número de registro relativo usado para trazabilidad entre sistemas.';
COMMENT ON COLUMN TRANS.codigo_banco IS 'Código del banco (propuesta FK a GLBLN).';
COMMENT ON COLUMN TRANS.codigo_sucursal IS 'Código de sucursal (propuesta FK a GLBLN).';
COMMENT ON COLUMN TRANS.codigo_moneda IS 'Código de moneda (propuesta FK a GLBLN).';
COMMENT ON COLUMN TRANS.cuenta_contable IS 'Cuenta contable (propuesta FK a GLBLN).';
COMMENT ON COLUMN TRANS.id_cliente IS 'Identificador del cliente (propuesta FK a CUMST).';
LABEL ON COLUMN TRANS.id_transaccion IS 'ID Transacción';

-- TTRAN (Transacciones del día)
COMMENT ON TABLE TTRAN IS 'Transacciones del día — detalle diario de transacciones por corrida.';
LABEL ON TABLE TTRAN IS 'TTRAN - Transacciones Día';
COMMENT ON COLUMN TTRAN.id_transaccion_dia IS 'Identificador de la transacción diaria.';
COMMENT ON COLUMN TTRAN.numero_registro_relativo IS 'Referencia relacional (posible vinculo a TRANS).';
COMMENT ON COLUMN TTRAN.codigo_banco IS 'Código del banco (propuesta FK a GLBLN).';
COMMENT ON COLUMN TTRAN.cuenta_contable IS 'Cuenta contable (propuesta FK a GLBLN).';
LABEL ON COLUMN TTRAN.id_transaccion_dia IS 'ID Transacción Día';

-- CUMST (Maestro de clientes)
COMMENT ON TABLE CUMST IS 'Maestro de clientes — registro identificatorio de clientes.';
LABEL ON TABLE CUMST IS 'CUMST - Clientes';
COMMENT ON COLUMN CUMST.id_cliente IS 'Identificador único del cliente.';
LABEL ON COLUMN CUMST.id_cliente IS 'ID Cliente';

-- CUMAD (Direcciones y contactos de clientes)
COMMENT ON TABLE CUMAD IS 'Direcciones y datos de contacto por cliente/operación.';
LABEL ON TABLE CUMAD IS 'CUMAD - Direcciones Clientes';
COMMENT ON COLUMN CUMAD.id_cliente_operacion IS 'Identificador del cliente u operación (propuesta FK a CUMST.id_cliente).';
LABEL ON COLUMN CUMAD.id_cliente_operacion IS 'ID Cliente/Operación';

-- ACMST (Maestro de cuentas de detalle)
COMMENT ON TABLE ACMST IS 'Maestro de cuentas de detalle — cuentas operativas y metadatos asociados.';
LABEL ON TABLE ACMST IS 'ACMST - Cuentas Detalle';
COMMENT ON COLUMN ACMST.id IS 'Identificador interno de la cuenta detalle.';
LABEL ON COLUMN ACMST.id IS 'ID Cuenta';

-- PBTRN (Transacciones de libretas de ahorro)
COMMENT ON TABLE PBTRN IS 'Transacciones de libretas de ahorro — movimientos por cuenta y fecha/hora.';
LABEL ON TABLE PBTRN IS 'PBTRN - Libretas Transacciones';
COMMENT ON COLUMN PBTRN.numero_cuenta IS 'Número de cuenta (sugerir FK a ACMST.id o mapping apropiado).';
LABEL ON COLUMN PBTRN.numero_cuenta IS 'Número Cuenta';

ALTER TABLE TRANS
    ADD CONSTRAINT fk_trans_glbln
    FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
    REFERENCES GLBLN (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable);

ALTER TABLE TTRAN
    ADD CONSTRAINT fk_ttran_glbln
    FOREIGN KEY (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable)
    REFERENCES GLBLN (codigo_banco, codigo_sucursal, codigo_moneda, cuenta_contable);

ALTER TABLE TRANS
    ADD CONSTRAINT fk_trans_cumst
    FOREIGN KEY (id_cliente)
    REFERENCES CUMST (id_cliente);

ALTER TABLE CUMAD
    ADD CONSTRAINT fk_cumad_cumst
    FOREIGN KEY (id_cliente_operacion)
    REFERENCES CUMST (id_cliente);

ALTER TABLE PBTRN
    ADD CONSTRAINT fk_pbtrn_acmst
    FOREIGN KEY (numero_cuenta)
    REFERENCES ACMST (id);

ALTER TABLE TTRAN
    ADD CONSTRAINT fk_ttran_trans_rel
    FOREIGN KEY (numero_registro_relativo)
    REFERENCES TRANS (numero_registro_relativo);

-- Indicaciones:
-- - Reemplazar textos y labels por descripciones completas tomadas del catálogo de datos.
-- - Si una FK propuesta no aplica para ciertos entornos, comentar la sentencia.
-- - Añadir RCDFMT y RENAME TABLE ... FOR SYSTEM NAME ... cuando aplique en IBM i.

COMMIT;