CREATE DATABASE bd_modelo_pmbok;
GO
USE bd_modelo_pmbok;
GO

CREATE TABLE proyecto (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR (20) NOT NULL,
presupuesto_total VARCHAR(10) NOT NULL,
fecha_Inicio DATE NOT NULL,
fecha_Fin DATE NOT NULL,
estado VARCHAR (20) NOT NULL,
patrocinador_id VARCHAR (20) NOT NULL,
);