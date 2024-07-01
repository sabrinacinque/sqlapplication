
USE Esercizio1;
GO


CREATE TABLE Cliente (
    IdCliente INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    DataNascita DATETIME NOT NULL,
    Sesso CHAR(1) CHECK (Sesso IN ('M', 'F')) NOT NULL,
    CF CHAR(16) UNIQUE NOT NULL,
    PIVA CHAR(11) UNIQUE NOT NULL,
    Attivo BIT NOT NULL,
    Saldo DECIMAL(10, 2) NOT NULL
);
GO


CREATE TABLE Operaio (
    IdDipendente INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    Cognome NVARCHAR(50) NOT NULL,
    CF CHAR(16) UNIQUE NOT NULL,
    FigliACarico INT NOT NULL,
    Sposato BIT NOT NULL,
    LivelloLavorativo INT NOT NULL,
    DescrizioneMansione NVARCHAR(255),
    Salario DECIMAL(10, 2) NOT NULL
);
GO


CREATE TABLE Cantiere (
    IdCantiere INT PRIMARY KEY IDENTITY(1,1),
    DenominazioneCantiere NVARCHAR(100) NOT NULL,
    Indirizzo NVARCHAR(255) NOT NULL,
    Citta NVARCHAR(100) NOT NULL,
    CAP CHAR(5) NOT NULL,
    PersonaRiferimento NVARCHAR(100) NOT NULL,
    DataInizioLavori DATETIME NOT NULL,
    DataFineLavori DATETIME,
    LavoriTerminatiSI_NO BIT NOT NULL
);
GO
