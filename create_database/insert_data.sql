USE bd_modelo_pmbok;
GO
---Insercion de datos

	SELECT*FROM patrocinador;

	INSERT INTO patrocinador (nombre, cargo, email, telefono) VALUES
('Luis Tenorio', 'Gerente General', 'luis.tenorio@techglobal.com', '999888777'),
('Ana Ruiz', 'Directora Técnica', 'ana.ruiz@techglobal.com', '999111222'),
('Carlos Díaz', 'PMO Lead', 'carlos.diaz@techglobal.com', '888222333'),
('Marta Jiménez', 'Finanzas', 'marta.jimenez@techglobal.com', '777555444'),
('Roberto Pérez', 'TI', 'roberto.perez@techglobal.com', '666444333');

-- 📌 Tabla: responsable
SELECT*FROM responsable;
INSERT INTO responsable (nombre, rol, email) VALUES
('Andrea López', 'Ingeniera de Redes', 'andrea.lopez@techglobal.com'),
('José Ramos', 'Supervisor de Proyecto', 'jose.ramos@techglobal.com'),
('María Gómez', 'Líder de Proyecto', 'maria.gomez@techglobal.com'),
('Pedro Sánchez', 'Analista de Riesgos', 'pedro.sanchez@techglobal.com'),
('Laura Vega', 'Coordinadora TI', 'laura.vega@techglobal.com');

-- 📌 Tabla: area
SELECT*FROM area;
INSERT INTO area (nombre) VALUES
('Alcance'),
('Cronograma'),
('Costos'),
('Riesgos'),
('Comunicación');

-- 📌 Tabla: proceso
SELECT*FROM proceso;
INSERT INTO proceso (nombre, tipo, area_id) VALUES
('Definir Alcance', 'Planificación', 1),
('Crear EDT', 'Planificación', 1),
('Controlar Cronograma', 'Monitoreo', 2),
('Estimar Costos', 'Planificación', 3),
('Identificar Riesgos', 'Planificación', 4);

-- 📌 Tabla: proyecto
SELECT*FROM proyecto;
INSERT INTO proyecto (nombre, presupuesto_total, fecha_inicio, fecha_fin, estado, patrocinador_id) VALUES
('Red Corporativa Sede A', 50000, '2024-02-01', '2024-06-30', 'En Ejecución', 1),
('VPN Regional', 30000, '2024-03-15', '2024-07-15', 'Planificado', 2),
('Cableado Estructurado HQ', 70000, '2024-01-10', '2024-05-20', 'En Ejecución', 3),
('Firewall Moderno', 25000, '2024-04-01', '2024-07-01', 'Planificado', 4),
('Migración de Servidores', 80000, '2024-02-20', '2024-08-30', 'En Ejecución', 5);

-- 📌 Tabla: actividades (10 registros)
SELECT*FROM Actividades;
INSERT INTO actividades (descripcion, proyecto_id, fecha_inicio, fecha_fin, proceso_id, responsable_id) VALUES
('Levantamiento de requerimientos', 1, '2024-02-01', '2024-02-05', 1, 3),
('Diseño de red LAN', 1, '2024-02-06', '2024-02-10', 1, 1),
('Instalación de cableado', 1, '2024-02-11', '2024-02-20', 2, 2),
('Pruebas de conectividad', 1, '2024-03-01', '2024-03-05', 3, 2),
('Configuración VPN', 2, '2024-03-20', '2024-04-01', 4, 4),
('Capacitación de usuarios', 2, '2024-04-02', '2024-04-10', 5, 5),
('Auditoría de seguridad', 3, '2024-04-01', '2024-04-05', 5, 4),
('Instalación firewall', 4, '2024-04-10', '2024-04-15', 2, 1),
('Migración base de datos', 5, '2024-05-01', '2024-05-10', 3, 3),
('Verificación final', 1, '2024-06-25', '2024-06-30', 3, 2);

-- 📌 Tabla: riesgo (10 registros)
SELECT*FROM Riesgo;
INSERT INTO riesgo (categoria, probabilidad, impacto, proyecto_id) VALUES
('Técnico', 80, 'Alto', 1),
('Organizacional', 40, 'Medio', 1),
('Externo', 30, 'Bajo', 2),
('Técnico', 60, 'Medio', 3),
('Técnico', 50, 'Alto', 4),
('Externo', 25, 'Medio', 5),
('Organizacional', 35, 'Bajo', 2),
('Técnico', 90, 'Alto', 3),
('Externo', 70, 'Medio', 5),
('Técnico', 20, 'Bajo', 4);

-- 📌 Tabla: estrategia (una o más por riesgo)
SELECT*FROM estrategia;
INSERT INTO estrategia (tipo, descripcion, riesgo_id) VALUES
('Mitigar', 'Capacitación para reducir errores técnicos', 1),
('Transferir', 'Contratar proveedor externo', 2),
('Evitar', 'Ajustar fechas críticas del cronograma', 3),
('Aceptar', 'Asumir impacto menor', 4),
('Mitigar', 'Auditoría previa a instalación', 5),
('Evitar', 'Escalar decisión a la gerencia', 6),
('Mitigar', 'Uso de software probado', 7),
('Transferir', 'Seguros de proyecto', 8),
('Mitigar', 'Mejorar planificación', 9),
('Aceptar', 'Monitoreo constante', 10);

-- 📌 Tabla: comunicacion (10 registros)
SELECT*FROM comunicacion;
INSERT INTO comunicacion (fecha, medio, proyecto_id, responsable_id) VALUES
('2024-02-01', 'Correo', 1, 3),
('2024-02-10', 'Reunión', 1, 2),
('2024-03-01', 'Informe', 2, 5),
('2024-03-15', 'Correo', 2, 4),
('2024-04-01', 'Reunión', 3, 1),
('2024-04-10', 'Correo', 3, 2),
('2024-05-05', 'Informe', 4, 4),
('2024-05-15', 'Reunión', 5, 5),
('2024-06-01', 'Correo', 5, 3),
('2024-06-15', 'Informe', 1, 1);
