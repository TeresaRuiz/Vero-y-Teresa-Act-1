CREATE DATABASE TeresaRuizVeronicaSanchez1b3;
USE TeresaRuizVeronicaSanchez1b3;


CREATE TABLE tbDepartamentos(
id_Departamentos INT AUTO_INCREMENT  PRIMARY KEY,
DepartamentoEmpleado VARCHAR(35)
);


CREATE TABLE tbSalario(
id_Salario INT AUTO_INCREMENT  PRIMARY KEY,
Salario INT
);

CREATE TABLE tbCargo(
id_Cargo INT AUTO_INCREMENT  PRIMARY KEY,
Cargo VARCHAR (30),
id_Salario INT,
FOREIGN KEY (id_Salario) REFERENCES tbSalario(id_Salario)
);


CREATE TABLE tbEmpleados(
Id_Empleado INT AUTO_INCREMENT  PRIMARY KEY,
NombreEmpleado VARCHAR(20),
apellidoEmpleado VARCHAR(20),
Inicio_de_trabajo VARCHAR(6),
id_Departamentos INT,
id_Cargo INT,
FOREIGN KEY (id_Departamentos)REFERENCES tbDepartamentos(id_Departamentos),
FOREIGN KEY (id_Cargo)REFERENCES tbCargo(id_Cargo)
);

CREATE TABLE tbProyectos1(
id_Proyectos INT AUTO_INCREMENT  PRIMARY KEY,
nombreProyecto VARCHAR(25),
Id_Empleado INT,
FOREIGN KEY (Id_Empleado)REFERENCES tbEmpleados(Id_Empleado)
);

SELECT * FROM tbDepartamentos;
SELECT * FROM tbSalario;
SELECT * FROM tbCargo;
SELECT * FROM tbEmpleados;
SELECT * FROM tbProyectos1;


