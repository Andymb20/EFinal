USE examenfinal; 

CREATE TABLE Agentes (
    ID INT identity PRIMARY KEY,
    Nombre VARCHAR(50)
)
GO

CREATE TABLE Clientes (
    ID INT identity PRIMARY KEY,
    Nombre VARCHAR(50),
    Email VARCHAR(100),
    Telefono VARCHAR(20)
)
GO

CREATE TABLE Casas (
    ID INT identity PRIMARY KEY,
    Direccion VARCHAR(100),
    Ciudad VARCHAR(50),
    Precio DECIMAL(10, 2)
)
GO

CREATE TABLE Ventas (
    ID INT identity PRIMARY KEY,
    ID_Agente INT,
    ID_Cliente INT,
    ID_Casa INT,
    Fecha DATE,
    FOREIGN KEY (ID_Agente) REFERENCES Agentes(ID),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID),
    FOREIGN KEY (ID_Casa) REFERENCES Casas(ID)
);

INSERT INTO Agentes (Nombre) VALUES
('Juan Pérez'),
('María López'),
('Carlos González');

INSERT INTO Clientes (Nombre, Email, Telefono) VALUES
('Laura Martínez', 'laura@example.com', '111-222-3333'),
('Pedro Rodríguez', 'pedro@example.com', '444-555-6666'),
('Ana García', 'ana@example.com', '777-888-9999');

INSERT INTO Casas (Direccion, Ciudad, Precio) VALUES
('Calle 123', 'Madrid', 250000.00),
('Avenida 456', 'Barcelona', 300000.00),
('Calle 789', 'Valencia', 200000.00);

INSERT INTO Ventas (ID_Agente, ID_Cliente, ID_Casa, Fecha) VALUES
(1, 2, 1, '2024-04-01'),
(2, 3, 2, '2024-04-03'),
(3, 1, 3, '2024-04-05');

SELECT * FROM Agentes;
SELECT * FROM Casas;
SELECT * FROM Clientes;
SELECT * FROM Ventas;

CREATE PROCEDURE GestionarAgentes
    @accion NVARCHAR(10),
    @agente_id INT = NULL,
    @agente_nombre NVARCHAR(50) = NULL
AS
BEGIN
    IF @accion = 'agregar'
    BEGIN
        INSERT INTO Agentes (Nombre) VALUES (@agente_nombre);
    END
    ELSE IF @accion = 'borrar'
    BEGIN
        DELETE FROM Agentes WHERE ID = @agente_id;
    END
    ELSE IF @accion = 'modificar'
    BEGIN
        UPDATE Agentes SET 
            Nombre = @agente_nombre
        WHERE ID = @agente_id;
    END
    ELSE IF @accion = 'consultar'
    BEGIN
        SELECT * FROM Agentes;
    END
    ELSE
    BEGIN
        SELECT 'Acción no válida';
    END
END
GO

EXEC GestionarAgentes 'agregar', NULL, 'Nuevo Agente';
EXEC GestionarAgentes 'borrar', 4;
EXEC GestionarAgentes 'modificar', 1, 'Juan Pérez Modificado';
EXEC GestionarAgentes 'consultar'; 
