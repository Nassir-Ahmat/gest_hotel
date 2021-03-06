USE [gestionBD]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Codecategorie] [int] IDENTITY(1,1) NOT NULL,
	[descriptions] [text] NULL,
 CONSTRAINT [pkcat] PRIMARY KEY CLUSTERED 
(
	[Codecategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambres]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambres](
	[num_ch] [int] IDENTITY(1,1) NOT NULL,
	[telch] [varchar](50) NULL,
	[codeCateg] [int] NULL,
	[num_hotel] [int] NULL,
 CONSTRAINT [pkchmb] PRIMARY KEY CLUSTERED 
(
	[num_ch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[nbre_etoile] [int] IDENTITY(1,1) NOT NULL,
	[caracteristique] [text] NULL,
 CONSTRAINT [pkclasse] PRIMARY KEY CLUSTERED 
(
	[nbre_etoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[codeclient] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](60) NULL,
	[prenom] [varchar](60) NULL,
	[adresse] [varchar](100) NULL,
	[ville] [varchar](80) NULL,
	[CP] [varchar](80) NULL,
	[pays] [varchar](50) NULL,
	[tel] [varchar](80) NULL,
	[email] [varchar](80) NULL,
 CONSTRAINT [pkclients] PRIMARY KEY CLUSTERED 
(
	[codeclient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommations]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommations](
	[num_conso] [int] IDENTITY(1,1) NOT NULL,
	[dateconso] [date] NULL,
	[heureconso] [time](7) NULL,
	[codeclient] [int] NULL,
	[prestation] [int] NULL,
 CONSTRAINT [pkconso] PRIMARY KEY CLUSTERED 
(
	[num_conso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[num_hotel] [int] IDENTITY(1,1) NOT NULL,
	[nomH] [varchar](50) NULL,
	[adresseH] [varchar](80) NULL,
	[cpH] [varchar](80) NULL,
	[telH] [varchar](50) NULL,
	[nbre_etoile] [int] NULL,
 CONSTRAINT [pkhotel] PRIMARY KEY CLUSTERED 
(
	[num_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offre]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offre](
	[code_prest] [int] NOT NULL,
	[num_hotel] [int] NULL,
	[prix_prestation] [float] NULL,
 CONSTRAINT [pkof] PRIMARY KEY CLUSTERED 
(
	[code_prest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestations]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestations](
	[code_prest] [int] IDENTITY(1,1) NOT NULL,
	[designation_prest] [text] NULL,
 CONSTRAINT [pkprest] PRIMARY KEY CLUSTERED 
(
	[code_prest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservations]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservations](
	[num_reserv] [int] IDENTITY(1,1) NOT NULL,
	[date_debut] [date] NULL,
	[date_fin] [date] NULL,
	[date_paye_arrhes] [date] NULL,
	[montant_arrhes] [float] NULL,
	[num_ch] [int] NULL,
	[code_client] [int] NULL,
 CONSTRAINT [pkreserv] PRIMARY KEY CLUSTERED 
(
	[num_reserv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifier]    Script Date: 25/02/2022 08:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifier](
	[code_categ] [int] NULL,
	[nbre_etoile] [int] NULL,
	[prix] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambres]  WITH CHECK ADD  CONSTRAINT [fkcatego] FOREIGN KEY([codeCateg])
REFERENCES [dbo].[Categories] ([Codecategorie])
GO
ALTER TABLE [dbo].[chambres] CHECK CONSTRAINT [fkcatego]
GO
ALTER TABLE [dbo].[chambres]  WITH CHECK ADD  CONSTRAINT [fkhotel] FOREIGN KEY([num_hotel])
REFERENCES [dbo].[hotel] ([num_hotel])
GO
ALTER TABLE [dbo].[chambres] CHECK CONSTRAINT [fkhotel]
GO
ALTER TABLE [dbo].[consommations]  WITH CHECK ADD  CONSTRAINT [fkclient] FOREIGN KEY([codeclient])
REFERENCES [dbo].[clients] ([codeclient])
GO
ALTER TABLE [dbo].[consommations] CHECK CONSTRAINT [fkclient]
GO
ALTER TABLE [dbo].[consommations]  WITH CHECK ADD  CONSTRAINT [fkpres] FOREIGN KEY([prestation])
REFERENCES [dbo].[prestations] ([code_prest])
GO
ALTER TABLE [dbo].[consommations] CHECK CONSTRAINT [fkpres]
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD  CONSTRAINT [fkcla] FOREIGN KEY([nbre_etoile])
REFERENCES [dbo].[classes] ([nbre_etoile])
GO
ALTER TABLE [dbo].[hotel] CHECK CONSTRAINT [fkcla]
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD  CONSTRAINT [fkhtel] FOREIGN KEY([num_hotel])
REFERENCES [dbo].[hotel] ([num_hotel])
GO
ALTER TABLE [dbo].[offre] CHECK CONSTRAINT [fkhtel]
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD  CONSTRAINT [fkpresta] FOREIGN KEY([code_prest])
REFERENCES [dbo].[prestations] ([code_prest])
GO
ALTER TABLE [dbo].[offre] CHECK CONSTRAINT [fkpresta]
GO
ALTER TABLE [dbo].[reservations]  WITH CHECK ADD  CONSTRAINT [fkcli] FOREIGN KEY([code_client])
REFERENCES [dbo].[clients] ([codeclient])
GO
ALTER TABLE [dbo].[reservations] CHECK CONSTRAINT [fkcli]
GO
ALTER TABLE [dbo].[reservations]  WITH CHECK ADD  CONSTRAINT [fkreserv] FOREIGN KEY([num_ch])
REFERENCES [dbo].[chambres] ([num_ch])
GO
ALTER TABLE [dbo].[reservations] CHECK CONSTRAINT [fkreserv]
GO
ALTER TABLE [dbo].[tarifier]  WITH CHECK ADD  CONSTRAINT [fkcat1] FOREIGN KEY([code_categ])
REFERENCES [dbo].[Categories] ([Codecategorie])
GO
ALTER TABLE [dbo].[tarifier] CHECK CONSTRAINT [fkcat1]
GO
ALTER TABLE [dbo].[tarifier]  WITH CHECK ADD  CONSTRAINT [fkclass] FOREIGN KEY([nbre_etoile])
REFERENCES [dbo].[classes] ([nbre_etoile])
GO
ALTER TABLE [dbo].[tarifier] CHECK CONSTRAINT [fkclass]
GO
