create database Clinica_Veterinaria;

use Clinica_Veterinaria;


---CREACION DE TABLAS 
CREATE TABLE Dueño_Mascota (
IdDueño int identity,
Numero_de_identidad int primary key,
Nombre varchar(50)NOT NULL,
Apellido varchar(50)NOT NULL,
);

create table DatosDueño(
 Id_Datos INT PRIMARY KEY identity,
 Numero_de_identidad int,
 Sexo varchar(50)NOT NULL,
 Departamento varchar(50)NOT NULL,
 Municipio varchar(50)NOT NULL,
 Cod_Postal varchar(50)NOT NULL unique,
 Tel_Dueño Int,
 FOREIGN KEY (Numero_de_identidad) REFERENCES Dueño_Mascota(Numero_de_identidad),
);

CREATE TABLE Mascota (
IdMascota int identity,
Numero_de_identidadMascota int primary key,
Nombre varchar(50)NOT NULL,
Raza varchar(50)NOT NULL,
Peso varchar(50)NOT NULL,
Tipo_deMascota varchar(50)NOT NULL,
Observaciones varchar(50)NOT NULL,
);

CREATE TABLE Veterinario (
Id_Veterinario int identity,
Codigo_Identificacion_Veterinario int primary key,
Nombre_Medico varchar(50)NOT NULL,
Apellido_Medico varchar(50)NOT NULL,
Cargo varchar(150)NOT NULL,
Sexo_Medico varchar (2)NOT NULL,
Tel_Medico int NOT NULL unique,
);



CREATE TABLE IngresosVeterinaria (
 Id_Ingreso INT PRIMARY KEY identity,
 Motivo VARCHAR(150) NOT NULL,
 FechaIngreso date,
 Observaciones varchar(150),
 Numero_de_identidadMascota INT NOT NULL,
 Codigo_Identificacion_Veterinario int NOT NULL

 FOREIGN KEY (Numero_de_identidadMascota) REFERENCES Mascota(Numero_de_identidadMascota),
 FOREIGN KEY (Codigo_Identificacion_Veterinario) REFERENCES Veterinario(Codigo_Identificacion_Veterinario)
);



---INSERTAR DATOS


INSERT INTO Dueño_Mascota VALUES( 08194567, 'Juan','Gutierres');
INSERT INTO Dueño_Mascota VALUES( 08194567, 'Jose','Otero');
INSERT INTO Dueño_Mascota VALUES( 08194567, 'Luis','Lopez');
INSERT INTO Dueño_Mascota VALUES( 08194567, 'Adrian','Lopez');
INSERT INTO Dueño_Mascota VALUES( 08194567, 'Luis','Alvarenga');
INSERT INTO Dueño_Mascota VALUES( 08194567, 'Raul','Blanco');
INSERT INTO Dueño_Mascota VALUES( 05275535, 'Erick','Ayala');
INSERT INTO Dueño_Mascota VALUES( 0655320, 'Josue','Cruz');
INSERT INTO Dueño_Mascota VALUES( 09758309, 'Mauricio','Alvarenga');
INSERT INTO Dueño_Mascota VALUES( 09758309, 'Karina','Urbina');


INSERT INTO DatosDueño VALUES( 08194567,'M','Chalatenango', 'San Ignacio','103',76138833);
INSERT INTO DatosDueño VALUES(08194567,'Chalatenango', 'Nombre de jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);
INSERT INTO DatosDueño VALUES( 08194567,'Chalatenango', 'Nombre de Jesus','103''M',76138833);


INSERT INTO Mascota VALUES( 0612,'Lobi','Pitbull', '15kg','Normal','Fuerte dolor abdominal');
INSERT INTO Mascota VALUES( 0613,'Venus','Pitbull', '15kg','Normal','Revision Dental');
INSERT INTO Mascota VALUES( 0614,'Terri','Pitbull', '30kg','Normal','Fuerte dolor abdominal');
INSERT INTO Mascota VALUES( 0615,'Chapito','Pitbull', '15kg','Normal','Vomito');
INSERT INTO Mascota VALUES( 0616,'Tigra','Pitbull', '8kg','Normal','Dolor de oidos');
INSERT INTO Mascota VALUES( 0617,'Parda','Pitbull', '5kg','Normal','Fuerte dolor abdominal');
INSERT INTO Mascota VALUES( 0618,'Lobo','Pitbull', '13kg','Normal','Indicio de Rabia');
INSERT INTO Mascota VALUES( 0619,'Azus','Pitbull', '9kg','Normal','Fuerte dolor abdominal');
INSERT INTO Mascota VALUES( 0620,'Huevo','Pitbull', '50kg','Normal','Dolor');
INSERT INTO Mascota VALUES( 0621,'Piojo','Pitbull', '5kg','Normal','Fuerte dolor abdominal');

INSERT INTO Veterinario VALUES( 2332, 'Joaquin','Benitez','Doctor','M',76138833);
INSERT INTO Veterinario VALUES( 2334, 'Luis','Benitez','Doctor','M',76138833);
INSERT INTO Veterinario VALUES( 2336, 'Wiliam','Lopez','Doctor','M',76138833);
INSERT INTO Veterinario VALUES( 2338, 'Marleni','Otero','Doctor','M',76138833);




INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0814,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0612,2345);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','grave',0613,2334);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0614,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Vomito','2021-05-11','Estable',0615,2456);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de oidos','2021-05-11','Estable',0616,4567);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0617,4567);
INSERT INTO IngresosVeterinaria VALUES( 'Indicio de Rabia','2021-05-11','grave',0618,8765);
INSERT INTO IngresosVeterinaria VALUES( 'Vomito','2021-05-11','Estable',0619,0234);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0620,3454);
INSERT INTO IngresosVeterinaria VALUES( 'Vomito','2021-05-11','Estable',0621,8956);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0618,2376);
INSERT INTO IngresosVeterinaria VALUES( 'Revision dental','2021-05-11','Estable',0613,1232);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','grave',0617,1234);


