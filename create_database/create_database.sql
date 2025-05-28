CREATE DATABASE bd_modelo_pmbok;
GO
USE bd_modelo_pmbok;
GO


CREATE TABLE patrocinador (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR (20) NOT NULL,
cargo VARCHAR (20) NOT NULL,
email VARCHAR (50) NOT NULL,
telefono VARCHAR (20) NOT NULL,
);

CREATE TABLE proyecto (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
presupuesto_total INT,
fecha_Inicio DATE NOT NULL,
fecha_Fin DATE NOT NULL,
estado VARCHAR (20) NOT NULL,
patrocinador_id INT,
CONSTRAINT fk_proyecto_patrocinador FOREIGN KEY (patrocinador_id) REFERENCES patrocinador(id)
);

CREATE TABLE Riesgo (
id INT IDENTITY(1,1) PRIMARY KEY,
categoría VARCHAR (20) NOT NULL,
probabilidad INT,
impacto VARCHAR (20) NOT NULL,
proyecto_id INT,
CONSTRAINT fk_riego_proyecto FOREIGN KEY (proyecto_id) REFERENCES proyecto(id)
);

CREATE TABLE estrategia (
id INT IDENTITY(1,1) PRIMARY KEY,
tipo VARCHAR (20) NOT NULL,
descripcion VARCHAR (MAX) NOT NULL,
riesgo_id INT,
CONSTRAINT fk_estrategia_riesgo FOREIGN KEY (riesgo_id) REFERENCES riesgo(id)
);


CREATE TABLE responsable (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR (20) NOT NULL,
rol VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL,
);


CREATE TABLE comunicacion (
id INT IDENTITY(1,1) PRIMARY KEY,
fecha DATE NOT NULL,
medio VARCHAR (MAX) NOT NULL,
proyecto_id INT,
responsable_id INT,
CONSTRAINT fk_comunicacion_proyecto FOREIGN KEY (proyecto_id) REFERENCES proyecto(id),
CONSTRAINT fk_comunicacion_responsable FOREIGN KEY (responsable_id) REFERENCES responsable(id),
);

CREATE TABLE area (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
);

CREATE TABLE proceso (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR (20) NOT NULL,
tipo VARCHAR (50) NOT NULL,
area_id INT,
CONSTRAINT fk_proceso_area FOREIGN KEY (area_id) REFERENCES area(id)
);

CREATE TABLE Actividades (
id INT IDENTITY(1,1) PRIMARY KEY,
descripcion VARCHAR (MAX) NOT NULL,
proyecto_id INT,
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
proceso_id INT,
responsable_id INT,
CONSTRAINT fk_Actividades_proyecto FOREIGN KEY (proyecto_id) REFERENCES proyecto(id),
CONSTRAINT fk_Actividades_proceso FOREIGN KEY (proceso_id) REFERENCES proceso(id),
CONSTRAINT fk_Actividades_responsable FOREIGN KEY (responsable_id) REFERENCES responsable(id),
);
