use [Moto Logo( Search)]

CREATE TABLE Usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(20),
    correo_electronico NVARCHAR(30),
    contrasena NVARCHAR(10)
);

CREATE TABLE Motocicletas (
    id_moto INT IDENTITY(1,1) PRIMARY KEY,
    marca NVARCHAR(20),
    modelo NVARCHAR(30),
    año INT,
    potencia DECIMAL(5,2),
	imagen NVARCHAR(200) 
   
);

CREATE TABLE Motos_Guardadas (
    id_usuario INT,
    id_moto INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_moto) REFERENCES Motocicletas(id_moto),
    PRIMARY KEY (id_usuario, id_moto)
);
