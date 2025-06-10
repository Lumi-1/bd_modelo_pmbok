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

-- 📌 Tabla: actividades (15 registros)
SELECT*FROM Actividades;
INSERT INTO actividades (descripcion, proyecto_id, fecha_inicio, fecha_fin, proceso_id, responsable_id) VALUES
('Levantamiento de información', 1, '2025-01-10', '2025-01-15', 1, 1),
('Diseño de red', 1, '2025-01-16', '2025-01-25', 2, 2),
('Compra de equipos', 1, '2025-01-26', '2025-02-05', 3, 3),
('Instalación cableado', 2, '2025-02-10', '2025-02-20', 2, 1),
('Configuración inicial', 2, '2025-02-21', '2025-03-01', 3, 2),
('Análisis de riesgos', 3, '2025-03-05', '2025-03-10', 4, 4),
('Revisión legal', 3, '2025-03-11', '2025-03-15', 5, 5),
('Capacitación técnica', 4, '2025-04-02', '2025-04-10', 1, 1),
('Pruebas funcionales', 4, '2025-04-11', '2025-04-20', 3, 2),
('Evaluación de proveedores', 5, '2025-01-25', '2025-01-30', 2, 3),
('Revisión de contratos', 5, '2025-02-01', '2025-02-03', 3, 4),
('Entrega de documentación', 1, '2025-03-10', '2025-03-12', 5, 1),
('Monitoreo de desempeño', 2, '2025-03-13', '2025-03-18', 3, 5),
('Auditoría interna', 3, '2025-03-19', '2025-03-25', 4, 3),
('Presentación de resultados', 4, '2025-03-26', '2025-03-28', 5, 2);


-- 📌 Tabla: riesgo (15 registros)
SELECT*FROM Riesgo;
INSERT INTO riesgo (categoria, probabilidad, impacto, proyecto_id) VALUES
('Técnico', 70, 'Alto', 1),
('Técnico', 50, 'Medio', 1),
('Técnico', 30, 'Bajo', 5),
('Externo', 60, 'Alto', 2),
('Externo', 40, 'Medio', 4),
('Externo', 20, 'Bajo', 5),
('Organizacional', 80, 'Alto', 1),
('Organizacional', 60, 'Medio', 2),
('Organizacional', 35, 'Bajo', 3),
('Técnico', 55, 'Medio', 1),
('Externo', 45, 'Medio', 5),
('Organizacional', 25, 'Bajo', 3),
('Técnico', 65, 'Alto', 1),
('Externo', 50, 'Medio', 4),
('Organizacional', 30, 'Bajo', 3);

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
('Aceptar', 'Monitoreo constante', 10),
('Mitigar', 'Revisión de licencias y contratos.', 11),
('Aceptar', 'Sin acciones por bajo impacto.', 12),
('Evitar', 'Suspensión temporal de tareas.', 13),
('Transferir', 'Asegurar garantías extendidas.', 14),
('Mitigar', 'Optimizar rutas de red.', 15);


-- 📌 Tabla: comunicacion (15 registros)
SELECT*FROM comunicacion;
INSERT INTO comunicacion (fecha, medio, proyecto_id, responsable_id) VALUES
('2025-01-15', 'Correo', 1, 1),
('2025-01-20', 'Informe', 1, 4),
('2025-01-30', 'Reunión', 2, 2),
('2025-02-01', 'Correo', 3, 3),
('2025-02-05', 'Reunión', 4, 1),
('2025-02-10', 'Informe', 5, 5),
('2025-02-15', 'Correo', 2, 1),
('2025-02-18', 'Informe', 3, 2),
('2025-02-20', 'Reunión', 4, 4),
('2025-02-25', 'Correo', 5, 3),
('2025-03-01', 'Informe', 1, 2),
('2025-03-05', 'Reunión', 2, 5),
('2025-03-10', 'Correo', 3, 1),
('2025-03-15', 'Reunión', 4, 2),
('2025-03-20', 'Informe', 5, 4);

DELETE FROM patrocinador;
DBCC CHECKIDENT ('patrocinador', RESEED, 0);
DELETE FROM responsable;
DBCC CHECKIDENT ('responsable', RESEED, 0);
DELETE FROM area;
DBCC CHECKIDENT ('area', RESEED, 0);
DELETE FROM proceso;
DBCC CHECKIDENT ('proceso', RESEED, 0);
DELETE FROM proyecto;
DBCC CHECKIDENT ('proyecto', RESEED, 0);
DELETE FROM actividades;
DBCC CHECKIDENT ('actividades', RESEED, 0);
DELETE FROM riesgo;
DBCC CHECKIDENT ('riesgo', RESEED, 0);
DELETE FROM estrategia;
DBCC CHECKIDENT ('estrategia', RESEED, 0);
DELETE FROM comunicacion;
DBCC CHECKIDENT ('comunicacion', RESEED, 0);


---1.¿Qué responsables han participado en el proyecto "VPN Regional"?
SELECT DISTINCT r.nombre, r.rol, r.email
FROM actividades a
JOIN responsable r ON a.responsable_id = r.id
JOIN proyecto p ON a.proyecto_id = p.id
WHERE p.nombre = 'VPN Regional';

---2.Durante las fases de planificación y ejecución de los proyectos de red, se 
---identificaron diversos riesgos técnicos. El equipo directivo necesita saber qué 
---proyectos tienen más de un riesgo técnico con impacto alto, con el fin de asignar 
--recursos adicionales y establecer planes de contingencia prioritarios.
SELECT p.nombre AS proyecto, COUNT(r.id) AS cantidad_riesgos_tecnicos_altos
FROM proyecto p
JOIN riesgo r ON p.id = r.proyecto_id
WHERE r.categoria = 'Técnico' AND r.impacto = 'Alto'
GROUP BY p.nombre
HAVING COUNT(r.id) > 1;

---3.¿Cuál es el cronograma de actividades del proyecto "Firewall Moderno"?
SELECT a.descripcion, a.fecha_inicio, a.fecha_fin
FROM actividades a
JOIN proyecto p ON a.proyecto_id = p.id
WHERE p.nombre = 'Firewall Moderno'
ORDER BY a.fecha_inicio;


---4. ¿Cuáles son los riesgos con impacto "Alto"?
SELECT r.id, r.categoria, r.probabilidad, r.impacto, p.nombre AS proyecto
FROM riesgo r
JOIN proyecto p ON r.proyecto_id = p.id
WHERE r.impacto = 'Alto'; 

---5.¿Cuántas actividades tiene asignadas cada responsable?
SELECT r.nombre, COUNT(a.id) AS total_actividades
FROM responsable r
JOIN actividades a ON r.id = a.responsable_id
GROUP BY r.nombre;

---6.  ¿Qué estrategias de tipo “Mitigar” se usan en proyectos en ejecución?
SELECT e.descripcion, p.nombre AS proyecto
FROM estrategia e
JOIN riesgo r ON e.riesgo_id = r.id
JOIN proyecto p ON r.proyecto_id = p.id
WHERE e.tipo = 'Mitigar' AND p.estado = 'En Ejecución';



---7.¿Cuántas comunicaciones se han generado por cada proyecto?

SELECT p.nombre AS proyecto, COUNT(c.id) AS total_comunicaciones
FROM comunicacion c
JOIN proyecto p ON c.proyecto_id = p.id
GROUP BY p.nombre;


