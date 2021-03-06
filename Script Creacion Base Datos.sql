
Create DataBase Registro;

USE Registro;

CREATE TABLE [dbo].[Personas](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [nvarchar](50) UNIQUE NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[InfoContacto](
	[IdInfo] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] int NOT NULL,
	[Telefono] [nvarchar](max) NOT NULL,
	[Celular] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
 CONSTRAINT [PK_InfoContacto] PRIMARY KEY CLUSTERED 
(
	[IdInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[InfoContacto]  WITH CHECK ADD  CONSTRAINT [FK_InfoContacto_Personas] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Personas] ([IdPersona])
GO

ALTER TABLE [dbo].[InfoContacto] CHECK CONSTRAINT [FK_InfoContacto_Personas]
GO
