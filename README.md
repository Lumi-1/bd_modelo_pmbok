# bd_modelo_pmbok
TechGlobal, empresa mediana con oficinas en tres ciudades. Ha aprobado un proyecto para modernizar toda su red de datos, incluyendo servidores, cableado estructurado, equipos de comunicación y seguridad de red. Este proyecto será ejecutado siguiendo las buenas prácticas del PMBOK.
Implementación de Red de Datos Corporativa – TechGlobal
🏢 Empresa: TechGlobal Solutions
Contexto:
TechGlobal es una empresa mediana con oficinas en tres ciudades. Ha aprobado un proyecto para modernizar toda su red de datos, incluyendo servidores, cableado estructurado, equipos de comunicación y seguridad de red. Este proyecto será ejecutado siguiendo las buenas prácticas del PMBOK, y requiere monitoreo constante de cronograma, presupuesto, riesgos, equipos técnicos y comunicación entre las sedes.

🎯 Objetivo del sistema:
Construir una base de datos relacional para:

Gestionar múltiples proyectos PMBOK en simultáneo.

Registrar actividades, planificación y responsables.

Asociar cada actividad con procesos y áreas del conocimiento PMBOK.

Controlar riesgos y medidas de respuesta.

Organizar comunicaciones oficiales del proyecto.

Documentar estrategias de respuesta a riesgos.

🗂️ Entidades del modelo (con atributos):
🔹 Proyectos
ID_Proyecto (PK)

Nombre

Objetivo

Presupuesto_Total

Fecha_Inicio

Fecha_Fin

Estado (Planificado, En Ejecución, Cerrado)

ID_Patrocinador (FK)

🔹 Patrocinadores
ID_Patrocinador (PK)

Nombre

Cargo

Email

Teléfono

🔹 Actividades
ID_Actividad (PK)

Descripción

Fecha_Inicio

Fecha_Fin

Costo_Estimado

ID_Proyecto (FK)

ID_Proceso (FK)

ID_Responsable (FK)

🔹 Responsables
ID_Responsable (PK)

Nombre

Rol (Ej. Ingeniero, Supervisor, Líder de Proyecto)

Email

🔹 Áreas_PMBOK
ID_Area (PK)

Nombre (Ej. Alcance, Cronograma, Costos, Riesgos)

Descripción

🔹 Procesos_PMBOK
ID_Proceso (PK)

Nombre

Tipo (Planificación, Ejecución, Control)

ID_Area (FK)

🔹 Riesgos
ID_Riesgo (PK)

Descripción

Categoría (Técnico, Externo, Organizacional)

Probabilidad (Alta, Media, Baja)

Impacto (Alto, Medio, Bajo)

ID_Proyecto (FK)

🔹 Estrategias
ID_Estrategia (PK)

Tipo (Evitar, Mitigar, Transferir, Aceptar)

Descripción

ID_Riesgo (FK)

🔹 Comunicaciones
ID_Comunicacion (PK)

Fecha

Medio (Correo, Informe, Reunión)

Asunto

ID_Proyecto (FK)

ID_Responsable (FK)

🔗 Relaciones entre entidades (en oraciones):
Un proyecto puede tener muchas actividades.

Cada actividad pertenece a un solo proyecto.

Cada actividad está asociada a un proceso PMBOK, y este proceso pertenece a un área PMBOK.

Cada actividad tiene un responsable.

Un proyecto puede tener múltiples riesgos.

Cada riesgo puede tener una estrategia de respuesta asociada.

Un proyecto puede tener varias comunicaciones, y cada comunicación es enviada por un responsable.

Cada proyecto tiene un único patrocinador.

MODELO CONCEPTUAL
![Diagrama entidad_relación (1)](https://github.com/user-attachments/assets/de35d439-a1b9-4793-a56a-df5eb442b258)

MODELO LOGICO
![bd_modelo_pmbok_1](https://github.com/user-attachments/assets/6810b5e7-ab49-4f96-8c3c-af281785427c)
