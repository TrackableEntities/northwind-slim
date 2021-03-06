USE [NorthwindSlim]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerSetting]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerSetting](
	[CustomerId] [nchar](5) NOT NULL,
	[Setting] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.CustomerSetting] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
 CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeTerritories]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTerritories](
	[EmployeeId] [int] NOT NULL,
	[TerritoryId] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeTerritories] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC,
	[TerritoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nchar](5) NULL,
	[OrderDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CategoryId] [int] NULL,
	[UnitPrice] [money] NULL,
	[Discontinued] [bit] NOT NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Territory]    Script Date: 4/18/2014 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Territory](
	[TerritoryId] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Territory] PRIMARY KEY CLUSTERED 
(
	[TerritoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Beverages')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Condiments')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Confections')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Dairy Products')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Grains/Cereals')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (6, N'Meat/Poultry')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (7, N'Produce')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (8, N'Seafood')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'ALFKI', N'Alfreds Futterkiste', N'Maria Anders', N'Berlin', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'ANATR', N'Ana Trujillo Emparedados y helados', N'Ana Trujillo', N'México D.F.', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'ANTON', N'Antonio Moreno Taquería', N'Antonio Moreno', N'México D.F.', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'AROUT', N'Around the Horn', N'Thomas Hardy', N'London', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BERGS', N'Berglunds snabbköp', N'Christina Berglund', N'Luleå', N'Sweden')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BLAUS', N'Blauer See Delikatessen', N'Hanna Moos', N'Mannheim', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BLONP', N'Blondesddsl père et fils', N'Frédérique Citeaux', N'Strasbourg', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BOLID', N'Bólido Comidas preparadas', N'Martín Sommer', N'Madrid', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BONAP', N'Bon app''', N'Laurence Lebihan', N'Marseille', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BOTTM', N'Bottom-Dollar Markets', N'Elizabeth Lincoln', N'Tsawassen', N'Canada')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'BSBEV', N'B''s Beverages', N'Victoria Ashworth', N'London', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'CACTU', N'Cactus Comidas para llevar', N'Patricio Simpson', N'Buenos Aires', N'Argentina')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'CENTC', N'Centro comercial Moctezuma', N'Francisco Chang', N'México D.F.', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'CHOPS', N'Chop-suey Chinese', N'Yang Wang', N'Bern', N'Switzerland')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'COMMI', N'Comércio Mineiro', N'Pedro Afonso', N'Sao Paulo', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'CONSH', N'Consolidated Holdings', N'Elizabeth Brown', N'London', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'DRACD', N'Drachenblut Delikatessen', N'Sven Ottlieb', N'Aachen', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'DUMON', N'Du monde entier', N'Janine Labrune', N'Nantes', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'EASTC', N'Eastern Connection', N'Ann Devon', N'London', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'ERNSH', N'Ernst Handel', N'Roland Mendel', N'Graz', N'Austria')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FAMIA', N'Familia Arquibaldo', N'Aria Cruz', N'Sao Paulo', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FISSA', N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'Madrid', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FOLIG', N'Folies gourmandes', N'Martine Rancé', N'Lille', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FOLKO', N'Folk och fä HB', N'Maria Larsson', N'Bräcke', N'Sweden')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FRANK', N'Frankenversand', N'Peter Franken', N'München', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FRANR', N'France restauration', N'Carine Schmitt', N'Nantes', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FRANS', N'Franchi S.p.A.', N'Paolo Accorti', N'Torino', N'Italy')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'FURIB', N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Lisboa', N'Portugal')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'GALED', N'Galería del gastrónomo', N'Eduardo Saavedra', N'Barcelona', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'GODOS', N'Godos Cocina Típica', N'José Pedro Freyre', N'Sevilla', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'GOURL', N'Gourmet Lanchonetes', N'André Fonseca', N'Campinas', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'GREAL', N'Great Lakes Food Market', N'Howard Snyder', N'Eugene', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'GROSR', N'GROSELLA-Restaurante', N'Manuel Pereira', N'Caracas', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'HANAR', N'Hanari Carnes', N'Mario Pontes', N'Rio de Janeiro', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'HILAA', N'HILARION-Abastos', N'Carlos Hernández', N'San Cristóbal', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'HUNGC', N'Hungry Coyote Import Store', N'Yoshi Latimer', N'Elgin', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'HUNGO', N'Hungry Owl All-Night Grocers', N'Patricia McKenna', N'Cork', N'Ireland')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'ISLAT', N'Island Trading', N'Helen Bennett', N'Cowes', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'KOENE', N'Königlich Essen', N'Philip Cramer', N'Brandenburg', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LACOR', N'La corne d''abondance', N'Daniel Tonini', N'Versailles', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LAMAI', N'La maison d''Asie', N'Annette Roulet', N'Toulouse', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LAUGB', N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'Vancouver', N'Canada')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LAZYK', N'Lazy K Kountry Store', N'John Steel', N'Walla Walla', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LEHMS', N'Lehmanns Marktstand', N'Renate Messner', N'Frankfurt a.M.', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LETSS', N'Let''s Stop N Shop', N'Jaime Yorres', N'San Francisco', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LILAS', N'LILA-Supermercado', N'Carlos González', N'Barquisimeto', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LINOD', N'LINO-Delicateses', N'Felipe Izquierdo', N'I. de Margarita', N'Venezuela')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'LONEP', N'Lonesome Pine Restaurant', N'Fran Wilson', N'Portland', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'MAGAA', N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Bergamo', N'Italy')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'MAISD', N'Maison Dewey', N'Catherine Dewey', N'Bruxelles', N'Belgium')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'MEREP', N'Mère Paillarde', N'Jean Fresnière', N'Montréal', N'Canada')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'MORGK', N'Morgenstern Gesundkost', N'Alexander Feuer', N'Leipzig', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'NORTS', N'North/South', N'Simon Crowther', N'London', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'OCEAN', N'Océano Atlántico Ltda.', N'Yvonne Moncada', N'Buenos Aires', N'Argentina')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'OLDWO', N'Old World Delicatessen', N'Rene Phillips', N'Anchorage', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'OTTIK', N'Ottilies Käseladen', N'Henriette Pfalzheim', N'Köln', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'PARIS', N'Paris spécialités', N'Marie Bertrand', N'Paris', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'PERIC', N'Pericles Comidas clásicas', N'Guillermo Fernández', N'México D.F.', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'PICCO', N'Piccolo und mehr', N'Georg Pipps', N'Salzburg', N'Austria')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'PRINI', N'Princesa Isabel Vinhos', N'Isabel de Castro', N'Lisboa', N'Portugal')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'QUEDE', N'Que Delícia', N'Bernardo Batista', N'Rio de Janeiro', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'QUEEN', N'Queen Cozinha', N'Lúcia Carvalho', N'Sao Paulo', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'QUICK', N'QUICK-Stop', N'Horst Kloss', N'Cunewalde', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'RANCH', N'Rancho grande', N'Sergio Gutiérrez', N'Buenos Aires', N'Argentina')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'RATTC', N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'Albuquerque', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'REGGC', N'Reggiani Caseifici', N'Maurizio Moroni', N'Reggio Emilia', N'Italy')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'RICAR', N'Ricardo Adocicados', N'Janete Limeira', N'Rio de Janeiro', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'RICSU', N'Richter Supermarkt', N'Michael Holz', N'Genève', N'Switzerland')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'ROMEY', N'Romero y tomillo', N'Alejandra Camino', N'Madrid', N'Spain')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SANTG', N'Santé Gourmet', N'Jonas Bergulfsen', N'Stavern', N'Norway')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SAVEA', N'Save-a-lot Markets', N'Jose Pavarotti', N'Boise', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SEVES', N'Seven Seas Imports', N'Hari Kumar', N'London', N'UK')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SIMOB', N'Simons bistro', N'Jytte Petersen', N'Kobenhavn', N'Denmark')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SPECD', N'Spécialités du monde', N'Dominique Perrier', N'Paris', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SPLIR', N'Split Rail Beer & Ale', N'Art Braunschweiger', N'Lander', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'SUPRD', N'Suprêmes délices', N'Pascale Cartrain', N'Charleroi', N'Belgium')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'THEBI', N'The Big Cheese', N'Liz Nixon', N'Portland', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'THECR', N'The Cracker Box', N'Liu Wong', N'Butte', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'TOMSP', N'Toms Spezialitäten', N'Karin Josephs', N'Münster', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'TORTU', N'Tortuga Restaurante', N'Miguel Angel Paolino', N'México D.F.', N'Mexico')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'TRADH', N'Tradição Hipermercados', N'Anabela Domingues', N'Sao Paulo', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'TRAIH', N'Trail''s Head Gourmet Provisioners', N'Helvetius Nagy', N'Kirkland', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'VAFFE', N'Vaffeljernet', N'Palle Ibsen', N'Århus', N'Denmark')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'VICTE', N'Victuailles en stock', N'Mary Saveley', N'Lyon', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'VINET', N'Vins et alcools Chevalier', N'Paul Henriot', N'Reims', N'France')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'WANDK', N'Die Wandernde Kuh', N'Rita Müller', N'Stuttgart', N'Germany')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'WARTH', N'Wartian Herkku', N'Pirkko Koskitalo', N'Oulu', N'Finland')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'WELLI', N'Wellington Importadora', N'Paula Parente', N'Resende', N'Brazil')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'WHITC', N'White Clover Markets', N'Karl Jablonski', N'Seattle', N'USA')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'WILMK', N'Wilman Kala', N'Matti Karttunen', N'Helsinki', N'Finland')
GO
INSERT [dbo].[Customer] ([CustomerId], [CompanyName], [ContactName], [City], [Country]) VALUES (N'WOLZA', N'Wolski  Zajazd', N'Zbyszek Piestrzeniewicz', N'Warszawa', N'Poland')
GO
INSERT [dbo].[CustomerSetting] ([CustomerId], [Setting]) VALUES (N'ALFKI', N'Setting1')
GO
INSERT [dbo].[CustomerSetting] ([CustomerId], [Setting]) VALUES (N'ANATR', N'Setting2')
GO
INSERT [dbo].[CustomerSetting] ([CustomerId], [Setting]) VALUES (N'ANTON', N'Setting3')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (1, N'Davolio', N'Nancy', CAST(0x000045D100000000 AS DateTime), CAST(0x000083BB00000000 AS DateTime), N'Seattle', N'USA')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (2, N'Fuller', N'Andrew', CAST(0x00004A6100000000 AS DateTime), CAST(0x0000842400000000 AS DateTime), N'Tacoma', N'USA')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (3, N'Leverling', N'Janet', CAST(0x00005AD300000000 AS DateTime), CAST(0x000083BB00000000 AS DateTime), N'Kirkland', N'USA')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (4, N'Peacock', N'Margaret', CAST(0x000035CF00000000 AS DateTime), CAST(0x0000852A00000000 AS DateTime), N'Redmond', N'USA')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (6, N'Buchanan', N'Steven', CAST(0x00004EB600000000 AS DateTime), CAST(0x000085D100000000 AS DateTime), N'London', N'UK')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (7, N'Suyama', N'Michael', CAST(0x00005A9800000000 AS DateTime), CAST(0x000085D100000000 AS DateTime), N'London', N'UK')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (8, N'King', N'Robert', CAST(0x0000562F00000000 AS DateTime), CAST(0x0000861E00000000 AS DateTime), N'London', N'UK')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (9, N'Callahan', N'Laura', CAST(0x000052C800000000 AS DateTime), CAST(0x0000865C00000000 AS DateTime), N'Seattle', N'USA')
GO
INSERT [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [BirthDate], [HireDate], [City], [Country]) VALUES (10, N'Dodsworth', N'Anne', CAST(0x00005E4400000000 AS DateTime), CAST(0x0000875B00000000 AS DateTime), N'London', N'UK')
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (1, N'01581')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (1, N'01730')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (1, N'01833')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (2, N'01730')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (2, N'01833')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (3, N'01833')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (3, N'02116')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (4, N'01581')
GO
INSERT [dbo].[EmployeeTerritories] ([EmployeeId], [TerritoryId]) VALUES (4, N'01833')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10248, N'VINET', CAST(0x000089B000000000 AS DateTime), CAST(0x000089BC00000000 AS DateTime), 3, 32.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10249, N'TOMSP', CAST(0x000089B100000000 AS DateTime), CAST(0x000089B600000000 AS DateTime), 1, 11.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10250, N'HANAR', CAST(0x000089B400000000 AS DateTime), CAST(0x000089B800000000 AS DateTime), 2, 65.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10251, N'VICTE', CAST(0x000089B400000000 AS DateTime), CAST(0x000089BB00000000 AS DateTime), 1, 41.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10252, N'SUPRD', CAST(0x000089B500000000 AS DateTime), CAST(0x000089B700000000 AS DateTime), 2, 51.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10253, N'HANAR', CAST(0x000089B600000000 AS DateTime), CAST(0x000089BC00000000 AS DateTime), 2, 58.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10254, N'CHOPS', CAST(0x000089B700000000 AS DateTime), CAST(0x000089C300000000 AS DateTime), 2, 22.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10255, N'RICSU', CAST(0x000089B800000000 AS DateTime), CAST(0x000089BB00000000 AS DateTime), 3, 148.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10256, N'WELLI', CAST(0x000089BB00000000 AS DateTime), CAST(0x000089BD00000000 AS DateTime), 2, 13.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10257, N'HILAA', CAST(0x000089BC00000000 AS DateTime), CAST(0x000089C200000000 AS DateTime), 3, 81.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10258, N'ERNSH', CAST(0x000089BD00000000 AS DateTime), CAST(0x000089C300000000 AS DateTime), 1, 140.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10259, N'CENTC', CAST(0x000089BE00000000 AS DateTime), CAST(0x000089C500000000 AS DateTime), 3, 3.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10260, N'OTTIK', CAST(0x000089BF00000000 AS DateTime), CAST(0x000089C900000000 AS DateTime), 1, 55.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10261, N'QUEDE', CAST(0x000089BF00000000 AS DateTime), CAST(0x000089CA00000000 AS DateTime), 2, 3.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10262, N'RATTC', CAST(0x000089C200000000 AS DateTime), CAST(0x000089C500000000 AS DateTime), 3, 48.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10263, N'ERNSH', CAST(0x000089C300000000 AS DateTime), CAST(0x000089CB00000000 AS DateTime), 3, 146.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10264, N'FOLKO', CAST(0x000089C400000000 AS DateTime), CAST(0x000089E200000000 AS DateTime), 3, 3.6700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10265, N'BLONP', CAST(0x000089C500000000 AS DateTime), CAST(0x000089D700000000 AS DateTime), 1, 55.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10266, N'WARTH', CAST(0x000089C600000000 AS DateTime), CAST(0x000089CB00000000 AS DateTime), 3, 25.7300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10267, N'FRANK', CAST(0x000089C900000000 AS DateTime), CAST(0x000089D100000000 AS DateTime), 1, 208.5800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10268, N'GROSR', CAST(0x000089CA00000000 AS DateTime), CAST(0x000089CD00000000 AS DateTime), 3, 66.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10269, N'WHITC', CAST(0x000089CB00000000 AS DateTime), CAST(0x000089D400000000 AS DateTime), 1, 4.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10270, N'WARTH', CAST(0x000089CC00000000 AS DateTime), CAST(0x000089CD00000000 AS DateTime), 1, 136.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10271, N'SPLIR', CAST(0x000089CC00000000 AS DateTime), CAST(0x000089E900000000 AS DateTime), 2, 4.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10272, N'RATTC', CAST(0x000089CD00000000 AS DateTime), CAST(0x000089D100000000 AS DateTime), 2, 98.0300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10273, N'QUICK', CAST(0x000089D000000000 AS DateTime), CAST(0x000089D700000000 AS DateTime), 3, 76.0700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10274, N'VINET', CAST(0x000089D100000000 AS DateTime), CAST(0x000089DB00000000 AS DateTime), 1, 6.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10275, N'MAGAA', CAST(0x000089D200000000 AS DateTime), CAST(0x000089D400000000 AS DateTime), 1, 26.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10276, N'TORTU', CAST(0x000089D300000000 AS DateTime), CAST(0x000089D900000000 AS DateTime), 3, 13.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10277, N'MORGK', CAST(0x000089D400000000 AS DateTime), CAST(0x000089D800000000 AS DateTime), 3, 125.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10278, N'BERGS', CAST(0x000089D700000000 AS DateTime), CAST(0x000089DB00000000 AS DateTime), 2, 92.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10279, N'LEHMS', CAST(0x000089D800000000 AS DateTime), CAST(0x000089DB00000000 AS DateTime), 2, 25.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10280, N'BERGS', CAST(0x000089D900000000 AS DateTime), CAST(0x000089F600000000 AS DateTime), 1, 8.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10281, N'ROMEY', CAST(0x000089D900000000 AS DateTime), CAST(0x000089E000000000 AS DateTime), 1, 2.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10282, N'ROMEY', CAST(0x000089DA00000000 AS DateTime), CAST(0x000089E000000000 AS DateTime), 1, 12.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10283, N'LILAS', CAST(0x000089DB00000000 AS DateTime), CAST(0x000089E200000000 AS DateTime), 3, 84.8100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10284, N'LEHMS', CAST(0x000089DE00000000 AS DateTime), CAST(0x000089E600000000 AS DateTime), 1, 76.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10285, N'QUICK', CAST(0x000089DF00000000 AS DateTime), CAST(0x000089E500000000 AS DateTime), 2, 76.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10286, N'QUICK', CAST(0x000089E000000000 AS DateTime), CAST(0x000089E900000000 AS DateTime), 3, 229.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10287, N'RICAR', CAST(0x000089E100000000 AS DateTime), CAST(0x000089E700000000 AS DateTime), 3, 12.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10288, N'REGGC', CAST(0x000089E200000000 AS DateTime), CAST(0x000089ED00000000 AS DateTime), 1, 7.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10289, N'BSBEV', CAST(0x000089E500000000 AS DateTime), CAST(0x000089E700000000 AS DateTime), 3, 22.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10290, N'COMMI', CAST(0x000089E600000000 AS DateTime), CAST(0x000089ED00000000 AS DateTime), 1, 79.7000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10291, N'QUEDE', CAST(0x000089E600000000 AS DateTime), CAST(0x000089EE00000000 AS DateTime), 2, 6.4000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10292, N'TRADH', CAST(0x000089E700000000 AS DateTime), CAST(0x000089EC00000000 AS DateTime), 2, 1.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10293, N'TORTU', CAST(0x000089E800000000 AS DateTime), CAST(0x000089F500000000 AS DateTime), 3, 21.1800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10294, N'RATTC', CAST(0x000089E900000000 AS DateTime), CAST(0x000089EF00000000 AS DateTime), 2, 147.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10295, N'VINET', CAST(0x000089EC00000000 AS DateTime), CAST(0x000089F400000000 AS DateTime), 2, 1.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10296, N'LILAS', CAST(0x000089ED00000000 AS DateTime), CAST(0x000089F500000000 AS DateTime), 1, 0.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10297, N'BLONP', CAST(0x000089EE00000000 AS DateTime), CAST(0x000089F400000000 AS DateTime), 2, 5.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10298, N'HUNGO', CAST(0x000089EF00000000 AS DateTime), CAST(0x000089F500000000 AS DateTime), 2, 168.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10299, N'RICAR', CAST(0x000089F000000000 AS DateTime), CAST(0x000089F700000000 AS DateTime), 2, 29.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10300, N'MAGAA', CAST(0x000089F300000000 AS DateTime), CAST(0x000089FC00000000 AS DateTime), 2, 17.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10301, N'WANDK', CAST(0x000089F300000000 AS DateTime), CAST(0x000089FB00000000 AS DateTime), 2, 45.0800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10302, N'SUPRD', CAST(0x000089F400000000 AS DateTime), CAST(0x00008A1100000000 AS DateTime), 2, 6.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10303, N'GODOS', CAST(0x000089F500000000 AS DateTime), CAST(0x000089FC00000000 AS DateTime), 2, 107.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10304, N'TORTU', CAST(0x000089F600000000 AS DateTime), CAST(0x000089FB00000000 AS DateTime), 2, 63.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10305, N'OLDWO', CAST(0x000089F700000000 AS DateTime), CAST(0x00008A1100000000 AS DateTime), 3, 257.6200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10306, N'ROMEY', CAST(0x000089FA00000000 AS DateTime), CAST(0x00008A0100000000 AS DateTime), 3, 7.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10307, N'LONEP', CAST(0x000089FB00000000 AS DateTime), CAST(0x00008A0300000000 AS DateTime), 2, 0.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10308, N'ANATR', CAST(0x000089FC00000000 AS DateTime), CAST(0x00008A0200000000 AS DateTime), 3, 1.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10309, N'HUNGO', CAST(0x000089FD00000000 AS DateTime), CAST(0x00008A1F00000000 AS DateTime), 1, 47.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10310, N'THEBI', CAST(0x000089FE00000000 AS DateTime), CAST(0x00008A0500000000 AS DateTime), 2, 17.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10311, N'DUMON', CAST(0x000089FE00000000 AS DateTime), CAST(0x00008A0400000000 AS DateTime), 3, 24.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10312, N'WANDK', CAST(0x00008A0100000000 AS DateTime), CAST(0x00008A0B00000000 AS DateTime), 2, 40.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10313, N'QUICK', CAST(0x00008A0200000000 AS DateTime), CAST(0x00008A0C00000000 AS DateTime), 2, 1.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10314, N'RATTC', CAST(0x00008A0300000000 AS DateTime), CAST(0x00008A0C00000000 AS DateTime), 2, 74.1600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10315, N'ISLAT', CAST(0x00008A0400000000 AS DateTime), CAST(0x00008A0B00000000 AS DateTime), 2, 41.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10316, N'RATTC', CAST(0x00008A0500000000 AS DateTime), CAST(0x00008A1000000000 AS DateTime), 3, 150.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10317, N'LONEP', CAST(0x00008A0800000000 AS DateTime), CAST(0x00008A1200000000 AS DateTime), 1, 12.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10318, N'ISLAT', CAST(0x00008A0900000000 AS DateTime), CAST(0x00008A0C00000000 AS DateTime), 2, 4.7300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10319, N'TORTU', CAST(0x00008A0A00000000 AS DateTime), CAST(0x00008A1300000000 AS DateTime), 3, 64.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10320, N'WARTH', CAST(0x00008A0B00000000 AS DateTime), CAST(0x00008A1A00000000 AS DateTime), 3, 34.5700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10321, N'ISLAT', CAST(0x00008A0B00000000 AS DateTime), CAST(0x00008A1300000000 AS DateTime), 2, 3.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10322, N'PERIC', CAST(0x00008A0C00000000 AS DateTime), CAST(0x00008A1F00000000 AS DateTime), 3, 0.4000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10323, N'KOENE', CAST(0x00008A0F00000000 AS DateTime), CAST(0x00008A1600000000 AS DateTime), 1, 4.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10324, N'SAVEA', CAST(0x00008A1000000000 AS DateTime), CAST(0x00008A1200000000 AS DateTime), 1, 214.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10325, N'KOENE', CAST(0x00008A1100000000 AS DateTime), CAST(0x00008A1600000000 AS DateTime), 3, 64.8600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10326, N'BOLID', CAST(0x00008A1200000000 AS DateTime), CAST(0x00008A1600000000 AS DateTime), 2, 77.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10327, N'FOLKO', CAST(0x00008A1300000000 AS DateTime), CAST(0x00008A1600000000 AS DateTime), 1, 63.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10328, N'FURIB', CAST(0x00008A1600000000 AS DateTime), CAST(0x00008A1900000000 AS DateTime), 3, 87.0300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10329, N'SPLIR', CAST(0x00008A1700000000 AS DateTime), CAST(0x00008A1F00000000 AS DateTime), 2, 191.6700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10330, N'LILAS', CAST(0x00008A1800000000 AS DateTime), CAST(0x00008A2400000000 AS DateTime), 1, 12.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10331, N'BONAP', CAST(0x00008A1800000000 AS DateTime), CAST(0x00008A1D00000000 AS DateTime), 1, 10.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10332, N'MEREP', CAST(0x00008A1900000000 AS DateTime), CAST(0x00008A1D00000000 AS DateTime), 2, 52.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10333, N'WARTH', CAST(0x00008A1A00000000 AS DateTime), CAST(0x00008A2100000000 AS DateTime), 3, 0.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10334, N'VICTE', CAST(0x00008A1D00000000 AS DateTime), CAST(0x00008A2400000000 AS DateTime), 2, 8.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10335, N'HUNGO', CAST(0x00008A1E00000000 AS DateTime), CAST(0x00008A2000000000 AS DateTime), 2, 42.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10336, N'PRINI', CAST(0x00008A1F00000000 AS DateTime), CAST(0x00008A2100000000 AS DateTime), 2, 15.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10337, N'FRANK', CAST(0x00008A2000000000 AS DateTime), CAST(0x00008A2500000000 AS DateTime), 3, 108.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10338, N'OLDWO', CAST(0x00008A2100000000 AS DateTime), CAST(0x00008A2500000000 AS DateTime), 3, 84.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10339, N'MEREP', CAST(0x00008A2400000000 AS DateTime), CAST(0x00008A2B00000000 AS DateTime), 2, 15.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10340, N'BONAP', CAST(0x00008A2500000000 AS DateTime), CAST(0x00008A2F00000000 AS DateTime), 3, 166.3100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10341, N'SIMOB', CAST(0x00008A2500000000 AS DateTime), CAST(0x00008A2C00000000 AS DateTime), 3, 26.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10342, N'FRANK', CAST(0x00008A2600000000 AS DateTime), CAST(0x00008A2B00000000 AS DateTime), 2, 54.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10343, N'LEHMS', CAST(0x00008A2700000000 AS DateTime), CAST(0x00008A2D00000000 AS DateTime), 1, 110.3700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10344, N'WHITC', CAST(0x00008A2800000000 AS DateTime), CAST(0x00008A2C00000000 AS DateTime), 2, 23.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10345, N'QUICK', CAST(0x00008A2B00000000 AS DateTime), CAST(0x00008A3200000000 AS DateTime), 2, 249.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10346, N'RATTC', CAST(0x00008A2C00000000 AS DateTime), CAST(0x00008A2F00000000 AS DateTime), 3, 142.0800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10347, N'FAMIA', CAST(0x00008A2D00000000 AS DateTime), CAST(0x00008A2F00000000 AS DateTime), 3, 3.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10348, N'WANDK', CAST(0x00008A2E00000000 AS DateTime), CAST(0x00008A3600000000 AS DateTime), 2, 0.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10349, N'SPLIR', CAST(0x00008A2F00000000 AS DateTime), CAST(0x00008A3600000000 AS DateTime), 1, 8.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10350, N'LAMAI', CAST(0x00008A3200000000 AS DateTime), CAST(0x00008A4800000000 AS DateTime), 2, 64.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10351, N'ERNSH', CAST(0x00008A3200000000 AS DateTime), CAST(0x00008A3B00000000 AS DateTime), 1, 162.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10352, N'FURIB', CAST(0x00008A3300000000 AS DateTime), CAST(0x00008A3900000000 AS DateTime), 3, 1.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10353, N'PICCO', CAST(0x00008A3400000000 AS DateTime), CAST(0x00008A4000000000 AS DateTime), 3, 360.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10354, N'PERIC', CAST(0x00008A3500000000 AS DateTime), CAST(0x00008A3B00000000 AS DateTime), 3, 53.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10355, N'AROUT', CAST(0x00008A3600000000 AS DateTime), CAST(0x00008A3B00000000 AS DateTime), 1, 41.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10356, N'WANDK', CAST(0x00008A3900000000 AS DateTime), CAST(0x00008A4200000000 AS DateTime), 2, 36.7100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10357, N'LILAS', CAST(0x00008A3A00000000 AS DateTime), CAST(0x00008A4700000000 AS DateTime), 3, 34.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10358, N'LAMAI', CAST(0x00008A3B00000000 AS DateTime), CAST(0x00008A4200000000 AS DateTime), 1, 19.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10359, N'SEVES', CAST(0x00008A3C00000000 AS DateTime), CAST(0x00008A4100000000 AS DateTime), 3, 288.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10360, N'BLONP', CAST(0x00008A3D00000000 AS DateTime), CAST(0x00008A4700000000 AS DateTime), 3, 131.7000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10361, N'QUICK', CAST(0x00008A3D00000000 AS DateTime), CAST(0x00008A4800000000 AS DateTime), 2, 183.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10362, N'BONAP', CAST(0x00008A4000000000 AS DateTime), CAST(0x00008A4300000000 AS DateTime), 1, 96.0400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10363, N'DRACD', CAST(0x00008A4100000000 AS DateTime), CAST(0x00008A4900000000 AS DateTime), 3, 30.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10364, N'EASTC', CAST(0x00008A4100000000 AS DateTime), CAST(0x00008A4900000000 AS DateTime), 1, 71.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10365, N'ANTON', CAST(0x00008A4200000000 AS DateTime), CAST(0x00008A4700000000 AS DateTime), 2, 22.0000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10366, N'GALED', CAST(0x00008A4300000000 AS DateTime), CAST(0x00008A6300000000 AS DateTime), 2, 10.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10367, N'VAFFE', CAST(0x00008A4300000000 AS DateTime), CAST(0x00008A4700000000 AS DateTime), 3, 13.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10368, N'ERNSH', CAST(0x00008A4400000000 AS DateTime), CAST(0x00008A4700000000 AS DateTime), 2, 101.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10369, N'SPLIR', CAST(0x00008A4700000000 AS DateTime), CAST(0x00008A4E00000000 AS DateTime), 2, 195.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10370, N'CHOPS', CAST(0x00008A4800000000 AS DateTime), CAST(0x00008A6000000000 AS DateTime), 2, 1.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10371, N'LAMAI', CAST(0x00008A4800000000 AS DateTime), CAST(0x00008A5D00000000 AS DateTime), 1, 0.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10372, N'QUEEN', CAST(0x00008A4900000000 AS DateTime), CAST(0x00008A4E00000000 AS DateTime), 2, 890.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10373, N'HUNGO', CAST(0x00008A4A00000000 AS DateTime), CAST(0x00008A5000000000 AS DateTime), 3, 124.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10374, N'WOLZA', CAST(0x00008A4A00000000 AS DateTime), CAST(0x00008A4E00000000 AS DateTime), 3, 3.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10375, N'HUNGC', CAST(0x00008A4B00000000 AS DateTime), CAST(0x00008A4E00000000 AS DateTime), 2, 20.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10376, N'MEREP', CAST(0x00008A4E00000000 AS DateTime), CAST(0x00008A5200000000 AS DateTime), 2, 20.3900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10377, N'SEVES', CAST(0x00008A4E00000000 AS DateTime), CAST(0x00008A5200000000 AS DateTime), 3, 22.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10378, N'FOLKO', CAST(0x00008A4F00000000 AS DateTime), CAST(0x00008A5800000000 AS DateTime), 3, 5.4400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10379, N'QUEDE', CAST(0x00008A5000000000 AS DateTime), CAST(0x00008A5200000000 AS DateTime), 1, 45.0300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10380, N'HUNGO', CAST(0x00008A5100000000 AS DateTime), CAST(0x00008A7400000000 AS DateTime), 3, 35.0300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10381, N'LILAS', CAST(0x00008A5100000000 AS DateTime), CAST(0x00008A5200000000 AS DateTime), 3, 7.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10382, N'ERNSH', CAST(0x00008A5200000000 AS DateTime), CAST(0x00008A5500000000 AS DateTime), 1, 94.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10383, N'AROUT', CAST(0x00008A5500000000 AS DateTime), CAST(0x00008A5700000000 AS DateTime), 3, 34.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10384, N'BERGS', CAST(0x00008A5500000000 AS DateTime), CAST(0x00008A5900000000 AS DateTime), 3, 168.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10385, N'SPLIR', CAST(0x00008A5600000000 AS DateTime), CAST(0x00008A5C00000000 AS DateTime), 2, 30.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10386, N'FAMIA', CAST(0x00008A5700000000 AS DateTime), CAST(0x00008A5E00000000 AS DateTime), 3, 13.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10387, N'SANTG', CAST(0x00008A5700000000 AS DateTime), CAST(0x00008A5900000000 AS DateTime), 2, 93.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10388, N'SEVES', CAST(0x00008A5800000000 AS DateTime), CAST(0x00008A5900000000 AS DateTime), 1, 34.8600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10389, N'BOTTM', CAST(0x00008A5900000000 AS DateTime), CAST(0x00008A5D00000000 AS DateTime), 2, 47.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10390, N'ERNSH', CAST(0x00008A5C00000000 AS DateTime), CAST(0x00008A5F00000000 AS DateTime), 1, 126.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10391, N'DRACD', CAST(0x00008A5C00000000 AS DateTime), CAST(0x00008A6400000000 AS DateTime), 3, 5.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10392, N'PICCO', CAST(0x00008A5D00000000 AS DateTime), CAST(0x00008A6500000000 AS DateTime), 3, 122.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10393, N'SAVEA', CAST(0x00008A5E00000000 AS DateTime), CAST(0x00008A6700000000 AS DateTime), 3, 126.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10394, N'HUNGC', CAST(0x00008A5E00000000 AS DateTime), CAST(0x00008A6700000000 AS DateTime), 3, 30.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10395, N'HILAA', CAST(0x00008A5F00000000 AS DateTime), CAST(0x00008A6700000000 AS DateTime), 1, 184.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10396, N'FRANK', CAST(0x00008A6000000000 AS DateTime), CAST(0x00008A6A00000000 AS DateTime), 3, 135.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10397, N'PRINI', CAST(0x00008A6000000000 AS DateTime), CAST(0x00008A6600000000 AS DateTime), 1, 60.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10398, N'SAVEA', CAST(0x00008A6300000000 AS DateTime), CAST(0x00008A6D00000000 AS DateTime), 3, 89.1600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10399, N'VAFFE', CAST(0x00008A6400000000 AS DateTime), CAST(0x00008A6C00000000 AS DateTime), 3, 27.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10400, N'EASTC', CAST(0x00008A6500000000 AS DateTime), CAST(0x00008A7400000000 AS DateTime), 3, 83.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10401, N'RATTC', CAST(0x00008A6500000000 AS DateTime), CAST(0x00008A6E00000000 AS DateTime), 1, 12.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10402, N'ERNSH', CAST(0x00008A6600000000 AS DateTime), CAST(0x00008A6E00000000 AS DateTime), 2, 67.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10403, N'ERNSH', CAST(0x00008A6700000000 AS DateTime), CAST(0x00008A6D00000000 AS DateTime), 3, 73.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10404, N'MAGAA', CAST(0x00008A6700000000 AS DateTime), CAST(0x00008A6C00000000 AS DateTime), 1, 155.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10405, N'LINOD', CAST(0x00008A6A00000000 AS DateTime), CAST(0x00008A7A00000000 AS DateTime), 1, 34.8200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10406, N'QUEEN', CAST(0x00008A6B00000000 AS DateTime), CAST(0x00008A7100000000 AS DateTime), 1, 108.0400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10407, N'OTTIK', CAST(0x00008A6B00000000 AS DateTime), CAST(0x00008A8200000000 AS DateTime), 2, 91.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10408, N'FOLIG', CAST(0x00008A6C00000000 AS DateTime), CAST(0x00008A7200000000 AS DateTime), 1, 11.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10409, N'OCEAN', CAST(0x00008A6D00000000 AS DateTime), CAST(0x00008A7200000000 AS DateTime), 1, 29.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10410, N'BOTTM', CAST(0x00008A6E00000000 AS DateTime), CAST(0x00008A7300000000 AS DateTime), 3, 2.4000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10411, N'BOTTM', CAST(0x00008A6E00000000 AS DateTime), CAST(0x00008A7900000000 AS DateTime), 3, 23.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10412, N'WARTH', CAST(0x00008A7100000000 AS DateTime), CAST(0x00008A7300000000 AS DateTime), 2, 3.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10413, N'LAMAI', CAST(0x00008A7200000000 AS DateTime), CAST(0x00008A7400000000 AS DateTime), 2, 95.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10414, N'FAMIA', CAST(0x00008A7200000000 AS DateTime), CAST(0x00008A7500000000 AS DateTime), 3, 21.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10415, N'HUNGC', CAST(0x00008A7300000000 AS DateTime), CAST(0x00008A7C00000000 AS DateTime), 1, 0.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10416, N'WARTH', CAST(0x00008A7400000000 AS DateTime), CAST(0x00008A7F00000000 AS DateTime), 3, 22.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10417, N'SIMOB', CAST(0x00008A7400000000 AS DateTime), CAST(0x00008A8000000000 AS DateTime), 3, 70.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10418, N'QUICK', CAST(0x00008A7500000000 AS DateTime), CAST(0x00008A7C00000000 AS DateTime), 1, 17.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10419, N'RICSU', CAST(0x00008A7800000000 AS DateTime), CAST(0x00008A8200000000 AS DateTime), 2, 137.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10420, N'WELLI', CAST(0x00008A7900000000 AS DateTime), CAST(0x00008A7F00000000 AS DateTime), 1, 44.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10421, N'QUEDE', CAST(0x00008A7900000000 AS DateTime), CAST(0x00008A7F00000000 AS DateTime), 1, 99.2300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10422, N'FRANS', CAST(0x00008A7A00000000 AS DateTime), CAST(0x00008A8300000000 AS DateTime), 1, 3.0200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10423, N'GOURL', CAST(0x00008A7B00000000 AS DateTime), CAST(0x00008A9B00000000 AS DateTime), 3, 24.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10424, N'MEREP', CAST(0x00008A7B00000000 AS DateTime), CAST(0x00008A7F00000000 AS DateTime), 2, 370.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10425, N'LAMAI', CAST(0x00008A7C00000000 AS DateTime), CAST(0x00008A9100000000 AS DateTime), 2, 7.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10426, N'GALED', CAST(0x00008A7F00000000 AS DateTime), CAST(0x00008A8900000000 AS DateTime), 1, 18.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10427, N'PICCO', CAST(0x00008A7F00000000 AS DateTime), CAST(0x00008AA200000000 AS DateTime), 2, 31.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10428, N'REGGC', CAST(0x00008A8000000000 AS DateTime), CAST(0x00008A8700000000 AS DateTime), 1, 11.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10429, N'HUNGO', CAST(0x00008A8100000000 AS DateTime), CAST(0x00008A8A00000000 AS DateTime), 2, 56.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10430, N'ERNSH', CAST(0x00008A8200000000 AS DateTime), CAST(0x00008A8600000000 AS DateTime), 1, 458.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10431, N'BOTTM', CAST(0x00008A8200000000 AS DateTime), CAST(0x00008A8A00000000 AS DateTime), 2, 44.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10432, N'SPLIR', CAST(0x00008A8300000000 AS DateTime), CAST(0x00008A8A00000000 AS DateTime), 2, 4.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10433, N'PRINI', CAST(0x00008A8600000000 AS DateTime), CAST(0x00008AA300000000 AS DateTime), 3, 73.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10434, N'FOLKO', CAST(0x00008A8600000000 AS DateTime), CAST(0x00008A9000000000 AS DateTime), 2, 17.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10435, N'CONSH', CAST(0x00008A8700000000 AS DateTime), CAST(0x00008A8A00000000 AS DateTime), 2, 9.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10436, N'BLONP', CAST(0x00008A8800000000 AS DateTime), CAST(0x00008A8E00000000 AS DateTime), 2, 156.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10437, N'WARTH', CAST(0x00008A8800000000 AS DateTime), CAST(0x00008A8F00000000 AS DateTime), 1, 19.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10438, N'TOMSP', CAST(0x00008A8900000000 AS DateTime), CAST(0x00008A9100000000 AS DateTime), 2, 8.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10439, N'MEREP', CAST(0x00008A8A00000000 AS DateTime), CAST(0x00008A8D00000000 AS DateTime), 3, 4.0700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10440, N'SAVEA', CAST(0x00008A8D00000000 AS DateTime), CAST(0x00008A9F00000000 AS DateTime), 2, 86.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10441, N'OLDWO', CAST(0x00008A8D00000000 AS DateTime), CAST(0x00008AAD00000000 AS DateTime), 2, 73.0200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10442, N'ERNSH', CAST(0x00008A8E00000000 AS DateTime), CAST(0x00008A9500000000 AS DateTime), 2, 47.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10443, N'REGGC', CAST(0x00008A8F00000000 AS DateTime), CAST(0x00008A9100000000 AS DateTime), 1, 13.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10444, N'BERGS', CAST(0x00008A8F00000000 AS DateTime), CAST(0x00008A9800000000 AS DateTime), 3, 3.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10445, N'BERGS', CAST(0x00008A9000000000 AS DateTime), CAST(0x00008A9700000000 AS DateTime), 1, 9.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10446, N'TOMSP', CAST(0x00008A9100000000 AS DateTime), CAST(0x00008A9600000000 AS DateTime), 1, 14.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10447, N'RICAR', CAST(0x00008A9100000000 AS DateTime), CAST(0x00008AA600000000 AS DateTime), 2, 68.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10448, N'RANCH', CAST(0x00008A9400000000 AS DateTime), CAST(0x00008A9B00000000 AS DateTime), 2, 38.8200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10449, N'BLONP', CAST(0x00008A9500000000 AS DateTime), CAST(0x00008A9E00000000 AS DateTime), 2, 53.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10450, N'VICTE', CAST(0x00008A9600000000 AS DateTime), CAST(0x00008AAA00000000 AS DateTime), 2, 7.2300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10451, N'QUICK', CAST(0x00008A9600000000 AS DateTime), CAST(0x00008AAB00000000 AS DateTime), 3, 189.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10452, N'SAVEA', CAST(0x00008A9700000000 AS DateTime), CAST(0x00008A9D00000000 AS DateTime), 1, 140.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10453, N'AROUT', CAST(0x00008A9800000000 AS DateTime), CAST(0x00008A9D00000000 AS DateTime), 2, 25.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10454, N'LAMAI', CAST(0x00008A9800000000 AS DateTime), CAST(0x00008A9C00000000 AS DateTime), 3, 2.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10455, N'WARTH', CAST(0x00008A9B00000000 AS DateTime), CAST(0x00008AA200000000 AS DateTime), 2, 180.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10456, N'KOENE', CAST(0x00008A9C00000000 AS DateTime), CAST(0x00008A9F00000000 AS DateTime), 2, 8.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10457, N'KOENE', CAST(0x00008A9C00000000 AS DateTime), CAST(0x00008AA200000000 AS DateTime), 1, 11.5700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10458, N'SUPRD', CAST(0x00008A9D00000000 AS DateTime), CAST(0x00008AA300000000 AS DateTime), 3, 147.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10459, N'VICTE', CAST(0x00008A9E00000000 AS DateTime), CAST(0x00008A9F00000000 AS DateTime), 2, 25.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10460, N'FOLKO', CAST(0x00008A9F00000000 AS DateTime), CAST(0x00008AA200000000 AS DateTime), 1, 16.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10461, N'LILAS', CAST(0x00008A9F00000000 AS DateTime), CAST(0x00008AA400000000 AS DateTime), 3, 148.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10462, N'CONSH', CAST(0x00008AA200000000 AS DateTime), CAST(0x00008AB100000000 AS DateTime), 1, 6.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10463, N'SUPRD', CAST(0x00008AA300000000 AS DateTime), CAST(0x00008AA500000000 AS DateTime), 3, 14.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10464, N'FURIB', CAST(0x00008AA300000000 AS DateTime), CAST(0x00008AAD00000000 AS DateTime), 2, 89.0000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10465, N'VAFFE', CAST(0x00008AA400000000 AS DateTime), CAST(0x00008AAD00000000 AS DateTime), 3, 145.0400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10466, N'COMMI', CAST(0x00008AA500000000 AS DateTime), CAST(0x00008AAC00000000 AS DateTime), 1, 11.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10467, N'MAGAA', CAST(0x00008AA500000000 AS DateTime), CAST(0x00008AAA00000000 AS DateTime), 2, 4.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10468, N'KOENE', CAST(0x00008AA600000000 AS DateTime), CAST(0x00008AAB00000000 AS DateTime), 3, 44.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10469, N'WHITC', CAST(0x00008AA900000000 AS DateTime), CAST(0x00008AAD00000000 AS DateTime), 1, 60.1800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10470, N'BONAP', CAST(0x00008AAA00000000 AS DateTime), CAST(0x00008AAD00000000 AS DateTime), 2, 64.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10471, N'BSBEV', CAST(0x00008AAA00000000 AS DateTime), CAST(0x00008AB100000000 AS DateTime), 3, 45.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10472, N'SEVES', CAST(0x00008AAB00000000 AS DateTime), CAST(0x00008AB200000000 AS DateTime), 1, 4.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10473, N'ISLAT', CAST(0x00008AAC00000000 AS DateTime), CAST(0x00008AB400000000 AS DateTime), 3, 16.3700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10474, N'PERIC', CAST(0x00008AAC00000000 AS DateTime), CAST(0x00008AB400000000 AS DateTime), 2, 83.4900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10475, N'SUPRD', CAST(0x00008AAD00000000 AS DateTime), CAST(0x00008AC200000000 AS DateTime), 1, 68.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10476, N'HILAA', CAST(0x00008AB000000000 AS DateTime), CAST(0x00008AB700000000 AS DateTime), 3, 4.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10477, N'PRINI', CAST(0x00008AB000000000 AS DateTime), CAST(0x00008AB800000000 AS DateTime), 2, 13.0200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10478, N'VICTE', CAST(0x00008AB100000000 AS DateTime), CAST(0x00008AB900000000 AS DateTime), 3, 4.8100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10479, N'RATTC', CAST(0x00008AB200000000 AS DateTime), CAST(0x00008AB400000000 AS DateTime), 3, 708.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10480, N'FOLIG', CAST(0x00008AB300000000 AS DateTime), CAST(0x00008AB700000000 AS DateTime), 2, 1.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10481, N'RICAR', CAST(0x00008AB300000000 AS DateTime), CAST(0x00008AB800000000 AS DateTime), 2, 64.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10482, N'LAZYK', CAST(0x00008AB400000000 AS DateTime), CAST(0x00008AC800000000 AS DateTime), 3, 7.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10483, N'WHITC', CAST(0x00008AB700000000 AS DateTime), CAST(0x00008AD700000000 AS DateTime), 2, 15.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10484, N'BSBEV', CAST(0x00008AB700000000 AS DateTime), CAST(0x00008ABF00000000 AS DateTime), 3, 6.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10485, N'LINOD', CAST(0x00008AB800000000 AS DateTime), CAST(0x00008ABE00000000 AS DateTime), 2, 64.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10486, N'HILAA', CAST(0x00008AB900000000 AS DateTime), CAST(0x00008AC000000000 AS DateTime), 2, 30.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10487, N'QUEEN', CAST(0x00008AB900000000 AS DateTime), CAST(0x00008ABB00000000 AS DateTime), 2, 71.0700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10488, N'FRANK', CAST(0x00008ABA00000000 AS DateTime), CAST(0x00008AC000000000 AS DateTime), 2, 4.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10489, N'PICCO', CAST(0x00008ABB00000000 AS DateTime), CAST(0x00008AC700000000 AS DateTime), 2, 5.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10490, N'HILAA', CAST(0x00008ABE00000000 AS DateTime), CAST(0x00008AC100000000 AS DateTime), 2, 210.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10491, N'FURIB', CAST(0x00008ABE00000000 AS DateTime), CAST(0x00008AC600000000 AS DateTime), 3, 16.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10492, N'BOTTM', CAST(0x00008ABF00000000 AS DateTime), CAST(0x00008AC900000000 AS DateTime), 1, 62.8900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10493, N'LAMAI', CAST(0x00008AC000000000 AS DateTime), CAST(0x00008AC800000000 AS DateTime), 3, 10.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10494, N'COMMI', CAST(0x00008AC000000000 AS DateTime), CAST(0x00008AC700000000 AS DateTime), 2, 65.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10495, N'LAUGB', CAST(0x00008AC100000000 AS DateTime), CAST(0x00008AC900000000 AS DateTime), 3, 4.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10496, N'TRADH', CAST(0x00008AC200000000 AS DateTime), CAST(0x00008AC500000000 AS DateTime), 2, 46.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10497, N'LEHMS', CAST(0x00008AC200000000 AS DateTime), CAST(0x00008AC500000000 AS DateTime), 1, 36.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10498, N'HILAA', CAST(0x00008AC500000000 AS DateTime), CAST(0x00008AC900000000 AS DateTime), 2, 29.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10499, N'LILAS', CAST(0x00008AC600000000 AS DateTime), CAST(0x00008ACE00000000 AS DateTime), 2, 102.0200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10500, N'LAMAI', CAST(0x00008AC700000000 AS DateTime), CAST(0x00008ACF00000000 AS DateTime), 1, 42.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10501, N'BLAUS', CAST(0x00008AC700000000 AS DateTime), CAST(0x00008ACE00000000 AS DateTime), 3, 8.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10502, N'PERIC', CAST(0x00008AC800000000 AS DateTime), CAST(0x00008ADB00000000 AS DateTime), 1, 69.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10503, N'HUNGO', CAST(0x00008AC900000000 AS DateTime), CAST(0x00008ACE00000000 AS DateTime), 2, 16.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10504, N'WHITC', CAST(0x00008AC900000000 AS DateTime), CAST(0x00008AD000000000 AS DateTime), 3, 59.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10505, N'MEREP', CAST(0x00008ACC00000000 AS DateTime), CAST(0x00008AD300000000 AS DateTime), 3, 7.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10506, N'KOENE', CAST(0x00008ACD00000000 AS DateTime), CAST(0x00008ADE00000000 AS DateTime), 2, 21.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10507, N'ANTON', CAST(0x00008ACD00000000 AS DateTime), CAST(0x00008AD400000000 AS DateTime), 1, 47.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10508, N'OTTIK', CAST(0x00008ACE00000000 AS DateTime), CAST(0x00008AE900000000 AS DateTime), 2, 4.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10509, N'BLAUS', CAST(0x00008ACF00000000 AS DateTime), CAST(0x00008ADB00000000 AS DateTime), 1, 0.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10510, N'SAVEA', CAST(0x00008AD000000000 AS DateTime), CAST(0x00008ADA00000000 AS DateTime), 3, 367.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10511, N'BONAP', CAST(0x00008AD000000000 AS DateTime), CAST(0x00008AD300000000 AS DateTime), 3, 350.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10512, N'FAMIA', CAST(0x00008AD300000000 AS DateTime), CAST(0x00008AD600000000 AS DateTime), 2, 3.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10513, N'WANDK', CAST(0x00008AD400000000 AS DateTime), CAST(0x00008ADA00000000 AS DateTime), 1, 105.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10514, N'ERNSH', CAST(0x00008AD400000000 AS DateTime), CAST(0x00008AEC00000000 AS DateTime), 2, 789.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10515, N'QUICK', CAST(0x00008AD500000000 AS DateTime), CAST(0x00008AF300000000 AS DateTime), 1, 204.4700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10516, N'HUNGO', CAST(0x00008AD600000000 AS DateTime), CAST(0x00008ADD00000000 AS DateTime), 3, 62.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10517, N'NORTS', CAST(0x00008AD600000000 AS DateTime), CAST(0x00008ADB00000000 AS DateTime), 3, 32.0700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10518, N'TORTU', CAST(0x00008AD700000000 AS DateTime), CAST(0x00008AE100000000 AS DateTime), 2, 218.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10519, N'CHOPS', CAST(0x00008ADA00000000 AS DateTime), CAST(0x00008ADD00000000 AS DateTime), 3, 91.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10520, N'SANTG', CAST(0x00008ADB00000000 AS DateTime), CAST(0x00008ADD00000000 AS DateTime), 1, 13.3700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10521, N'CACTU', CAST(0x00008ADB00000000 AS DateTime), CAST(0x00008ADE00000000 AS DateTime), 2, 17.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10522, N'LEHMS', CAST(0x00008ADC00000000 AS DateTime), CAST(0x00008AE200000000 AS DateTime), 1, 45.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10523, N'SEVES', CAST(0x00008ADD00000000 AS DateTime), CAST(0x00008AFA00000000 AS DateTime), 2, 77.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10524, N'BERGS', CAST(0x00008ADD00000000 AS DateTime), CAST(0x00008AE300000000 AS DateTime), 2, 244.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10525, N'BONAP', CAST(0x00008ADE00000000 AS DateTime), CAST(0x00008AF300000000 AS DateTime), 2, 11.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10526, N'WARTH', CAST(0x00008AE100000000 AS DateTime), CAST(0x00008AEB00000000 AS DateTime), 2, 58.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10527, N'QUICK', CAST(0x00008AE100000000 AS DateTime), CAST(0x00008AE300000000 AS DateTime), 1, 41.9000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10528, N'GREAL', CAST(0x00008AE200000000 AS DateTime), CAST(0x00008AE500000000 AS DateTime), 2, 3.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10529, N'MAISD', CAST(0x00008AE300000000 AS DateTime), CAST(0x00008AE500000000 AS DateTime), 2, 66.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10530, N'PICCO', CAST(0x00008AE400000000 AS DateTime), CAST(0x00008AE800000000 AS DateTime), 2, 339.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10531, N'OCEAN', CAST(0x00008AE400000000 AS DateTime), CAST(0x00008AEF00000000 AS DateTime), 1, 8.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10532, N'EASTC', CAST(0x00008AE500000000 AS DateTime), CAST(0x00008AE800000000 AS DateTime), 3, 74.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10533, N'FOLKO', CAST(0x00008AE800000000 AS DateTime), CAST(0x00008AF200000000 AS DateTime), 1, 188.0400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10534, N'LEHMS', CAST(0x00008AE800000000 AS DateTime), CAST(0x00008AEA00000000 AS DateTime), 2, 27.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10535, N'ANTON', CAST(0x00008AE900000000 AS DateTime), CAST(0x00008AF100000000 AS DateTime), 1, 15.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10536, N'LEHMS', CAST(0x00008AEA00000000 AS DateTime), CAST(0x00008B0100000000 AS DateTime), 2, 58.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10537, N'RICSU', CAST(0x00008AEA00000000 AS DateTime), CAST(0x00008AEF00000000 AS DateTime), 1, 78.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10538, N'BSBEV', CAST(0x00008AEB00000000 AS DateTime), CAST(0x00008AEC00000000 AS DateTime), 3, 4.8700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10539, N'BSBEV', CAST(0x00008AEC00000000 AS DateTime), CAST(0x00008AF300000000 AS DateTime), 3, 12.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10540, N'QUICK', CAST(0x00008AEF00000000 AS DateTime), CAST(0x00008B0800000000 AS DateTime), 3, 1007.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10541, N'HANAR', CAST(0x00008AEF00000000 AS DateTime), CAST(0x00008AF900000000 AS DateTime), 1, 68.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10542, N'KOENE', CAST(0x00008AF000000000 AS DateTime), CAST(0x00008AF600000000 AS DateTime), 3, 10.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10543, N'LILAS', CAST(0x00008AF100000000 AS DateTime), CAST(0x00008AF300000000 AS DateTime), 2, 48.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10544, N'LONEP', CAST(0x00008AF100000000 AS DateTime), CAST(0x00008AFA00000000 AS DateTime), 1, 24.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10545, N'LAZYK', CAST(0x00008AF200000000 AS DateTime), CAST(0x00008B1500000000 AS DateTime), 2, 11.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10546, N'VICTE', CAST(0x00008AF300000000 AS DateTime), CAST(0x00008AF700000000 AS DateTime), 3, 194.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10547, N'SEVES', CAST(0x00008AF300000000 AS DateTime), CAST(0x00008AFD00000000 AS DateTime), 2, 178.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10548, N'TOMSP', CAST(0x00008AF600000000 AS DateTime), CAST(0x00008AFD00000000 AS DateTime), 2, 1.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10549, N'QUICK', CAST(0x00008AF700000000 AS DateTime), CAST(0x00008AFA00000000 AS DateTime), 1, 171.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10550, N'GODOS', CAST(0x00008AF800000000 AS DateTime), CAST(0x00008B0100000000 AS DateTime), 3, 4.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10551, N'FURIB', CAST(0x00008AF800000000 AS DateTime), CAST(0x00008B0100000000 AS DateTime), 3, 72.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10552, N'HILAA', CAST(0x00008AF900000000 AS DateTime), CAST(0x00008B0000000000 AS DateTime), 1, 83.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10553, N'WARTH', CAST(0x00008AFA00000000 AS DateTime), CAST(0x00008AFE00000000 AS DateTime), 2, 149.4900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10554, N'OTTIK', CAST(0x00008AFA00000000 AS DateTime), CAST(0x00008B0000000000 AS DateTime), 3, 120.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10555, N'SAVEA', CAST(0x00008AFD00000000 AS DateTime), CAST(0x00008AFF00000000 AS DateTime), 3, 252.4900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10556, N'SIMOB', CAST(0x00008AFE00000000 AS DateTime), CAST(0x00008B0800000000 AS DateTime), 1, 9.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10557, N'LEHMS', CAST(0x00008AFE00000000 AS DateTime), CAST(0x00008B0100000000 AS DateTime), 2, 96.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10558, N'AROUT', CAST(0x00008AFF00000000 AS DateTime), CAST(0x00008B0500000000 AS DateTime), 2, 72.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10559, N'BLONP', CAST(0x00008B0000000000 AS DateTime), CAST(0x00008B0800000000 AS DateTime), 1, 8.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10560, N'FRANK', CAST(0x00008B0100000000 AS DateTime), CAST(0x00008B0400000000 AS DateTime), 1, 36.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10561, N'FOLKO', CAST(0x00008B0100000000 AS DateTime), CAST(0x00008B0400000000 AS DateTime), 2, 242.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10562, N'REGGC', CAST(0x00008B0400000000 AS DateTime), CAST(0x00008B0700000000 AS DateTime), 1, 22.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10563, N'RICAR', CAST(0x00008B0500000000 AS DateTime), CAST(0x00008B1300000000 AS DateTime), 2, 60.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10564, N'RATTC', CAST(0x00008B0500000000 AS DateTime), CAST(0x00008B0B00000000 AS DateTime), 3, 13.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10565, N'MEREP', CAST(0x00008B0600000000 AS DateTime), CAST(0x00008B0D00000000 AS DateTime), 2, 7.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10566, N'BLONP', CAST(0x00008B0700000000 AS DateTime), CAST(0x00008B0D00000000 AS DateTime), 1, 88.4000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10567, N'HUNGO', CAST(0x00008B0700000000 AS DateTime), CAST(0x00008B0C00000000 AS DateTime), 1, 33.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10568, N'GALED', CAST(0x00008B0800000000 AS DateTime), CAST(0x00008B2200000000 AS DateTime), 3, 6.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10569, N'RATTC', CAST(0x00008B0B00000000 AS DateTime), CAST(0x00008B2400000000 AS DateTime), 1, 58.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10570, N'MEREP', CAST(0x00008B0C00000000 AS DateTime), CAST(0x00008B0E00000000 AS DateTime), 3, 188.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10571, N'ERNSH', CAST(0x00008B0C00000000 AS DateTime), CAST(0x00008B1D00000000 AS DateTime), 3, 26.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10572, N'BERGS', CAST(0x00008B0D00000000 AS DateTime), CAST(0x00008B1400000000 AS DateTime), 2, 116.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10573, N'ANTON', CAST(0x00008B0E00000000 AS DateTime), CAST(0x00008B0F00000000 AS DateTime), 3, 84.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10574, N'TRAIH', CAST(0x00008B0E00000000 AS DateTime), CAST(0x00008B1900000000 AS DateTime), 2, 37.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10575, N'MORGK', CAST(0x00008B0F00000000 AS DateTime), CAST(0x00008B1900000000 AS DateTime), 1, 127.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10576, N'TORTU', CAST(0x00008B1200000000 AS DateTime), CAST(0x00008B1900000000 AS DateTime), 3, 18.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10577, N'TRAIH', CAST(0x00008B1200000000 AS DateTime), CAST(0x00008B1900000000 AS DateTime), 2, 25.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10578, N'BSBEV', CAST(0x00008B1300000000 AS DateTime), CAST(0x00008B3200000000 AS DateTime), 3, 29.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10579, N'LETSS', CAST(0x00008B1400000000 AS DateTime), CAST(0x00008B1D00000000 AS DateTime), 2, 13.7300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10580, N'OTTIK', CAST(0x00008B1500000000 AS DateTime), CAST(0x00008B1A00000000 AS DateTime), 3, 75.8900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10581, N'FAMIA', CAST(0x00008B1500000000 AS DateTime), CAST(0x00008B1B00000000 AS DateTime), 1, 3.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10582, N'BLAUS', CAST(0x00008B1600000000 AS DateTime), CAST(0x00008B2700000000 AS DateTime), 2, 27.7100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10583, N'WARTH', CAST(0x00008B1900000000 AS DateTime), CAST(0x00008B1D00000000 AS DateTime), 2, 7.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10584, N'BLONP', CAST(0x00008B1900000000 AS DateTime), CAST(0x00008B1D00000000 AS DateTime), 1, 59.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10585, N'WELLI', CAST(0x00008B1A00000000 AS DateTime), CAST(0x00008B2300000000 AS DateTime), 1, 13.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10586, N'REGGC', CAST(0x00008B1B00000000 AS DateTime), CAST(0x00008B2200000000 AS DateTime), 1, 0.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10587, N'QUEDE', CAST(0x00008B1B00000000 AS DateTime), CAST(0x00008B2200000000 AS DateTime), 1, 62.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10588, N'QUICK', CAST(0x00008B1C00000000 AS DateTime), CAST(0x00008B2300000000 AS DateTime), 3, 194.6700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10589, N'GREAL', CAST(0x00008B1D00000000 AS DateTime), CAST(0x00008B2700000000 AS DateTime), 2, 4.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10590, N'MEREP', CAST(0x00008B2000000000 AS DateTime), CAST(0x00008B2700000000 AS DateTime), 3, 44.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10591, N'VAFFE', CAST(0x00008B2000000000 AS DateTime), CAST(0x00008B2900000000 AS DateTime), 1, 55.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10592, N'LEHMS', CAST(0x00008B2100000000 AS DateTime), CAST(0x00008B2900000000 AS DateTime), 1, 32.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10593, N'LEHMS', CAST(0x00008B2200000000 AS DateTime), CAST(0x00008B4500000000 AS DateTime), 2, 174.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10594, N'OLDWO', CAST(0x00008B2200000000 AS DateTime), CAST(0x00008B2900000000 AS DateTime), 2, 5.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10595, N'ERNSH', CAST(0x00008B2300000000 AS DateTime), CAST(0x00008B2700000000 AS DateTime), 1, 96.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10596, N'WHITC', CAST(0x00008B2400000000 AS DateTime), CAST(0x00008B4400000000 AS DateTime), 1, 16.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10597, N'PICCO', CAST(0x00008B2400000000 AS DateTime), CAST(0x00008B2B00000000 AS DateTime), 3, 35.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10598, N'RATTC', CAST(0x00008B2700000000 AS DateTime), CAST(0x00008B2B00000000 AS DateTime), 3, 44.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10599, N'BSBEV', CAST(0x00008B2800000000 AS DateTime), CAST(0x00008B2E00000000 AS DateTime), 3, 29.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10600, N'HUNGC', CAST(0x00008B2900000000 AS DateTime), CAST(0x00008B2E00000000 AS DateTime), 1, 45.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10601, N'HILAA', CAST(0x00008B2900000000 AS DateTime), CAST(0x00008B2F00000000 AS DateTime), 1, 58.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10602, N'VAFFE', CAST(0x00008B2A00000000 AS DateTime), CAST(0x00008B2F00000000 AS DateTime), 2, 2.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10603, N'SAVEA', CAST(0x00008B2B00000000 AS DateTime), CAST(0x00008B4000000000 AS DateTime), 2, 48.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10604, N'FURIB', CAST(0x00008B2B00000000 AS DateTime), CAST(0x00008B3600000000 AS DateTime), 1, 7.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10605, N'MEREP', CAST(0x00008B2E00000000 AS DateTime), CAST(0x00008B3600000000 AS DateTime), 2, 379.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10606, N'TRADH', CAST(0x00008B2F00000000 AS DateTime), CAST(0x00008B3800000000 AS DateTime), 3, 79.4000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10607, N'SAVEA', CAST(0x00008B2F00000000 AS DateTime), CAST(0x00008B3200000000 AS DateTime), 1, 200.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10608, N'TOMSP', CAST(0x00008B3000000000 AS DateTime), CAST(0x00008B3900000000 AS DateTime), 2, 27.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10609, N'DUMON', CAST(0x00008B3100000000 AS DateTime), CAST(0x00008B3700000000 AS DateTime), 2, 1.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10610, N'LAMAI', CAST(0x00008B3200000000 AS DateTime), CAST(0x00008B3E00000000 AS DateTime), 1, 26.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10611, N'WOLZA', CAST(0x00008B3200000000 AS DateTime), CAST(0x00008B3900000000 AS DateTime), 2, 80.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10612, N'SAVEA', CAST(0x00008B3500000000 AS DateTime), CAST(0x00008B3900000000 AS DateTime), 2, 544.0800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10613, N'HILAA', CAST(0x00008B3600000000 AS DateTime), CAST(0x00008B3900000000 AS DateTime), 2, 8.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10614, N'BLAUS', CAST(0x00008B3600000000 AS DateTime), CAST(0x00008B3900000000 AS DateTime), 3, 1.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10615, N'WILMK', CAST(0x00008B3700000000 AS DateTime), CAST(0x00008B3E00000000 AS DateTime), 3, 0.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10616, N'GREAL', CAST(0x00008B3800000000 AS DateTime), CAST(0x00008B3D00000000 AS DateTime), 2, 116.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10617, N'GREAL', CAST(0x00008B3800000000 AS DateTime), CAST(0x00008B3C00000000 AS DateTime), 2, 18.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10618, N'MEREP', CAST(0x00008B3900000000 AS DateTime), CAST(0x00008B4000000000 AS DateTime), 1, 154.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10619, N'MEREP', CAST(0x00008B3C00000000 AS DateTime), CAST(0x00008B3F00000000 AS DateTime), 3, 91.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10620, N'LAUGB', CAST(0x00008B3D00000000 AS DateTime), CAST(0x00008B4600000000 AS DateTime), 3, 0.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10621, N'ISLAT', CAST(0x00008B3D00000000 AS DateTime), CAST(0x00008B4300000000 AS DateTime), 2, 23.7300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10622, N'RICAR', CAST(0x00008B3E00000000 AS DateTime), CAST(0x00008B4300000000 AS DateTime), 3, 50.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10623, N'FRANK', CAST(0x00008B3F00000000 AS DateTime), CAST(0x00008B4400000000 AS DateTime), 2, 97.1800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10624, N'THECR', CAST(0x00008B3F00000000 AS DateTime), CAST(0x00008B4B00000000 AS DateTime), 2, 94.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10625, N'ANATR', CAST(0x00008B4000000000 AS DateTime), CAST(0x00008B4600000000 AS DateTime), 1, 43.9000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10626, N'BERGS', CAST(0x00008B4300000000 AS DateTime), CAST(0x00008B4C00000000 AS DateTime), 2, 138.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10627, N'SAVEA', CAST(0x00008B4300000000 AS DateTime), CAST(0x00008B4D00000000 AS DateTime), 3, 107.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10628, N'BLONP', CAST(0x00008B4400000000 AS DateTime), CAST(0x00008B4C00000000 AS DateTime), 3, 30.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10629, N'GODOS', CAST(0x00008B4400000000 AS DateTime), CAST(0x00008B4C00000000 AS DateTime), 3, 85.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10630, N'KOENE', CAST(0x00008B4500000000 AS DateTime), CAST(0x00008B4B00000000 AS DateTime), 2, 32.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10631, N'LAMAI', CAST(0x00008B4600000000 AS DateTime), CAST(0x00008B4700000000 AS DateTime), 1, 0.8700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10632, N'WANDK', CAST(0x00008B4600000000 AS DateTime), CAST(0x00008B4B00000000 AS DateTime), 1, 41.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10633, N'ERNSH', CAST(0x00008B4700000000 AS DateTime), CAST(0x00008B4A00000000 AS DateTime), 3, 477.9000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10634, N'FOLIG', CAST(0x00008B4700000000 AS DateTime), CAST(0x00008B4D00000000 AS DateTime), 3, 487.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10635, N'MAGAA', CAST(0x00008B4A00000000 AS DateTime), CAST(0x00008B4D00000000 AS DateTime), 3, 47.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10636, N'WARTH', CAST(0x00008B4B00000000 AS DateTime), CAST(0x00008B5200000000 AS DateTime), 1, 1.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10637, N'QUEEN', CAST(0x00008B4B00000000 AS DateTime), CAST(0x00008B5200000000 AS DateTime), 1, 201.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10638, N'LINOD', CAST(0x00008B4C00000000 AS DateTime), CAST(0x00008B5800000000 AS DateTime), 1, 158.4400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10639, N'SANTG', CAST(0x00008B4C00000000 AS DateTime), CAST(0x00008B5300000000 AS DateTime), 3, 38.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10640, N'WANDK', CAST(0x00008B4D00000000 AS DateTime), CAST(0x00008B5400000000 AS DateTime), 1, 23.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10641, N'HILAA', CAST(0x00008B4E00000000 AS DateTime), CAST(0x00008B5200000000 AS DateTime), 2, 179.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10642, N'SIMOB', CAST(0x00008B4E00000000 AS DateTime), CAST(0x00008B5C00000000 AS DateTime), 3, 41.8900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10643, N'ALFKI', CAST(0x00008B5100000000 AS DateTime), CAST(0x00008B5900000000 AS DateTime), 1, 29.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10644, N'WELLI', CAST(0x00008B5100000000 AS DateTime), CAST(0x00008B5800000000 AS DateTime), 2, 0.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10645, N'HANAR', CAST(0x00008B5200000000 AS DateTime), CAST(0x00008B5900000000 AS DateTime), 1, 12.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10646, N'HUNGO', CAST(0x00008B5300000000 AS DateTime), CAST(0x00008B5A00000000 AS DateTime), 3, 142.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10647, N'QUEDE', CAST(0x00008B5300000000 AS DateTime), CAST(0x00008B5A00000000 AS DateTime), 2, 45.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10648, N'RICAR', CAST(0x00008B5400000000 AS DateTime), CAST(0x00008B6000000000 AS DateTime), 2, 14.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10649, N'MAISD', CAST(0x00008B5400000000 AS DateTime), CAST(0x00008B5500000000 AS DateTime), 3, 6.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10650, N'FAMIA', CAST(0x00008B5500000000 AS DateTime), CAST(0x00008B5A00000000 AS DateTime), 3, 176.8100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10651, N'WANDK', CAST(0x00008B5800000000 AS DateTime), CAST(0x00008B6200000000 AS DateTime), 2, 20.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10652, N'GOURL', CAST(0x00008B5800000000 AS DateTime), CAST(0x00008B5F00000000 AS DateTime), 2, 7.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10653, N'FRANK', CAST(0x00008B5900000000 AS DateTime), CAST(0x00008B6A00000000 AS DateTime), 1, 93.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10654, N'BERGS', CAST(0x00008B5900000000 AS DateTime), CAST(0x00008B6200000000 AS DateTime), 1, 55.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10655, N'REGGC', CAST(0x00008B5A00000000 AS DateTime), CAST(0x00008B6200000000 AS DateTime), 2, 4.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10656, N'GREAL', CAST(0x00008B5B00000000 AS DateTime), CAST(0x00008B6100000000 AS DateTime), 1, 57.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10657, N'SAVEA', CAST(0x00008B5B00000000 AS DateTime), CAST(0x00008B6600000000 AS DateTime), 2, 352.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10658, N'QUICK', CAST(0x00008B5C00000000 AS DateTime), CAST(0x00008B5F00000000 AS DateTime), 1, 364.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10659, N'QUEEN', CAST(0x00008B5C00000000 AS DateTime), CAST(0x00008B6100000000 AS DateTime), 2, 105.8100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10660, N'HUNGC', CAST(0x00008B5F00000000 AS DateTime), CAST(0x00008B8400000000 AS DateTime), 1, 111.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10661, N'HUNGO', CAST(0x00008B6000000000 AS DateTime), CAST(0x00008B6600000000 AS DateTime), 3, 17.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10662, N'LONEP', CAST(0x00008B6000000000 AS DateTime), CAST(0x00008B6900000000 AS DateTime), 2, 1.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10663, N'BONAP', CAST(0x00008B6100000000 AS DateTime), CAST(0x00008B7800000000 AS DateTime), 2, 113.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10664, N'FURIB', CAST(0x00008B6100000000 AS DateTime), CAST(0x00008B6A00000000 AS DateTime), 3, 1.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10665, N'LONEP', CAST(0x00008B6200000000 AS DateTime), CAST(0x00008B6800000000 AS DateTime), 2, 26.3100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10666, N'RICSU', CAST(0x00008B6300000000 AS DateTime), CAST(0x00008B6D00000000 AS DateTime), 2, 232.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10667, N'ERNSH', CAST(0x00008B6300000000 AS DateTime), CAST(0x00008B6A00000000 AS DateTime), 1, 78.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10668, N'WANDK', CAST(0x00008B6600000000 AS DateTime), CAST(0x00008B6E00000000 AS DateTime), 2, 47.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10669, N'SIMOB', CAST(0x00008B6600000000 AS DateTime), CAST(0x00008B6D00000000 AS DateTime), 1, 24.3900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10670, N'FRANK', CAST(0x00008B6700000000 AS DateTime), CAST(0x00008B6900000000 AS DateTime), 1, 203.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10671, N'FRANR', CAST(0x00008B6800000000 AS DateTime), CAST(0x00008B6F00000000 AS DateTime), 1, 30.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10672, N'BERGS', CAST(0x00008B6800000000 AS DateTime), CAST(0x00008B7100000000 AS DateTime), 2, 95.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10673, N'WILMK', CAST(0x00008B6900000000 AS DateTime), CAST(0x00008B6A00000000 AS DateTime), 1, 22.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10674, N'ISLAT', CAST(0x00008B6900000000 AS DateTime), CAST(0x00008B7500000000 AS DateTime), 2, 0.9000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10675, N'FRANK', CAST(0x00008B6A00000000 AS DateTime), CAST(0x00008B6E00000000 AS DateTime), 2, 31.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10676, N'TORTU', CAST(0x00008B6D00000000 AS DateTime), CAST(0x00008B7400000000 AS DateTime), 2, 2.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10677, N'ANTON', CAST(0x00008B6D00000000 AS DateTime), CAST(0x00008B7100000000 AS DateTime), 3, 4.0300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10678, N'SAVEA', CAST(0x00008B6E00000000 AS DateTime), CAST(0x00008B8500000000 AS DateTime), 3, 388.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10679, N'BLONP', CAST(0x00008B6E00000000 AS DateTime), CAST(0x00008B7500000000 AS DateTime), 3, 27.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10680, N'OLDWO', CAST(0x00008B6F00000000 AS DateTime), CAST(0x00008B7100000000 AS DateTime), 1, 26.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10681, N'GREAL', CAST(0x00008B7000000000 AS DateTime), CAST(0x00008B7500000000 AS DateTime), 3, 76.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10682, N'ANTON', CAST(0x00008B7000000000 AS DateTime), CAST(0x00008B7600000000 AS DateTime), 2, 36.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10683, N'DUMON', CAST(0x00008B7100000000 AS DateTime), CAST(0x00008B7600000000 AS DateTime), 1, 4.4000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10684, N'OTTIK', CAST(0x00008B7100000000 AS DateTime), CAST(0x00008B7500000000 AS DateTime), 1, 145.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10685, N'GOURL', CAST(0x00008B7400000000 AS DateTime), CAST(0x00008B7800000000 AS DateTime), 2, 33.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10686, N'PICCO', CAST(0x00008B7500000000 AS DateTime), CAST(0x00008B7D00000000 AS DateTime), 1, 96.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10687, N'HUNGO', CAST(0x00008B7500000000 AS DateTime), CAST(0x00008B9300000000 AS DateTime), 2, 296.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10688, N'VAFFE', CAST(0x00008B7600000000 AS DateTime), CAST(0x00008B7C00000000 AS DateTime), 2, 299.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10689, N'BERGS', CAST(0x00008B7600000000 AS DateTime), CAST(0x00008B7C00000000 AS DateTime), 2, 13.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10690, N'HANAR', CAST(0x00008B7700000000 AS DateTime), CAST(0x00008B7800000000 AS DateTime), 1, 15.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10691, N'QUICK', CAST(0x00008B7800000000 AS DateTime), CAST(0x00008B8B00000000 AS DateTime), 2, 810.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10692, N'ALFKI', CAST(0x00008B7800000000 AS DateTime), CAST(0x00008B8200000000 AS DateTime), 2, 61.0200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10693, N'WHITC', CAST(0x00008B7B00000000 AS DateTime), CAST(0x00008B7F00000000 AS DateTime), 3, 139.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10694, N'QUICK', CAST(0x00008B7B00000000 AS DateTime), CAST(0x00008B7E00000000 AS DateTime), 3, 398.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10695, N'WILMK', CAST(0x00008B7C00000000 AS DateTime), CAST(0x00008B8300000000 AS DateTime), 1, 16.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10696, N'WHITC', CAST(0x00008B7D00000000 AS DateTime), CAST(0x00008B8300000000 AS DateTime), 3, 102.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10697, N'LINOD', CAST(0x00008B7D00000000 AS DateTime), CAST(0x00008B8300000000 AS DateTime), 1, 45.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10698, N'ERNSH', CAST(0x00008B7E00000000 AS DateTime), CAST(0x00008B8600000000 AS DateTime), 1, 272.4700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10699, N'MORGK', CAST(0x00008B7E00000000 AS DateTime), CAST(0x00008B8200000000 AS DateTime), 3, 0.5800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10700, N'SAVEA', CAST(0x00008B7F00000000 AS DateTime), CAST(0x00008B8500000000 AS DateTime), 1, 65.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10701, N'HUNGO', CAST(0x00008B8200000000 AS DateTime), CAST(0x00008B8400000000 AS DateTime), 3, 220.3100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10702, N'ALFKI', CAST(0x00008B8200000000 AS DateTime), CAST(0x00008B8A00000000 AS DateTime), 1, 23.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10703, N'FOLKO', CAST(0x00008B8300000000 AS DateTime), CAST(0x00008B8900000000 AS DateTime), 2, 152.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10704, N'QUEEN', CAST(0x00008B8300000000 AS DateTime), CAST(0x00008B9B00000000 AS DateTime), 1, 4.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10705, N'HILAA', CAST(0x00008B8400000000 AS DateTime), CAST(0x00008BA600000000 AS DateTime), 2, 3.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10706, N'OLDWO', CAST(0x00008B8500000000 AS DateTime), CAST(0x00008B8A00000000 AS DateTime), 3, 135.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10707, N'AROUT', CAST(0x00008B8500000000 AS DateTime), CAST(0x00008B8C00000000 AS DateTime), 3, 21.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10708, N'THEBI', CAST(0x00008B8600000000 AS DateTime), CAST(0x00008B9900000000 AS DateTime), 2, 2.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10709, N'GOURL', CAST(0x00008B8600000000 AS DateTime), CAST(0x00008BA800000000 AS DateTime), 3, 210.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10710, N'FRANS', CAST(0x00008B8900000000 AS DateTime), CAST(0x00008B8C00000000 AS DateTime), 1, 4.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10711, N'SAVEA', CAST(0x00008B8A00000000 AS DateTime), CAST(0x00008B9200000000 AS DateTime), 2, 52.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10712, N'HUNGO', CAST(0x00008B8A00000000 AS DateTime), CAST(0x00008B9400000000 AS DateTime), 1, 89.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10713, N'SAVEA', CAST(0x00008B8B00000000 AS DateTime), CAST(0x00008B8D00000000 AS DateTime), 1, 167.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10714, N'SAVEA', CAST(0x00008B8B00000000 AS DateTime), CAST(0x00008B9000000000 AS DateTime), 3, 24.4900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10715, N'BONAP', CAST(0x00008B8C00000000 AS DateTime), CAST(0x00008B9200000000 AS DateTime), 1, 63.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10716, N'RANCH', CAST(0x00008B8D00000000 AS DateTime), CAST(0x00008B9000000000 AS DateTime), 2, 22.5700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10717, N'FRANK', CAST(0x00008B8D00000000 AS DateTime), CAST(0x00008B9200000000 AS DateTime), 2, 59.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10718, N'KOENE', CAST(0x00008B9000000000 AS DateTime), CAST(0x00008B9200000000 AS DateTime), 3, 170.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10719, N'LETSS', CAST(0x00008B9000000000 AS DateTime), CAST(0x00008B9900000000 AS DateTime), 2, 51.4400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10720, N'QUEDE', CAST(0x00008B9100000000 AS DateTime), CAST(0x00008B9900000000 AS DateTime), 2, 9.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10721, N'QUICK', CAST(0x00008B9200000000 AS DateTime), CAST(0x00008B9400000000 AS DateTime), 3, 48.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10722, N'SAVEA', CAST(0x00008B9200000000 AS DateTime), CAST(0x00008B9800000000 AS DateTime), 1, 74.5800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10723, N'WHITC', CAST(0x00008B9300000000 AS DateTime), CAST(0x00008BAD00000000 AS DateTime), 1, 21.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10724, N'MEREP', CAST(0x00008B9300000000 AS DateTime), CAST(0x00008B9900000000 AS DateTime), 2, 57.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10725, N'FAMIA', CAST(0x00008B9400000000 AS DateTime), CAST(0x00008B9900000000 AS DateTime), 3, 10.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10726, N'EASTC', CAST(0x00008B9700000000 AS DateTime), CAST(0x00008BB700000000 AS DateTime), 1, 16.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10727, N'REGGC', CAST(0x00008B9700000000 AS DateTime), CAST(0x00008BB700000000 AS DateTime), 1, 89.9000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10728, N'QUEEN', CAST(0x00008B9800000000 AS DateTime), CAST(0x00008B9F00000000 AS DateTime), 2, 58.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10729, N'LINOD', CAST(0x00008B9800000000 AS DateTime), CAST(0x00008BA200000000 AS DateTime), 3, 141.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10730, N'BONAP', CAST(0x00008B9900000000 AS DateTime), CAST(0x00008BA200000000 AS DateTime), 1, 20.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10731, N'CHOPS', CAST(0x00008B9A00000000 AS DateTime), CAST(0x00008BA200000000 AS DateTime), 1, 96.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10732, N'BONAP', CAST(0x00008B9A00000000 AS DateTime), CAST(0x00008B9B00000000 AS DateTime), 1, 16.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10733, N'BERGS', CAST(0x00008B9B00000000 AS DateTime), CAST(0x00008B9E00000000 AS DateTime), 3, 110.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10734, N'GOURL', CAST(0x00008B9B00000000 AS DateTime), CAST(0x00008BA000000000 AS DateTime), 3, 1.6300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10735, N'LETSS', CAST(0x00008B9E00000000 AS DateTime), CAST(0x00008BA900000000 AS DateTime), 2, 45.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10736, N'HUNGO', CAST(0x00008B9F00000000 AS DateTime), CAST(0x00008BA900000000 AS DateTime), 2, 44.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10737, N'VINET', CAST(0x00008B9F00000000 AS DateTime), CAST(0x00008BA600000000 AS DateTime), 2, 7.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10738, N'SPECD', CAST(0x00008BA000000000 AS DateTime), CAST(0x00008BA600000000 AS DateTime), 1, 2.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10739, N'VINET', CAST(0x00008BA000000000 AS DateTime), CAST(0x00008BA500000000 AS DateTime), 3, 11.0800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10740, N'WHITC', CAST(0x00008BA100000000 AS DateTime), CAST(0x00008BAD00000000 AS DateTime), 2, 81.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10741, N'AROUT', CAST(0x00008BA200000000 AS DateTime), CAST(0x00008BA600000000 AS DateTime), 3, 10.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10742, N'BOTTM', CAST(0x00008BA200000000 AS DateTime), CAST(0x00008BA600000000 AS DateTime), 3, 243.7300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10743, N'AROUT', CAST(0x00008BA500000000 AS DateTime), CAST(0x00008BA900000000 AS DateTime), 2, 23.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10744, N'VAFFE', CAST(0x00008BA500000000 AS DateTime), CAST(0x00008BAC00000000 AS DateTime), 1, 69.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10745, N'QUICK', CAST(0x00008BA600000000 AS DateTime), CAST(0x00008BAF00000000 AS DateTime), 1, 3.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10746, N'CHOPS', CAST(0x00008BA700000000 AS DateTime), CAST(0x00008BA900000000 AS DateTime), 3, 31.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10747, N'PICCO', CAST(0x00008BA700000000 AS DateTime), CAST(0x00008BAE00000000 AS DateTime), 1, 117.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10748, N'SAVEA', CAST(0x00008BA800000000 AS DateTime), CAST(0x00008BB000000000 AS DateTime), 1, 232.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10749, N'ISLAT', CAST(0x00008BA800000000 AS DateTime), CAST(0x00008BC500000000 AS DateTime), 2, 61.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10750, N'WARTH', CAST(0x00008BA900000000 AS DateTime), CAST(0x00008BAC00000000 AS DateTime), 1, 79.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10751, N'RICSU', CAST(0x00008BAC00000000 AS DateTime), CAST(0x00008BB500000000 AS DateTime), 3, 130.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10752, N'NORTS', CAST(0x00008BAC00000000 AS DateTime), CAST(0x00008BB000000000 AS DateTime), 3, 1.3900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10753, N'FRANS', CAST(0x00008BAD00000000 AS DateTime), CAST(0x00008BAF00000000 AS DateTime), 1, 7.7000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10754, N'MAGAA', CAST(0x00008BAD00000000 AS DateTime), CAST(0x00008BAF00000000 AS DateTime), 3, 2.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10755, N'BONAP', CAST(0x00008BAE00000000 AS DateTime), CAST(0x00008BB000000000 AS DateTime), 2, 16.7100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10756, N'SPLIR', CAST(0x00008BAF00000000 AS DateTime), CAST(0x00008BB400000000 AS DateTime), 2, 73.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10757, N'SAVEA', CAST(0x00008BAF00000000 AS DateTime), CAST(0x00008BC100000000 AS DateTime), 1, 8.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10758, N'RICSU', CAST(0x00008BB000000000 AS DateTime), CAST(0x00008BB600000000 AS DateTime), 3, 138.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10759, N'ANATR', CAST(0x00008BB000000000 AS DateTime), CAST(0x00008BBE00000000 AS DateTime), 3, 11.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10760, N'MAISD', CAST(0x00008BB300000000 AS DateTime), CAST(0x00008BBC00000000 AS DateTime), 1, 155.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10761, N'RATTC', CAST(0x00008BB400000000 AS DateTime), CAST(0x00008BBA00000000 AS DateTime), 2, 18.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10762, N'FOLKO', CAST(0x00008BB400000000 AS DateTime), CAST(0x00008BBB00000000 AS DateTime), 1, 328.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10763, N'FOLIG', CAST(0x00008BB500000000 AS DateTime), CAST(0x00008BBA00000000 AS DateTime), 3, 37.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10764, N'ERNSH', CAST(0x00008BB500000000 AS DateTime), CAST(0x00008BBA00000000 AS DateTime), 3, 145.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10765, N'QUICK', CAST(0x00008BB600000000 AS DateTime), CAST(0x00008BBB00000000 AS DateTime), 3, 42.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10766, N'OTTIK', CAST(0x00008BB700000000 AS DateTime), CAST(0x00008BBB00000000 AS DateTime), 1, 157.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10767, N'SUPRD', CAST(0x00008BB700000000 AS DateTime), CAST(0x00008BC100000000 AS DateTime), 3, 1.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10768, N'AROUT', CAST(0x00008BBA00000000 AS DateTime), CAST(0x00008BC100000000 AS DateTime), 2, 146.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10769, N'VAFFE', CAST(0x00008BBA00000000 AS DateTime), CAST(0x00008BBE00000000 AS DateTime), 1, 65.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10770, N'HANAR', CAST(0x00008BBB00000000 AS DateTime), CAST(0x00008BC300000000 AS DateTime), 3, 5.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10771, N'ERNSH', CAST(0x00008BBC00000000 AS DateTime), CAST(0x00008BD300000000 AS DateTime), 2, 11.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10772, N'LEHMS', CAST(0x00008BBC00000000 AS DateTime), CAST(0x00008BC500000000 AS DateTime), 2, 91.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10773, N'ERNSH', CAST(0x00008BBD00000000 AS DateTime), CAST(0x00008BC200000000 AS DateTime), 3, 96.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10774, N'FOLKO', CAST(0x00008BBD00000000 AS DateTime), CAST(0x00008BBE00000000 AS DateTime), 1, 48.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10775, N'THECR', CAST(0x00008BBE00000000 AS DateTime), CAST(0x00008BCC00000000 AS DateTime), 1, 20.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10776, N'ERNSH', CAST(0x00008BC100000000 AS DateTime), CAST(0x00008BC400000000 AS DateTime), 3, 351.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10777, N'GOURL', CAST(0x00008BC100000000 AS DateTime), CAST(0x00008BE600000000 AS DateTime), 2, 3.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10778, N'BERGS', CAST(0x00008BC200000000 AS DateTime), CAST(0x00008BCA00000000 AS DateTime), 1, 6.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10779, N'MORGK', CAST(0x00008BC200000000 AS DateTime), CAST(0x00008BDF00000000 AS DateTime), 2, 58.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10780, N'LILAS', CAST(0x00008BC200000000 AS DateTime), CAST(0x00008BCB00000000 AS DateTime), 1, 42.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10781, N'WARTH', CAST(0x00008BC300000000 AS DateTime), CAST(0x00008BC500000000 AS DateTime), 3, 73.1600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10782, N'CACTU', CAST(0x00008BC300000000 AS DateTime), CAST(0x00008BC800000000 AS DateTime), 3, 1.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10783, N'HANAR', CAST(0x00008BC400000000 AS DateTime), CAST(0x00008BC500000000 AS DateTime), 2, 124.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10784, N'MAGAA', CAST(0x00008BC400000000 AS DateTime), CAST(0x00008BC800000000 AS DateTime), 3, 70.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10785, N'GROSR', CAST(0x00008BC400000000 AS DateTime), CAST(0x00008BCA00000000 AS DateTime), 3, 1.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10786, N'QUEEN', CAST(0x00008BC500000000 AS DateTime), CAST(0x00008BC900000000 AS DateTime), 1, 110.8700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10787, N'LAMAI', CAST(0x00008BC500000000 AS DateTime), CAST(0x00008BCC00000000 AS DateTime), 1, 249.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10788, N'QUICK', CAST(0x00008BC800000000 AS DateTime), CAST(0x00008BE400000000 AS DateTime), 2, 42.7000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10789, N'FOLIG', CAST(0x00008BC800000000 AS DateTime), CAST(0x00008BD100000000 AS DateTime), 2, 100.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10790, N'GOURL', CAST(0x00008BC800000000 AS DateTime), CAST(0x00008BCC00000000 AS DateTime), 1, 28.2300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10791, N'FRANK', CAST(0x00008BC900000000 AS DateTime), CAST(0x00008BD200000000 AS DateTime), 2, 16.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10792, N'WOLZA', CAST(0x00008BC900000000 AS DateTime), CAST(0x00008BD100000000 AS DateTime), 3, 23.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10793, N'AROUT', CAST(0x00008BCA00000000 AS DateTime), CAST(0x00008BD900000000 AS DateTime), 3, 4.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10794, N'QUEDE', CAST(0x00008BCA00000000 AS DateTime), CAST(0x00008BD300000000 AS DateTime), 1, 21.4900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10795, N'ERNSH', CAST(0x00008BCA00000000 AS DateTime), CAST(0x00008BE500000000 AS DateTime), 2, 126.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10796, N'HILAA', CAST(0x00008BCB00000000 AS DateTime), CAST(0x00008BDF00000000 AS DateTime), 1, 26.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10797, N'DRACD', CAST(0x00008BCB00000000 AS DateTime), CAST(0x00008BD600000000 AS DateTime), 2, 33.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10798, N'ISLAT', CAST(0x00008BCC00000000 AS DateTime), CAST(0x00008BD600000000 AS DateTime), 1, 2.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10799, N'KOENE', CAST(0x00008BCC00000000 AS DateTime), CAST(0x00008BD600000000 AS DateTime), 3, 30.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10800, N'SEVES', CAST(0x00008BCC00000000 AS DateTime), CAST(0x00008BD600000000 AS DateTime), 3, 137.4400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10801, N'BOLID', CAST(0x00008BCF00000000 AS DateTime), CAST(0x00008BD100000000 AS DateTime), 2, 97.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10802, N'SIMOB', CAST(0x00008BCF00000000 AS DateTime), CAST(0x00008BD300000000 AS DateTime), 2, 257.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10803, N'WELLI', CAST(0x00008BD000000000 AS DateTime), CAST(0x00008BD700000000 AS DateTime), 1, 55.2300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10804, N'SEVES', CAST(0x00008BD000000000 AS DateTime), CAST(0x00008BD800000000 AS DateTime), 2, 27.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10805, N'THEBI', CAST(0x00008BD000000000 AS DateTime), CAST(0x00008BDA00000000 AS DateTime), 3, 237.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10806, N'VICTE', CAST(0x00008BD100000000 AS DateTime), CAST(0x00008BD600000000 AS DateTime), 2, 22.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10807, N'FRANS', CAST(0x00008BD100000000 AS DateTime), CAST(0x00008BEF00000000 AS DateTime), 1, 1.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10808, N'OLDWO', CAST(0x00008BD200000000 AS DateTime), CAST(0x00008BDA00000000 AS DateTime), 3, 45.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10809, N'WELLI', CAST(0x00008BD200000000 AS DateTime), CAST(0x00008BD800000000 AS DateTime), 1, 4.8700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10810, N'LAUGB', CAST(0x00008BD200000000 AS DateTime), CAST(0x00008BD800000000 AS DateTime), 3, 4.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10811, N'LINOD', CAST(0x00008BD300000000 AS DateTime), CAST(0x00008BD900000000 AS DateTime), 1, 31.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10812, N'REGGC', CAST(0x00008BD300000000 AS DateTime), CAST(0x00008BDD00000000 AS DateTime), 1, 59.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10813, N'RICAR', CAST(0x00008BD600000000 AS DateTime), CAST(0x00008BDA00000000 AS DateTime), 1, 47.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10814, N'VICTE', CAST(0x00008BD600000000 AS DateTime), CAST(0x00008BDF00000000 AS DateTime), 3, 130.9400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10815, N'SAVEA', CAST(0x00008BD600000000 AS DateTime), CAST(0x00008BDF00000000 AS DateTime), 3, 14.6200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10816, N'GREAL', CAST(0x00008BD700000000 AS DateTime), CAST(0x00008BF400000000 AS DateTime), 2, 719.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10817, N'KOENE', CAST(0x00008BD700000000 AS DateTime), CAST(0x00008BDE00000000 AS DateTime), 2, 306.0700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10818, N'MAGAA', CAST(0x00008BD800000000 AS DateTime), CAST(0x00008BDD00000000 AS DateTime), 3, 65.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10819, N'CACTU', CAST(0x00008BD800000000 AS DateTime), CAST(0x00008BE100000000 AS DateTime), 3, 19.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10820, N'RATTC', CAST(0x00008BD800000000 AS DateTime), CAST(0x00008BDE00000000 AS DateTime), 2, 37.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10821, N'SPLIR', CAST(0x00008BD900000000 AS DateTime), CAST(0x00008BE000000000 AS DateTime), 1, 36.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10822, N'TRAIH', CAST(0x00008BD900000000 AS DateTime), CAST(0x00008BE100000000 AS DateTime), 3, 7.0000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10823, N'LILAS', CAST(0x00008BDA00000000 AS DateTime), CAST(0x00008BDE00000000 AS DateTime), 2, 163.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10824, N'FOLKO', CAST(0x00008BDA00000000 AS DateTime), CAST(0x00008BEF00000000 AS DateTime), 1, 1.2300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10825, N'DRACD', CAST(0x00008BDA00000000 AS DateTime), CAST(0x00008BDF00000000 AS DateTime), 1, 79.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10826, N'BLONP', CAST(0x00008BDD00000000 AS DateTime), CAST(0x00008BF600000000 AS DateTime), 1, 7.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10827, N'BONAP', CAST(0x00008BDD00000000 AS DateTime), CAST(0x00008BF600000000 AS DateTime), 2, 63.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10828, N'RANCH', CAST(0x00008BDE00000000 AS DateTime), CAST(0x00008BF400000000 AS DateTime), 1, 90.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10829, N'ISLAT', CAST(0x00008BDE00000000 AS DateTime), CAST(0x00008BE800000000 AS DateTime), 1, 154.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10830, N'TRADH', CAST(0x00008BDE00000000 AS DateTime), CAST(0x00008BE600000000 AS DateTime), 2, 81.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10831, N'SANTG', CAST(0x00008BDF00000000 AS DateTime), CAST(0x00008BE800000000 AS DateTime), 2, 72.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10832, N'LAMAI', CAST(0x00008BDF00000000 AS DateTime), CAST(0x00008BE400000000 AS DateTime), 2, 43.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10833, N'OTTIK', CAST(0x00008BE000000000 AS DateTime), CAST(0x00008BE800000000 AS DateTime), 2, 71.4900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10834, N'TRADH', CAST(0x00008BE000000000 AS DateTime), CAST(0x00008BE400000000 AS DateTime), 3, 29.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10835, N'ALFKI', CAST(0x00008BE000000000 AS DateTime), CAST(0x00008BE600000000 AS DateTime), 3, 69.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10836, N'ERNSH', CAST(0x00008BE100000000 AS DateTime), CAST(0x00008BE600000000 AS DateTime), 1, 411.8800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10837, N'BERGS', CAST(0x00008BE100000000 AS DateTime), CAST(0x00008BE800000000 AS DateTime), 3, 13.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10838, N'LINOD', CAST(0x00008BE400000000 AS DateTime), CAST(0x00008BE800000000 AS DateTime), 3, 59.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10839, N'TRADH', CAST(0x00008BE400000000 AS DateTime), CAST(0x00008BE700000000 AS DateTime), 3, 35.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10840, N'LINOD', CAST(0x00008BE400000000 AS DateTime), CAST(0x00008C0000000000 AS DateTime), 2, 2.7100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10841, N'SUPRD', CAST(0x00008BE500000000 AS DateTime), CAST(0x00008BEE00000000 AS DateTime), 2, 424.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10842, N'TORTU', CAST(0x00008BE500000000 AS DateTime), CAST(0x00008BEE00000000 AS DateTime), 3, 54.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10843, N'VICTE', CAST(0x00008BE600000000 AS DateTime), CAST(0x00008BEB00000000 AS DateTime), 2, 9.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10844, N'PICCO', CAST(0x00008BE600000000 AS DateTime), CAST(0x00008BEB00000000 AS DateTime), 2, 25.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10845, N'QUICK', CAST(0x00008BE600000000 AS DateTime), CAST(0x00008BEF00000000 AS DateTime), 1, 212.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10846, N'SUPRD', CAST(0x00008BE700000000 AS DateTime), CAST(0x00008BE800000000 AS DateTime), 3, 56.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10847, N'SAVEA', CAST(0x00008BE700000000 AS DateTime), CAST(0x00008BFA00000000 AS DateTime), 3, 487.5700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10848, N'CONSH', CAST(0x00008BE800000000 AS DateTime), CAST(0x00008BEE00000000 AS DateTime), 2, 38.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10849, N'KOENE', CAST(0x00008BE800000000 AS DateTime), CAST(0x00008BEF00000000 AS DateTime), 2, 0.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10850, N'VICTE', CAST(0x00008BE800000000 AS DateTime), CAST(0x00008BEF00000000 AS DateTime), 1, 49.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10851, N'RICAR', CAST(0x00008BEB00000000 AS DateTime), CAST(0x00008BF200000000 AS DateTime), 1, 160.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10852, N'RATTC', CAST(0x00008BEB00000000 AS DateTime), CAST(0x00008BEF00000000 AS DateTime), 1, 174.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10853, N'BLAUS', CAST(0x00008BEC00000000 AS DateTime), CAST(0x00008BF300000000 AS DateTime), 2, 53.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10854, N'ERNSH', CAST(0x00008BEC00000000 AS DateTime), CAST(0x00008BF500000000 AS DateTime), 2, 100.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10855, N'OLDWO', CAST(0x00008BEC00000000 AS DateTime), CAST(0x00008BF400000000 AS DateTime), 1, 170.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10856, N'ANTON', CAST(0x00008BED00000000 AS DateTime), CAST(0x00008BFA00000000 AS DateTime), 2, 58.4300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10857, N'BERGS', CAST(0x00008BED00000000 AS DateTime), CAST(0x00008BF600000000 AS DateTime), 2, 188.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10858, N'LACOR', CAST(0x00008BEE00000000 AS DateTime), CAST(0x00008BF300000000 AS DateTime), 1, 52.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10859, N'FRANK', CAST(0x00008BEE00000000 AS DateTime), CAST(0x00008BF200000000 AS DateTime), 2, 76.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10860, N'FRANR', CAST(0x00008BEE00000000 AS DateTime), CAST(0x00008BF400000000 AS DateTime), 3, 19.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10861, N'WHITC', CAST(0x00008BEF00000000 AS DateTime), CAST(0x00008C0100000000 AS DateTime), 2, 14.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10862, N'LEHMS', CAST(0x00008BEF00000000 AS DateTime), CAST(0x00008BF200000000 AS DateTime), 2, 53.2300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10863, N'HILAA', CAST(0x00008BF200000000 AS DateTime), CAST(0x00008C0100000000 AS DateTime), 2, 30.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10864, N'AROUT', CAST(0x00008BF200000000 AS DateTime), CAST(0x00008BF900000000 AS DateTime), 2, 3.0400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10865, N'QUICK', CAST(0x00008BF200000000 AS DateTime), CAST(0x00008BFC00000000 AS DateTime), 1, 348.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10866, N'BERGS', CAST(0x00008BF300000000 AS DateTime), CAST(0x00008BFC00000000 AS DateTime), 1, 109.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10867, N'LONEP', CAST(0x00008BF300000000 AS DateTime), CAST(0x00008BFB00000000 AS DateTime), 1, 1.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10868, N'QUEEN', CAST(0x00008BF400000000 AS DateTime), CAST(0x00008C0700000000 AS DateTime), 2, 191.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10869, N'SEVES', CAST(0x00008BF400000000 AS DateTime), CAST(0x00008BF900000000 AS DateTime), 1, 143.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10870, N'WOLZA', CAST(0x00008BF400000000 AS DateTime), CAST(0x00008BFD00000000 AS DateTime), 3, 12.0400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10871, N'BONAP', CAST(0x00008BF500000000 AS DateTime), CAST(0x00008BFA00000000 AS DateTime), 2, 112.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10872, N'GODOS', CAST(0x00008BF500000000 AS DateTime), CAST(0x00008BF900000000 AS DateTime), 2, 175.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10873, N'WILMK', CAST(0x00008BF600000000 AS DateTime), CAST(0x00008BF900000000 AS DateTime), 1, 0.8200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10874, N'GODOS', CAST(0x00008BF600000000 AS DateTime), CAST(0x00008BFB00000000 AS DateTime), 2, 19.5800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10875, N'BERGS', CAST(0x00008BF600000000 AS DateTime), CAST(0x00008C0F00000000 AS DateTime), 2, 32.3700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10876, N'BONAP', CAST(0x00008BF900000000 AS DateTime), CAST(0x00008BFC00000000 AS DateTime), 3, 60.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10877, N'RICAR', CAST(0x00008BF900000000 AS DateTime), CAST(0x00008C0300000000 AS DateTime), 1, 38.0600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10878, N'QUICK', CAST(0x00008BFA00000000 AS DateTime), CAST(0x00008BFC00000000 AS DateTime), 1, 46.6900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10879, N'WILMK', CAST(0x00008BFA00000000 AS DateTime), CAST(0x00008BFC00000000 AS DateTime), 3, 8.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10880, N'FOLKO', CAST(0x00008BFA00000000 AS DateTime), CAST(0x00008C0200000000 AS DateTime), 1, 88.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10881, N'CACTU', CAST(0x00008BFB00000000 AS DateTime), CAST(0x00008C0200000000 AS DateTime), 1, 2.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10882, N'SAVEA', CAST(0x00008BFB00000000 AS DateTime), CAST(0x00008C0400000000 AS DateTime), 3, 23.1000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10883, N'LONEP', CAST(0x00008BFC00000000 AS DateTime), CAST(0x00008C0400000000 AS DateTime), 3, 0.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10884, N'LETSS', CAST(0x00008BFC00000000 AS DateTime), CAST(0x00008BFD00000000 AS DateTime), 2, 90.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10885, N'SUPRD', CAST(0x00008BFC00000000 AS DateTime), CAST(0x00008C0200000000 AS DateTime), 3, 5.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10886, N'HANAR', CAST(0x00008BFD00000000 AS DateTime), CAST(0x00008C0E00000000 AS DateTime), 1, 4.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10887, N'GALED', CAST(0x00008BFD00000000 AS DateTime), CAST(0x00008C0000000000 AS DateTime), 3, 1.2500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10888, N'GODOS', CAST(0x00008C0000000000 AS DateTime), CAST(0x00008C0700000000 AS DateTime), 2, 51.8700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10889, N'RATTC', CAST(0x00008C0000000000 AS DateTime), CAST(0x00008C0700000000 AS DateTime), 3, 280.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10890, N'DUMON', CAST(0x00008C0000000000 AS DateTime), CAST(0x00008C0200000000 AS DateTime), 1, 32.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10891, N'LEHMS', CAST(0x00008C0100000000 AS DateTime), CAST(0x00008C0300000000 AS DateTime), 2, 20.3700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10892, N'MAISD', CAST(0x00008C0100000000 AS DateTime), CAST(0x00008C0300000000 AS DateTime), 2, 120.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10893, N'KOENE', CAST(0x00008C0200000000 AS DateTime), CAST(0x00008C0400000000 AS DateTime), 2, 77.7800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10894, N'SAVEA', CAST(0x00008C0200000000 AS DateTime), CAST(0x00008C0400000000 AS DateTime), 1, 116.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10895, N'ERNSH', CAST(0x00008C0200000000 AS DateTime), CAST(0x00008C0700000000 AS DateTime), 1, 162.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10896, N'MAISD', CAST(0x00008C0300000000 AS DateTime), CAST(0x00008C0B00000000 AS DateTime), 3, 32.4500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10897, N'HUNGO', CAST(0x00008C0300000000 AS DateTime), CAST(0x00008C0900000000 AS DateTime), 2, 603.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10898, N'OCEAN', CAST(0x00008C0400000000 AS DateTime), CAST(0x00008C1200000000 AS DateTime), 2, 1.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10899, N'LILAS', CAST(0x00008C0400000000 AS DateTime), CAST(0x00008C0A00000000 AS DateTime), 3, 1.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10900, N'WELLI', CAST(0x00008C0400000000 AS DateTime), CAST(0x00008C1000000000 AS DateTime), 2, 1.6600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10901, N'HILAA', CAST(0x00008C0700000000 AS DateTime), CAST(0x00008C0A00000000 AS DateTime), 1, 62.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10902, N'FOLKO', CAST(0x00008C0700000000 AS DateTime), CAST(0x00008C0F00000000 AS DateTime), 1, 44.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10903, N'HANAR', CAST(0x00008C0800000000 AS DateTime), CAST(0x00008C1000000000 AS DateTime), 3, 36.7100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10904, N'WHITC', CAST(0x00008C0800000000 AS DateTime), CAST(0x00008C0B00000000 AS DateTime), 3, 162.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10905, N'WELLI', CAST(0x00008C0800000000 AS DateTime), CAST(0x00008C1200000000 AS DateTime), 2, 13.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10906, N'WOLZA', CAST(0x00008C0900000000 AS DateTime), CAST(0x00008C0F00000000 AS DateTime), 3, 26.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10907, N'SPECD', CAST(0x00008C0900000000 AS DateTime), CAST(0x00008C0B00000000 AS DateTime), 3, 9.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10908, N'REGGC', CAST(0x00008C0A00000000 AS DateTime), CAST(0x00008C1200000000 AS DateTime), 2, 32.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10909, N'SANTG', CAST(0x00008C0A00000000 AS DateTime), CAST(0x00008C1600000000 AS DateTime), 2, 53.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10910, N'WILMK', CAST(0x00008C0A00000000 AS DateTime), CAST(0x00008C1000000000 AS DateTime), 3, 38.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10911, N'GODOS', CAST(0x00008C0A00000000 AS DateTime), CAST(0x00008C1100000000 AS DateTime), 1, 38.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10912, N'HUNGO', CAST(0x00008C0A00000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 2, 580.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10913, N'QUEEN', CAST(0x00008C0A00000000 AS DateTime), CAST(0x00008C1000000000 AS DateTime), 1, 33.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10914, N'QUEEN', CAST(0x00008C0B00000000 AS DateTime), CAST(0x00008C0E00000000 AS DateTime), 1, 21.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10915, N'TORTU', CAST(0x00008C0B00000000 AS DateTime), CAST(0x00008C0E00000000 AS DateTime), 2, 3.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10916, N'RANCH', CAST(0x00008C0B00000000 AS DateTime), CAST(0x00008C1500000000 AS DateTime), 2, 63.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10917, N'ROMEY', CAST(0x00008C0E00000000 AS DateTime), CAST(0x00008C1700000000 AS DateTime), 2, 8.2900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10918, N'BOTTM', CAST(0x00008C0E00000000 AS DateTime), CAST(0x00008C1700000000 AS DateTime), 3, 48.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10919, N'LINOD', CAST(0x00008C0E00000000 AS DateTime), CAST(0x00008C1000000000 AS DateTime), 2, 19.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10920, N'AROUT', CAST(0x00008C0F00000000 AS DateTime), CAST(0x00008C1500000000 AS DateTime), 2, 29.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10921, N'VAFFE', CAST(0x00008C0F00000000 AS DateTime), CAST(0x00008C1500000000 AS DateTime), 1, 176.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10922, N'HANAR', CAST(0x00008C0F00000000 AS DateTime), CAST(0x00008C1100000000 AS DateTime), 3, 62.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10923, N'LAMAI', CAST(0x00008C0F00000000 AS DateTime), CAST(0x00008C1900000000 AS DateTime), 3, 68.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10924, N'BERGS', CAST(0x00008C1000000000 AS DateTime), CAST(0x00008C3300000000 AS DateTime), 2, 151.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10925, N'HANAR', CAST(0x00008C1000000000 AS DateTime), CAST(0x00008C1900000000 AS DateTime), 1, 2.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10926, N'ANATR', CAST(0x00008C1000000000 AS DateTime), CAST(0x00008C1700000000 AS DateTime), 3, 39.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10927, N'LACOR', CAST(0x00008C1100000000 AS DateTime), CAST(0x00008C3300000000 AS DateTime), 1, 19.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10928, N'GALED', CAST(0x00008C1100000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 1, 1.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10929, N'FRANK', CAST(0x00008C1100000000 AS DateTime), CAST(0x00008C1800000000 AS DateTime), 1, 33.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10930, N'SUPRD', CAST(0x00008C1200000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 3, 15.5500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10931, N'RICSU', CAST(0x00008C1200000000 AS DateTime), CAST(0x00008C1F00000000 AS DateTime), 2, 13.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10932, N'BONAP', CAST(0x00008C1200000000 AS DateTime), CAST(0x00008C2400000000 AS DateTime), 1, 134.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10933, N'ISLAT', CAST(0x00008C1200000000 AS DateTime), CAST(0x00008C1C00000000 AS DateTime), 3, 54.1500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10934, N'LEHMS', CAST(0x00008C1500000000 AS DateTime), CAST(0x00008C1800000000 AS DateTime), 3, 32.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10935, N'WELLI', CAST(0x00008C1500000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 3, 47.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10936, N'GREAL', CAST(0x00008C1500000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 2, 33.6800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10937, N'CACTU', CAST(0x00008C1600000000 AS DateTime), CAST(0x00008C1900000000 AS DateTime), 3, 31.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10938, N'QUICK', CAST(0x00008C1600000000 AS DateTime), CAST(0x00008C1C00000000 AS DateTime), 2, 31.8900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10939, N'MAGAA', CAST(0x00008C1600000000 AS DateTime), CAST(0x00008C1900000000 AS DateTime), 2, 76.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10940, N'BONAP', CAST(0x00008C1700000000 AS DateTime), CAST(0x00008C2300000000 AS DateTime), 3, 19.7700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10941, N'SAVEA', CAST(0x00008C1700000000 AS DateTime), CAST(0x00008C2000000000 AS DateTime), 2, 400.8100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10942, N'REGGC', CAST(0x00008C1700000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 3, 17.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10943, N'BSBEV', CAST(0x00008C1700000000 AS DateTime), CAST(0x00008C1F00000000 AS DateTime), 2, 2.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10944, N'BOTTM', CAST(0x00008C1800000000 AS DateTime), CAST(0x00008C1900000000 AS DateTime), 3, 52.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10945, N'MORGK', CAST(0x00008C1800000000 AS DateTime), CAST(0x00008C1E00000000 AS DateTime), 1, 10.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10946, N'VAFFE', CAST(0x00008C1800000000 AS DateTime), CAST(0x00008C1F00000000 AS DateTime), 2, 27.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10947, N'BSBEV', CAST(0x00008C1900000000 AS DateTime), CAST(0x00008C1C00000000 AS DateTime), 2, 3.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10948, N'GODOS', CAST(0x00008C1900000000 AS DateTime), CAST(0x00008C1F00000000 AS DateTime), 3, 23.3900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10949, N'BOTTM', CAST(0x00008C1900000000 AS DateTime), CAST(0x00008C1D00000000 AS DateTime), 3, 74.4400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10950, N'MAGAA', CAST(0x00008C1C00000000 AS DateTime), CAST(0x00008C2300000000 AS DateTime), 2, 2.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10951, N'RICSU', CAST(0x00008C1C00000000 AS DateTime), CAST(0x00008C3200000000 AS DateTime), 2, 30.8500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10952, N'ALFKI', CAST(0x00008C1C00000000 AS DateTime), CAST(0x00008C2400000000 AS DateTime), 1, 40.4200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10953, N'AROUT', CAST(0x00008C1C00000000 AS DateTime), CAST(0x00008C2500000000 AS DateTime), 2, 23.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10954, N'LINOD', CAST(0x00008C1D00000000 AS DateTime), CAST(0x00008C2000000000 AS DateTime), 1, 27.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10955, N'FOLKO', CAST(0x00008C1D00000000 AS DateTime), CAST(0x00008C2000000000 AS DateTime), 2, 3.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10956, N'BLAUS', CAST(0x00008C1D00000000 AS DateTime), CAST(0x00008C2000000000 AS DateTime), 2, 44.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10957, N'HILAA', CAST(0x00008C1E00000000 AS DateTime), CAST(0x00008C2700000000 AS DateTime), 3, 105.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10958, N'OCEAN', CAST(0x00008C1E00000000 AS DateTime), CAST(0x00008C2700000000 AS DateTime), 2, 49.5600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10959, N'GOURL', CAST(0x00008C1E00000000 AS DateTime), CAST(0x00008C2300000000 AS DateTime), 2, 4.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10960, N'HILAA', CAST(0x00008C1F00000000 AS DateTime), CAST(0x00008C3300000000 AS DateTime), 1, 2.0800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10961, N'QUEEN', CAST(0x00008C1F00000000 AS DateTime), CAST(0x00008C2A00000000 AS DateTime), 1, 104.4700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10962, N'QUICK', CAST(0x00008C1F00000000 AS DateTime), CAST(0x00008C2300000000 AS DateTime), 2, 275.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10963, N'FURIB', CAST(0x00008C1F00000000 AS DateTime), CAST(0x00008C2600000000 AS DateTime), 3, 2.7000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10964, N'SPECD', CAST(0x00008C2000000000 AS DateTime), CAST(0x00008C2400000000 AS DateTime), 2, 87.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10965, N'OLDWO', CAST(0x00008C2000000000 AS DateTime), CAST(0x00008C2A00000000 AS DateTime), 3, 144.3800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10966, N'CHOPS', CAST(0x00008C2000000000 AS DateTime), CAST(0x00008C3300000000 AS DateTime), 1, 27.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10967, N'TOMSP', CAST(0x00008C2300000000 AS DateTime), CAST(0x00008C2D00000000 AS DateTime), 2, 62.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10968, N'ERNSH', CAST(0x00008C2300000000 AS DateTime), CAST(0x00008C2C00000000 AS DateTime), 3, 74.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10969, N'COMMI', CAST(0x00008C2300000000 AS DateTime), CAST(0x00008C2A00000000 AS DateTime), 2, 0.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10970, N'BOLID', CAST(0x00008C2400000000 AS DateTime), CAST(0x00008C4300000000 AS DateTime), 1, 16.1600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10971, N'FRANR', CAST(0x00008C2400000000 AS DateTime), CAST(0x00008C2D00000000 AS DateTime), 2, 121.8200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10972, N'LACOR', CAST(0x00008C2400000000 AS DateTime), CAST(0x00008C2600000000 AS DateTime), 2, 0.0200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10973, N'LACOR', CAST(0x00008C2400000000 AS DateTime), CAST(0x00008C2700000000 AS DateTime), 2, 15.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10974, N'SPLIR', CAST(0x00008C2500000000 AS DateTime), CAST(0x00008C2E00000000 AS DateTime), 3, 12.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10975, N'BOTTM', CAST(0x00008C2500000000 AS DateTime), CAST(0x00008C2700000000 AS DateTime), 3, 32.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10976, N'HILAA', CAST(0x00008C2500000000 AS DateTime), CAST(0x00008C2E00000000 AS DateTime), 1, 37.9700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10977, N'FOLKO', CAST(0x00008C2600000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 3, 208.5000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10978, N'MAISD', CAST(0x00008C2600000000 AS DateTime), CAST(0x00008C4200000000 AS DateTime), 2, 32.8200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10979, N'ERNSH', CAST(0x00008C2600000000 AS DateTime), CAST(0x00008C2B00000000 AS DateTime), 2, 353.0700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10980, N'FOLKO', CAST(0x00008C2700000000 AS DateTime), CAST(0x00008C3C00000000 AS DateTime), 1, 1.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10981, N'HANAR', CAST(0x00008C2700000000 AS DateTime), CAST(0x00008C2D00000000 AS DateTime), 2, 193.3700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10982, N'BOTTM', CAST(0x00008C2700000000 AS DateTime), CAST(0x00008C3300000000 AS DateTime), 1, 14.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10983, N'SAVEA', CAST(0x00008C2700000000 AS DateTime), CAST(0x00008C3100000000 AS DateTime), 2, 657.5400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10984, N'SAVEA', CAST(0x00008C2A00000000 AS DateTime), CAST(0x00008C2E00000000 AS DateTime), 3, 211.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10985, N'HUNGO', CAST(0x00008C2A00000000 AS DateTime), CAST(0x00008C2D00000000 AS DateTime), 1, 91.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10986, N'OCEAN', CAST(0x00008C2A00000000 AS DateTime), CAST(0x00008C4000000000 AS DateTime), 2, 217.8600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10987, N'EASTC', CAST(0x00008C2B00000000 AS DateTime), CAST(0x00008C3100000000 AS DateTime), 1, 185.4800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10988, N'RATTC', CAST(0x00008C2B00000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 2, 61.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10989, N'QUEDE', CAST(0x00008C2B00000000 AS DateTime), CAST(0x00008C2D00000000 AS DateTime), 1, 34.7600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10990, N'ERNSH', CAST(0x00008C2C00000000 AS DateTime), CAST(0x00008C3200000000 AS DateTime), 3, 117.6100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10991, N'QUICK', CAST(0x00008C2C00000000 AS DateTime), CAST(0x00008C3200000000 AS DateTime), 1, 38.5100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10992, N'THEBI', CAST(0x00008C2C00000000 AS DateTime), CAST(0x00008C2E00000000 AS DateTime), 3, 4.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10993, N'FOLKO', CAST(0x00008C2C00000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 3, 8.8100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10994, N'VAFFE', CAST(0x00008C2D00000000 AS DateTime), CAST(0x00008C3400000000 AS DateTime), 3, 65.5300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10995, N'PERIC', CAST(0x00008C2D00000000 AS DateTime), CAST(0x00008C3100000000 AS DateTime), 3, 46.0000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10996, N'QUICK', CAST(0x00008C2D00000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 2, 1.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10997, N'LILAS', CAST(0x00008C2E00000000 AS DateTime), CAST(0x00008C3800000000 AS DateTime), 2, 73.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10998, N'WOLZA', CAST(0x00008C2E00000000 AS DateTime), CAST(0x00008C3C00000000 AS DateTime), 2, 20.3100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (10999, N'OTTIK', CAST(0x00008C2E00000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 2, 96.3500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11000, N'RATTC', CAST(0x00008C3100000000 AS DateTime), CAST(0x00008C3900000000 AS DateTime), 3, 55.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11001, N'FOLKO', CAST(0x00008C3100000000 AS DateTime), CAST(0x00008C3900000000 AS DateTime), 2, 197.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11002, N'SAVEA', CAST(0x00008C3100000000 AS DateTime), CAST(0x00008C3B00000000 AS DateTime), 1, 141.1600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11003, N'THECR', CAST(0x00008C3100000000 AS DateTime), CAST(0x00008C3300000000 AS DateTime), 3, 14.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11004, N'MAISD', CAST(0x00008C3200000000 AS DateTime), CAST(0x00008C3F00000000 AS DateTime), 1, 44.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11005, N'WILMK', CAST(0x00008C3200000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 1, 0.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11006, N'GREAL', CAST(0x00008C3200000000 AS DateTime), CAST(0x00008C3A00000000 AS DateTime), 2, 25.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11007, N'PRINI', CAST(0x00008C3300000000 AS DateTime), CAST(0x00008C3800000000 AS DateTime), 2, 202.2400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11008, N'ERNSH', CAST(0x00008C3300000000 AS DateTime), NULL, 3, 79.4600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11009, N'GODOS', CAST(0x00008C3300000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 1, 59.1100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11010, N'REGGC', CAST(0x00008C3400000000 AS DateTime), CAST(0x00008C4000000000 AS DateTime), 2, 28.7100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11011, N'ALFKI', CAST(0x00008C3400000000 AS DateTime), CAST(0x00008C3800000000 AS DateTime), 1, 1.2100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11012, N'FRANK', CAST(0x00008C3400000000 AS DateTime), CAST(0x00008C3C00000000 AS DateTime), 3, 242.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11013, N'ROMEY', CAST(0x00008C3400000000 AS DateTime), CAST(0x00008C3500000000 AS DateTime), 1, 32.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11014, N'LINOD', CAST(0x00008C3500000000 AS DateTime), CAST(0x00008C3A00000000 AS DateTime), 3, 23.6000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11015, N'SANTG', CAST(0x00008C3500000000 AS DateTime), CAST(0x00008C3F00000000 AS DateTime), 2, 4.6200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11016, N'AROUT', CAST(0x00008C3500000000 AS DateTime), CAST(0x00008C3800000000 AS DateTime), 2, 33.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11017, N'ERNSH', CAST(0x00008C3800000000 AS DateTime), CAST(0x00008C3F00000000 AS DateTime), 2, 754.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11018, N'LONEP', CAST(0x00008C3800000000 AS DateTime), CAST(0x00008C3B00000000 AS DateTime), 2, 11.6500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11019, N'RANCH', CAST(0x00008C3800000000 AS DateTime), NULL, 3, 3.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11020, N'OTTIK', CAST(0x00008C3900000000 AS DateTime), CAST(0x00008C3B00000000 AS DateTime), 2, 43.3000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11021, N'QUICK', CAST(0x00008C3900000000 AS DateTime), CAST(0x00008C4000000000 AS DateTime), 1, 297.1800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11022, N'HANAR', CAST(0x00008C3900000000 AS DateTime), CAST(0x00008C4D00000000 AS DateTime), 2, 6.2700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11023, N'BSBEV', CAST(0x00008C3900000000 AS DateTime), CAST(0x00008C4300000000 AS DateTime), 2, 123.8300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11024, N'EASTC', CAST(0x00008C3A00000000 AS DateTime), CAST(0x00008C3F00000000 AS DateTime), 1, 74.3600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11025, N'WARTH', CAST(0x00008C3A00000000 AS DateTime), CAST(0x00008C4300000000 AS DateTime), 3, 29.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11026, N'FRANS', CAST(0x00008C3A00000000 AS DateTime), CAST(0x00008C4700000000 AS DateTime), 1, 47.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11027, N'BOTTM', CAST(0x00008C3B00000000 AS DateTime), CAST(0x00008C3F00000000 AS DateTime), 1, 52.5200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11028, N'KOENE', CAST(0x00008C3B00000000 AS DateTime), CAST(0x00008C4100000000 AS DateTime), 1, 29.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11029, N'CHOPS', CAST(0x00008C3B00000000 AS DateTime), CAST(0x00008C4600000000 AS DateTime), 1, 47.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11030, N'SAVEA', CAST(0x00008C3C00000000 AS DateTime), CAST(0x00008C4600000000 AS DateTime), 2, 830.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11031, N'SAVEA', CAST(0x00008C3C00000000 AS DateTime), CAST(0x00008C4300000000 AS DateTime), 2, 227.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11032, N'WHITC', CAST(0x00008C3C00000000 AS DateTime), CAST(0x00008C4200000000 AS DateTime), 3, 606.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11033, N'RICSU', CAST(0x00008C3C00000000 AS DateTime), CAST(0x00008C4200000000 AS DateTime), 3, 84.7400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11034, N'OLDWO', CAST(0x00008C3F00000000 AS DateTime), CAST(0x00008C4600000000 AS DateTime), 1, 40.3200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11035, N'SUPRD', CAST(0x00008C3F00000000 AS DateTime), CAST(0x00008C4300000000 AS DateTime), 2, 0.1700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11036, N'DRACD', CAST(0x00008C3F00000000 AS DateTime), CAST(0x00008C4100000000 AS DateTime), 3, 149.4700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11037, N'GODOS', CAST(0x00008C4000000000 AS DateTime), CAST(0x00008C4600000000 AS DateTime), 1, 3.2000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11038, N'SUPRD', CAST(0x00008C4000000000 AS DateTime), CAST(0x00008C4900000000 AS DateTime), 2, 29.5900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11039, N'LINOD', CAST(0x00008C4000000000 AS DateTime), NULL, 2, 65.0000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11040, N'GREAL', CAST(0x00008C4100000000 AS DateTime), NULL, 3, 18.8400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11041, N'CHOPS', CAST(0x00008C4100000000 AS DateTime), CAST(0x00008C4700000000 AS DateTime), 2, 48.2200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11042, N'COMMI', CAST(0x00008C4100000000 AS DateTime), CAST(0x00008C4A00000000 AS DateTime), 1, 29.9900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11043, N'SPECD', CAST(0x00008C4100000000 AS DateTime), CAST(0x00008C4800000000 AS DateTime), 2, 8.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11044, N'WOLZA', CAST(0x00008C4200000000 AS DateTime), CAST(0x00008C4A00000000 AS DateTime), 1, 8.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11045, N'BOTTM', CAST(0x00008C4200000000 AS DateTime), NULL, 2, 70.5800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11046, N'WANDK', CAST(0x00008C4200000000 AS DateTime), CAST(0x00008C4300000000 AS DateTime), 2, 71.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11047, N'EASTC', CAST(0x00008C4300000000 AS DateTime), CAST(0x00008C4A00000000 AS DateTime), 3, 46.6200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11048, N'BOTTM', CAST(0x00008C4300000000 AS DateTime), CAST(0x00008C4900000000 AS DateTime), 3, 24.1200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11049, N'GOURL', CAST(0x00008C4300000000 AS DateTime), CAST(0x00008C4D00000000 AS DateTime), 1, 8.3400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11050, N'FOLKO', CAST(0x00008C4600000000 AS DateTime), CAST(0x00008C4E00000000 AS DateTime), 2, 59.4100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11051, N'LAMAI', CAST(0x00008C4600000000 AS DateTime), NULL, 3, 2.7900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11052, N'HANAR', CAST(0x00008C4600000000 AS DateTime), CAST(0x00008C4A00000000 AS DateTime), 1, 67.2600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11053, N'PICCO', CAST(0x00008C4600000000 AS DateTime), CAST(0x00008C4800000000 AS DateTime), 2, 53.0500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11054, N'CACTU', CAST(0x00008C4700000000 AS DateTime), NULL, 1, 0.3300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11055, N'HILAA', CAST(0x00008C4700000000 AS DateTime), CAST(0x00008C4E00000000 AS DateTime), 2, 120.9200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11056, N'EASTC', CAST(0x00008C4700000000 AS DateTime), CAST(0x00008C4A00000000 AS DateTime), 2, 278.9600)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11057, N'NORTS', CAST(0x00008C4800000000 AS DateTime), CAST(0x00008C4A00000000 AS DateTime), 3, 4.1300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11058, N'BLAUS', CAST(0x00008C4800000000 AS DateTime), NULL, 3, 31.1400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11059, N'RICAR', CAST(0x00008C4800000000 AS DateTime), NULL, 2, 85.8000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11060, N'FRANS', CAST(0x00008C4900000000 AS DateTime), CAST(0x00008C4D00000000 AS DateTime), 2, 10.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11061, N'GREAL', CAST(0x00008C4900000000 AS DateTime), NULL, 3, 14.0100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11062, N'REGGC', CAST(0x00008C4900000000 AS DateTime), NULL, 2, 29.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11063, N'HUNGO', CAST(0x00008C4900000000 AS DateTime), CAST(0x00008C4F00000000 AS DateTime), 2, 81.7300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11064, N'SAVEA', CAST(0x00008C4A00000000 AS DateTime), CAST(0x00008C4D00000000 AS DateTime), 1, 30.0900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11065, N'LILAS', CAST(0x00008C4A00000000 AS DateTime), NULL, 1, 12.9100)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11066, N'WHITC', CAST(0x00008C4A00000000 AS DateTime), CAST(0x00008C4D00000000 AS DateTime), 2, 44.7200)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11067, N'DRACD', CAST(0x00008C4D00000000 AS DateTime), CAST(0x00008C4F00000000 AS DateTime), 2, 7.9800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11068, N'QUEEN', CAST(0x00008C4D00000000 AS DateTime), NULL, 2, 81.7500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11069, N'TORTU', CAST(0x00008C4D00000000 AS DateTime), CAST(0x00008C4F00000000 AS DateTime), 2, 15.6700)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11070, N'LEHMS', CAST(0x00008C4E00000000 AS DateTime), NULL, 1, 136.0000)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11071, N'LILAS', CAST(0x00008C4E00000000 AS DateTime), NULL, 1, 0.9300)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11072, N'ERNSH', CAST(0x00008C4E00000000 AS DateTime), NULL, 2, 258.6400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11073, N'PERIC', CAST(0x00008C4E00000000 AS DateTime), NULL, 2, 24.9500)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11074, N'SIMOB', CAST(0x00008C4F00000000 AS DateTime), NULL, 2, 18.4400)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11075, N'RICSU', CAST(0x00008C4F00000000 AS DateTime), NULL, 2, 6.1900)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11076, N'BONAP', CAST(0x00008C4F00000000 AS DateTime), NULL, 2, 38.2800)
GO
INSERT [dbo].[Order] ([OrderId], [CustomerId], [OrderDate], [ShippedDate], [ShipVia], [Freight]) VALUES (11077, N'RATTC', CAST(0x00008C4F00000000 AS DateTime), NULL, 2, 8.5300)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1, 10248, 11, 14.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2, 10248, 42, 9.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (3, 10248, 72, 34.8000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (4, 10249, 14, 18.6000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (5, 10249, 51, 42.4000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (6, 10250, 41, 7.7000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (7, 10250, 51, 42.4000, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (8, 10250, 65, 16.8000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (9, 10251, 22, 16.8000, 6, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (10, 10251, 57, 15.6000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (11, 10251, 65, 16.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (12, 10252, 20, 64.8000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (13, 10252, 33, 2.0000, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (14, 10252, 60, 27.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (15, 10253, 31, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (16, 10253, 39, 14.4000, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (17, 10253, 49, 16.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (18, 10254, 24, 3.6000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (19, 10254, 55, 19.2000, 21, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (20, 10254, 74, 8.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (21, 10255, 2, 15.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (22, 10255, 16, 13.9000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (23, 10255, 36, 15.2000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (24, 10255, 59, 44.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (25, 10256, 53, 26.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (26, 10256, 77, 10.4000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (27, 10257, 27, 35.1000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (28, 10257, 39, 14.4000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (29, 10257, 77, 10.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (30, 10258, 2, 15.2000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (31, 10258, 5, 17.0000, 65, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (32, 10258, 32, 25.6000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (33, 10259, 21, 8.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (34, 10259, 37, 20.8000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (35, 10260, 41, 7.7000, 16, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (36, 10260, 57, 15.6000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (37, 10260, 62, 39.4000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (38, 10260, 70, 12.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (39, 10261, 21, 8.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (40, 10261, 35, 14.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (41, 10262, 5, 17.0000, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (42, 10262, 7, 24.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (43, 10262, 56, 30.4000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (44, 10263, 16, 13.9000, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (45, 10263, 24, 3.6000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (46, 10263, 30, 20.7000, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (47, 10263, 74, 8.0000, 36, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (48, 10264, 2, 15.2000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (49, 10264, 41, 7.7000, 25, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (50, 10265, 17, 31.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (51, 10265, 70, 12.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (52, 10266, 12, 30.4000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (53, 10267, 40, 14.7000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (54, 10267, 59, 44.0000, 70, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (55, 10267, 76, 14.4000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (56, 10268, 29, 99.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (57, 10268, 72, 27.8000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (58, 10269, 33, 2.0000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (59, 10269, 72, 27.8000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (60, 10270, 36, 15.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (61, 10270, 43, 36.8000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (62, 10271, 33, 2.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (63, 10272, 20, 64.8000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (64, 10272, 31, 10.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (65, 10272, 72, 27.8000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (66, 10273, 10, 24.8000, 24, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (67, 10273, 31, 10.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (68, 10273, 33, 2.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (69, 10273, 40, 14.7000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (70, 10273, 76, 14.4000, 33, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (71, 10274, 71, 17.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (72, 10274, 72, 27.8000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (73, 10275, 24, 3.6000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (74, 10275, 59, 44.0000, 6, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (75, 10276, 10, 24.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (76, 10276, 13, 4.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (77, 10277, 28, 36.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (78, 10277, 62, 39.4000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (79, 10278, 44, 15.5000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (80, 10278, 59, 44.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (81, 10278, 63, 35.1000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (82, 10278, 73, 12.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (83, 10279, 17, 31.2000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (84, 10280, 24, 3.6000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (85, 10280, 55, 19.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (86, 10280, 75, 6.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (87, 10281, 19, 7.3000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (88, 10281, 24, 3.6000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (89, 10281, 35, 14.4000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (90, 10282, 30, 20.7000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (91, 10282, 57, 15.6000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (92, 10283, 15, 12.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (93, 10283, 19, 7.3000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (94, 10283, 60, 27.2000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (95, 10283, 72, 27.8000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (96, 10284, 27, 35.1000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (97, 10284, 44, 15.5000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (98, 10284, 60, 27.2000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (99, 10284, 67, 11.2000, 5, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (100, 10285, 1, 14.4000, 45, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (101, 10285, 40, 14.7000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (102, 10285, 53, 26.2000, 36, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (103, 10286, 35, 14.4000, 100, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (104, 10286, 62, 39.4000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (105, 10287, 16, 13.9000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (106, 10287, 34, 11.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (107, 10287, 46, 9.6000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (108, 10288, 54, 5.9000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (109, 10288, 68, 10.0000, 3, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (110, 10289, 3, 8.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (111, 10289, 64, 26.6000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (112, 10290, 5, 17.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (113, 10290, 29, 99.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (114, 10290, 49, 16.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (115, 10290, 77, 10.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (116, 10291, 13, 4.8000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (117, 10291, 44, 15.5000, 24, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (118, 10291, 51, 42.4000, 2, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (119, 10292, 20, 64.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (120, 10293, 18, 50.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (121, 10293, 24, 3.6000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (122, 10293, 63, 35.1000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (123, 10293, 75, 6.2000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (124, 10294, 1, 14.4000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (125, 10294, 17, 31.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (126, 10294, 43, 36.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (127, 10294, 60, 27.2000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (128, 10294, 75, 6.2000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (129, 10295, 56, 30.4000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (130, 10296, 11, 16.8000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (131, 10296, 16, 13.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (132, 10296, 69, 28.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (133, 10297, 39, 14.4000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (134, 10297, 72, 27.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (135, 10298, 2, 15.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (136, 10298, 36, 15.2000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (137, 10298, 59, 44.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (138, 10298, 62, 39.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (139, 10299, 19, 7.3000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (140, 10299, 70, 12.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (141, 10300, 66, 13.6000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (142, 10300, 68, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (143, 10301, 40, 14.7000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (144, 10301, 56, 30.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (145, 10302, 17, 31.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (146, 10302, 28, 36.4000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (147, 10302, 43, 36.8000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (148, 10303, 40, 14.7000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (149, 10303, 65, 16.8000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (150, 10303, 68, 10.0000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (151, 10304, 49, 16.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (152, 10304, 59, 44.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (153, 10304, 71, 17.2000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (154, 10305, 18, 50.0000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (155, 10305, 29, 99.0000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (156, 10305, 39, 14.4000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (157, 10306, 30, 20.7000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (158, 10306, 53, 26.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (159, 10306, 54, 5.9000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (160, 10307, 62, 39.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (161, 10307, 68, 10.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (162, 10308, 69, 28.8000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (163, 10308, 70, 12.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (164, 10309, 4, 17.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (165, 10309, 6, 20.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (166, 10309, 42, 11.2000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (167, 10309, 43, 36.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (168, 10309, 71, 17.2000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (169, 10310, 16, 13.9000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (170, 10310, 62, 39.4000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (171, 10311, 42, 11.2000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (172, 10311, 69, 28.8000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (173, 10312, 28, 36.4000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (174, 10312, 43, 36.8000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (175, 10312, 53, 26.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (176, 10312, 75, 6.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (177, 10313, 36, 15.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (178, 10314, 32, 25.6000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (179, 10314, 58, 10.6000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (180, 10314, 62, 39.4000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (181, 10315, 34, 11.2000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (182, 10315, 70, 12.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (183, 10316, 41, 7.7000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (184, 10316, 62, 39.4000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (185, 10317, 1, 14.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (186, 10318, 41, 7.7000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (187, 10318, 76, 14.4000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (188, 10319, 17, 31.2000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (189, 10319, 28, 36.4000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (190, 10319, 76, 14.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (191, 10320, 71, 17.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (192, 10321, 35, 14.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (193, 10322, 52, 5.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (194, 10323, 15, 12.4000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (195, 10323, 25, 11.2000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (196, 10323, 39, 14.4000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (197, 10324, 16, 13.9000, 21, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (198, 10324, 35, 14.4000, 70, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (199, 10324, 46, 9.6000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (200, 10324, 59, 44.0000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (201, 10324, 63, 35.1000, 80, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (202, 10325, 6, 20.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (203, 10325, 13, 4.8000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (204, 10325, 14, 18.6000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (205, 10325, 31, 10.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (206, 10325, 72, 27.8000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (207, 10326, 4, 17.6000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (208, 10326, 57, 15.6000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (209, 10326, 75, 6.2000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (210, 10327, 2, 15.2000, 25, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (211, 10327, 11, 16.8000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (212, 10327, 30, 20.7000, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (213, 10327, 58, 10.6000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (214, 10328, 59, 44.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (215, 10328, 65, 16.8000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (216, 10328, 68, 10.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (217, 10329, 19, 7.3000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (218, 10329, 30, 20.7000, 8, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (219, 10329, 38, 210.8000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (220, 10329, 56, 30.4000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (221, 10330, 26, 24.9000, 50, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (222, 10330, 72, 27.8000, 25, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (223, 10331, 54, 5.9000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (224, 10332, 18, 50.0000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (225, 10332, 42, 11.2000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (226, 10332, 47, 7.6000, 16, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (227, 10333, 14, 18.6000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (228, 10333, 21, 8.0000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (229, 10333, 71, 17.2000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (230, 10334, 52, 5.6000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (231, 10334, 68, 10.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (232, 10335, 2, 15.2000, 7, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (233, 10335, 31, 10.0000, 25, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (234, 10335, 32, 25.6000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (235, 10335, 51, 42.4000, 48, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (236, 10336, 4, 17.6000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (237, 10337, 23, 7.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (238, 10337, 26, 24.9000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (239, 10337, 36, 15.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (240, 10337, 37, 20.8000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (241, 10337, 72, 27.8000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (242, 10338, 17, 31.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (243, 10338, 30, 20.7000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (244, 10339, 4, 17.6000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (245, 10339, 17, 31.2000, 70, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (246, 10339, 62, 39.4000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (247, 10340, 18, 50.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (248, 10340, 41, 7.7000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (249, 10340, 43, 36.8000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (250, 10341, 33, 2.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (251, 10341, 59, 44.0000, 9, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (252, 10342, 2, 15.2000, 24, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (253, 10342, 31, 10.0000, 56, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (254, 10342, 36, 15.2000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (255, 10342, 55, 19.2000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (256, 10343, 64, 26.6000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (257, 10343, 68, 10.0000, 4, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (258, 10343, 76, 14.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (259, 10344, 4, 17.6000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (260, 10344, 8, 32.0000, 70, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (261, 10345, 8, 32.0000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (262, 10345, 19, 7.3000, 80, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (263, 10345, 42, 11.2000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (264, 10346, 17, 31.2000, 36, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (265, 10346, 56, 30.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (266, 10347, 25, 11.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (267, 10347, 39, 14.4000, 50, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (268, 10347, 40, 14.7000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (269, 10347, 75, 6.2000, 6, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (270, 10348, 1, 14.4000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (271, 10348, 23, 7.2000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (272, 10349, 54, 5.9000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (273, 10350, 50, 13.0000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (274, 10350, 69, 28.8000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (275, 10351, 38, 210.8000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (276, 10351, 41, 7.7000, 13, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (277, 10351, 44, 15.5000, 77, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (278, 10351, 65, 16.8000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (279, 10352, 24, 3.6000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (280, 10352, 54, 5.9000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (281, 10353, 11, 16.8000, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (282, 10353, 38, 210.8000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (283, 10354, 1, 14.4000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (284, 10354, 29, 99.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (285, 10355, 24, 3.6000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (286, 10355, 57, 15.6000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (287, 10356, 31, 10.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (288, 10356, 55, 19.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (289, 10356, 69, 28.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (290, 10357, 10, 24.8000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (291, 10357, 26, 24.9000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (292, 10357, 60, 27.2000, 8, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (293, 10358, 24, 3.6000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (294, 10358, 34, 11.2000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (295, 10358, 36, 15.2000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (296, 10359, 16, 13.9000, 56, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (297, 10359, 31, 10.0000, 70, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (298, 10359, 60, 27.2000, 80, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (299, 10360, 28, 36.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (300, 10360, 29, 99.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (301, 10360, 38, 210.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (302, 10360, 49, 16.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (303, 10360, 54, 5.9000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (304, 10361, 39, 14.4000, 54, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (305, 10361, 60, 27.2000, 55, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (306, 10362, 25, 11.2000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (307, 10362, 51, 42.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (308, 10362, 54, 5.9000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (309, 10363, 31, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (310, 10363, 75, 6.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (311, 10363, 76, 14.4000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (312, 10364, 69, 28.8000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (313, 10364, 71, 17.2000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (314, 10365, 11, 16.8000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (315, 10366, 65, 16.8000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (316, 10366, 77, 10.4000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (317, 10367, 34, 11.2000, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (318, 10367, 54, 5.9000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (319, 10367, 65, 16.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (320, 10367, 77, 10.4000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (321, 10368, 21, 8.0000, 5, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (322, 10368, 28, 36.4000, 13, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (323, 10368, 57, 15.6000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (324, 10368, 64, 26.6000, 35, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (325, 10369, 29, 99.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (326, 10369, 56, 30.4000, 18, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (327, 10370, 1, 14.4000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (328, 10370, 64, 26.6000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (329, 10370, 74, 8.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (330, 10371, 36, 15.2000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (331, 10372, 20, 64.8000, 12, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (332, 10372, 38, 210.8000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (333, 10372, 60, 27.2000, 70, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (334, 10372, 72, 27.8000, 42, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (335, 10373, 58, 10.6000, 80, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (336, 10373, 71, 17.2000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (337, 10374, 31, 10.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (338, 10374, 58, 10.6000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (339, 10375, 14, 18.6000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (340, 10375, 54, 5.9000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (341, 10376, 31, 10.0000, 42, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (342, 10377, 28, 36.4000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (343, 10377, 39, 14.4000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (344, 10378, 71, 17.2000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (345, 10379, 41, 7.7000, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (346, 10379, 63, 35.1000, 16, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (347, 10379, 65, 16.8000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (348, 10380, 30, 20.7000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (349, 10380, 53, 26.2000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (350, 10380, 60, 27.2000, 6, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (351, 10380, 70, 12.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (352, 10381, 74, 8.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (353, 10382, 5, 17.0000, 32, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (354, 10382, 18, 50.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (355, 10382, 29, 99.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (356, 10382, 33, 2.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (357, 10382, 74, 8.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (358, 10383, 13, 4.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (359, 10383, 50, 13.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (360, 10383, 56, 30.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (361, 10384, 20, 64.8000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (362, 10384, 60, 27.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (363, 10385, 7, 24.0000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (364, 10385, 60, 27.2000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (365, 10385, 68, 10.0000, 8, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (366, 10386, 24, 3.6000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (367, 10386, 34, 11.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (368, 10387, 24, 3.6000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (369, 10387, 28, 36.4000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (370, 10387, 59, 44.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (371, 10387, 71, 17.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (372, 10388, 45, 7.6000, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (373, 10388, 52, 5.6000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (374, 10388, 53, 26.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (375, 10389, 10, 24.8000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (376, 10389, 55, 19.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (377, 10389, 62, 39.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (378, 10389, 70, 12.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (379, 10390, 31, 10.0000, 60, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (380, 10390, 35, 14.4000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (381, 10390, 46, 9.6000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (382, 10390, 72, 27.8000, 24, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (383, 10391, 13, 4.8000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (384, 10392, 69, 28.8000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (385, 10393, 2, 15.2000, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (386, 10393, 14, 18.6000, 42, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (387, 10393, 25, 11.2000, 7, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (388, 10393, 26, 24.9000, 70, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (389, 10393, 31, 10.0000, 32, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (390, 10394, 13, 4.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (391, 10394, 62, 39.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (392, 10395, 46, 9.6000, 28, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (393, 10395, 53, 26.2000, 70, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (394, 10395, 69, 28.8000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (395, 10396, 23, 7.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (396, 10396, 71, 17.2000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (397, 10396, 72, 27.8000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (398, 10397, 21, 8.0000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (399, 10397, 51, 42.4000, 18, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (400, 10398, 35, 14.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (401, 10398, 55, 19.2000, 120, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (402, 10399, 68, 10.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (403, 10399, 71, 17.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (404, 10399, 76, 14.4000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (405, 10399, 77, 10.4000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (406, 10400, 29, 99.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (407, 10400, 35, 14.4000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (408, 10400, 49, 16.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (409, 10401, 30, 20.7000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (410, 10401, 56, 30.4000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (411, 10401, 65, 16.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (412, 10401, 71, 17.2000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (413, 10402, 23, 7.2000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (414, 10402, 63, 35.1000, 65, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (415, 10403, 16, 13.9000, 21, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (416, 10403, 48, 10.2000, 70, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (417, 10404, 26, 24.9000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (418, 10404, 42, 11.2000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (419, 10404, 49, 16.0000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (420, 10405, 3, 8.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (421, 10406, 1, 14.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (422, 10406, 21, 8.0000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (423, 10406, 28, 36.4000, 42, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (424, 10406, 36, 15.2000, 5, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (425, 10406, 40, 14.7000, 2, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (426, 10407, 11, 16.8000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (427, 10407, 69, 28.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (428, 10407, 71, 17.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (429, 10408, 37, 20.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (430, 10408, 54, 5.9000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (431, 10408, 62, 39.4000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (432, 10409, 14, 18.6000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (433, 10409, 21, 8.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (434, 10410, 33, 2.0000, 49, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (435, 10410, 59, 44.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (436, 10411, 41, 7.7000, 25, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (437, 10411, 44, 15.5000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (438, 10411, 59, 44.0000, 9, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (439, 10412, 14, 18.6000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (440, 10413, 1, 14.4000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (441, 10413, 62, 39.4000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (442, 10413, 76, 14.4000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (443, 10414, 19, 7.3000, 18, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (444, 10414, 33, 2.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (445, 10415, 17, 31.2000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (446, 10415, 33, 2.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (447, 10416, 19, 7.3000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (448, 10416, 53, 26.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (449, 10416, 57, 15.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (450, 10417, 38, 210.8000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (451, 10417, 46, 9.6000, 2, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (452, 10417, 68, 10.0000, 36, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (453, 10417, 77, 10.4000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (454, 10418, 2, 15.2000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (455, 10418, 47, 7.6000, 55, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (456, 10418, 61, 22.8000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (457, 10418, 74, 8.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (458, 10419, 60, 27.2000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (459, 10419, 69, 28.8000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (460, 10420, 9, 77.6000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (461, 10420, 13, 4.8000, 2, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (462, 10420, 70, 12.0000, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (463, 10420, 73, 12.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (464, 10421, 19, 7.3000, 4, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (465, 10421, 26, 24.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (466, 10421, 53, 26.2000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (467, 10421, 77, 10.4000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (468, 10422, 26, 24.9000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (469, 10423, 31, 10.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (470, 10423, 59, 44.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (471, 10424, 35, 14.4000, 60, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (472, 10424, 38, 210.8000, 49, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (473, 10424, 68, 10.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (474, 10425, 55, 19.2000, 10, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (475, 10425, 76, 14.4000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (476, 10426, 56, 30.4000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (477, 10426, 64, 26.6000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (478, 10427, 14, 18.6000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (479, 10428, 46, 9.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (480, 10429, 50, 13.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (481, 10429, 63, 35.1000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (482, 10430, 17, 31.2000, 45, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (483, 10430, 21, 8.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (484, 10430, 56, 30.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (485, 10430, 59, 44.0000, 70, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (486, 10431, 17, 31.2000, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (487, 10431, 40, 14.7000, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (488, 10431, 47, 7.6000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (489, 10432, 26, 24.9000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (490, 10432, 54, 5.9000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (491, 10433, 56, 30.4000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (492, 10434, 11, 16.8000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (493, 10434, 76, 14.4000, 18, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (494, 10435, 2, 15.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (495, 10435, 22, 16.8000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (496, 10435, 72, 27.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (497, 10436, 46, 9.6000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (498, 10436, 56, 30.4000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (499, 10436, 64, 26.6000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (500, 10436, 75, 6.2000, 24, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (501, 10437, 53, 26.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (502, 10438, 19, 7.3000, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (503, 10438, 34, 11.2000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (504, 10438, 57, 15.6000, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (505, 10439, 12, 30.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (506, 10439, 16, 13.9000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (507, 10439, 64, 26.6000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (508, 10439, 74, 8.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (509, 10440, 2, 15.2000, 45, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (510, 10440, 16, 13.9000, 49, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (511, 10440, 29, 99.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (512, 10440, 61, 22.8000, 90, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (513, 10441, 27, 35.1000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (514, 10442, 11, 16.8000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (515, 10442, 54, 5.9000, 80, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (516, 10442, 66, 13.6000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (517, 10443, 11, 16.8000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (518, 10443, 28, 36.4000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (519, 10444, 17, 31.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (520, 10444, 26, 24.9000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (521, 10444, 35, 14.4000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (522, 10444, 41, 7.7000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (523, 10445, 39, 14.4000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (524, 10445, 54, 5.9000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (525, 10446, 19, 7.3000, 12, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (526, 10446, 24, 3.6000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (527, 10446, 31, 10.0000, 3, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (528, 10446, 52, 5.6000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (529, 10447, 19, 7.3000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (530, 10447, 65, 16.8000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (531, 10447, 71, 17.2000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (532, 10448, 26, 24.9000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (533, 10448, 40, 14.7000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (534, 10449, 10, 24.8000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (535, 10449, 52, 5.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (536, 10449, 62, 39.4000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (537, 10450, 10, 24.8000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (538, 10450, 54, 5.9000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (539, 10451, 55, 19.2000, 120, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (540, 10451, 64, 26.6000, 35, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (541, 10451, 65, 16.8000, 28, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (542, 10451, 77, 10.4000, 55, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (543, 10452, 28, 36.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (544, 10452, 44, 15.5000, 100, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (545, 10453, 48, 10.2000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (546, 10453, 70, 12.0000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (547, 10454, 16, 13.9000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (548, 10454, 33, 2.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (549, 10454, 46, 9.6000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (550, 10455, 39, 14.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (551, 10455, 53, 26.2000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (552, 10455, 61, 22.8000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (553, 10455, 71, 17.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (554, 10456, 21, 8.0000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (555, 10456, 49, 16.0000, 21, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (556, 10457, 59, 44.0000, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (557, 10458, 26, 24.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (558, 10458, 28, 36.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (559, 10458, 43, 36.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (560, 10458, 56, 30.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (561, 10458, 71, 17.2000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (562, 10459, 7, 24.0000, 16, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (563, 10459, 46, 9.6000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (564, 10459, 72, 27.8000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (565, 10460, 68, 10.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (566, 10460, 75, 6.2000, 4, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (567, 10461, 21, 8.0000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (568, 10461, 30, 20.7000, 28, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (569, 10461, 55, 19.2000, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (570, 10462, 13, 4.8000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (571, 10462, 23, 7.2000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (572, 10463, 19, 7.3000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (573, 10463, 42, 11.2000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (574, 10464, 4, 17.6000, 16, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (575, 10464, 43, 36.8000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (576, 10464, 56, 30.4000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (577, 10464, 60, 27.2000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (578, 10465, 24, 3.6000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (579, 10465, 29, 99.0000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (580, 10465, 40, 14.7000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (581, 10465, 45, 7.6000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (582, 10465, 50, 13.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (583, 10466, 11, 16.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (584, 10466, 46, 9.6000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (585, 10467, 24, 3.6000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (586, 10467, 25, 11.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (587, 10468, 30, 20.7000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (588, 10468, 43, 36.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (589, 10469, 2, 15.2000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (590, 10469, 16, 13.9000, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (591, 10469, 44, 15.5000, 2, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (592, 10470, 18, 50.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (593, 10470, 23, 7.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (594, 10470, 64, 26.6000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (595, 10471, 7, 24.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (596, 10471, 56, 30.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (597, 10472, 24, 3.6000, 80, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (598, 10472, 51, 42.4000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (599, 10473, 33, 2.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (600, 10473, 71, 17.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (601, 10474, 14, 18.6000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (602, 10474, 28, 36.4000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (603, 10474, 40, 14.7000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (604, 10474, 75, 6.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (605, 10475, 31, 10.0000, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (606, 10475, 66, 13.6000, 60, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (607, 10475, 76, 14.4000, 42, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (608, 10476, 55, 19.2000, 2, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (609, 10476, 70, 12.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (610, 10477, 1, 14.4000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (611, 10477, 21, 8.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (612, 10477, 39, 14.4000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (613, 10478, 10, 24.8000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (614, 10479, 38, 210.8000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (615, 10479, 53, 26.2000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (616, 10479, 59, 44.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (617, 10479, 64, 26.6000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (618, 10480, 47, 7.6000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (619, 10480, 59, 44.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (620, 10481, 49, 16.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (621, 10481, 60, 27.2000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (622, 10482, 40, 14.7000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (623, 10483, 34, 11.2000, 35, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (624, 10483, 77, 10.4000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (625, 10484, 21, 8.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (626, 10484, 40, 14.7000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (627, 10484, 51, 42.4000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (628, 10485, 2, 15.2000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (629, 10485, 3, 8.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (630, 10485, 55, 19.2000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (631, 10485, 70, 12.0000, 60, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (632, 10486, 11, 16.8000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (633, 10486, 51, 42.4000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (634, 10486, 74, 8.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (635, 10487, 19, 7.3000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (636, 10487, 26, 24.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (637, 10487, 54, 5.9000, 24, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (638, 10488, 59, 44.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (639, 10488, 73, 12.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (640, 10489, 11, 16.8000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (641, 10489, 16, 13.9000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (642, 10490, 59, 44.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (643, 10490, 68, 10.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (644, 10490, 75, 6.2000, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (645, 10491, 44, 15.5000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (646, 10491, 77, 10.4000, 7, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (647, 10492, 25, 11.2000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (648, 10492, 42, 11.2000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (649, 10493, 65, 16.8000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (650, 10493, 66, 13.6000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (651, 10493, 69, 28.8000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (652, 10494, 56, 30.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (653, 10495, 23, 7.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (654, 10495, 41, 7.7000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (655, 10495, 77, 10.4000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (656, 10496, 31, 10.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (657, 10497, 56, 30.4000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (658, 10497, 72, 27.8000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (659, 10497, 77, 10.4000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (660, 10498, 24, 4.5000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (661, 10498, 40, 18.4000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (662, 10498, 42, 14.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (663, 10499, 28, 45.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (664, 10499, 49, 20.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (665, 10500, 15, 15.5000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (666, 10500, 28, 45.6000, 8, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (667, 10501, 54, 7.4500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (668, 10502, 45, 9.5000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (669, 10502, 53, 32.8000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (670, 10502, 67, 14.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (671, 10503, 14, 23.2500, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (672, 10503, 65, 21.0500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (673, 10504, 2, 19.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (674, 10504, 21, 10.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (675, 10504, 53, 32.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (676, 10504, 61, 28.5000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (677, 10505, 62, 49.3000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (678, 10506, 25, 14.0000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (679, 10506, 70, 15.0000, 14, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (680, 10507, 43, 46.0000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (681, 10507, 48, 12.7500, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (682, 10508, 13, 6.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (683, 10508, 39, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (684, 10509, 28, 45.6000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (685, 10510, 29, 123.7900, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (686, 10510, 75, 7.7500, 36, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (687, 10511, 4, 22.0000, 50, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (688, 10511, 7, 30.0000, 50, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (689, 10511, 8, 40.0000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (690, 10512, 24, 4.5000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (691, 10512, 46, 12.0000, 9, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (692, 10512, 47, 9.5000, 6, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (693, 10512, 60, 34.0000, 12, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (694, 10513, 21, 10.0000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (695, 10513, 32, 32.0000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (696, 10513, 61, 28.5000, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (697, 10514, 20, 81.0000, 39, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (698, 10514, 28, 45.6000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (699, 10514, 56, 38.0000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (700, 10514, 65, 21.0500, 39, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (701, 10514, 75, 7.7500, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (702, 10515, 9, 97.0000, 16, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (703, 10515, 16, 17.4500, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (704, 10515, 27, 43.9000, 120, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (705, 10515, 33, 2.5000, 16, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (706, 10515, 60, 34.0000, 84, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (707, 10516, 18, 62.5000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (708, 10516, 41, 9.6500, 80, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (709, 10516, 42, 14.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (710, 10517, 52, 7.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (711, 10517, 59, 55.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (712, 10517, 70, 15.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (713, 10518, 24, 4.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (714, 10518, 38, 263.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (715, 10518, 44, 19.4500, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (716, 10519, 10, 31.0000, 16, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (717, 10519, 56, 38.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (718, 10519, 60, 34.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (719, 10520, 24, 4.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (720, 10520, 53, 32.8000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (721, 10521, 35, 18.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (722, 10521, 41, 9.6500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (723, 10521, 68, 12.5000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (724, 10522, 1, 18.0000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (725, 10522, 8, 40.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (726, 10522, 30, 25.8900, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (727, 10522, 40, 18.4000, 25, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (728, 10523, 17, 39.0000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (729, 10523, 20, 81.0000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (730, 10523, 37, 26.0000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (731, 10523, 41, 9.6500, 6, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (732, 10524, 10, 31.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (733, 10524, 30, 25.8900, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (734, 10524, 43, 46.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (735, 10524, 54, 7.4500, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (736, 10525, 36, 19.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (737, 10525, 40, 18.4000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (738, 10526, 1, 18.0000, 8, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (739, 10526, 13, 6.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (740, 10526, 56, 38.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (741, 10527, 4, 22.0000, 50, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (742, 10527, 36, 19.0000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (743, 10528, 11, 21.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (744, 10528, 33, 2.5000, 8, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (745, 10528, 72, 34.8000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (746, 10529, 55, 24.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (747, 10529, 68, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (748, 10529, 69, 36.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (749, 10530, 17, 39.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (750, 10530, 43, 46.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (751, 10530, 61, 28.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (752, 10530, 76, 18.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (753, 10531, 59, 55.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (754, 10532, 30, 25.8900, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (755, 10532, 66, 17.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (756, 10533, 4, 22.0000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (757, 10533, 72, 34.8000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (758, 10533, 73, 15.0000, 24, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (759, 10534, 30, 25.8900, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (760, 10534, 40, 18.4000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (761, 10534, 54, 7.4500, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (762, 10535, 11, 21.0000, 50, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (763, 10535, 40, 18.4000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (764, 10535, 57, 19.5000, 5, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (765, 10535, 59, 55.0000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (766, 10536, 12, 38.0000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (767, 10536, 31, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (768, 10536, 33, 2.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (769, 10536, 60, 34.0000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (770, 10537, 31, 12.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (771, 10537, 51, 53.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (772, 10537, 58, 13.2500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (773, 10537, 72, 34.8000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (774, 10537, 73, 15.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (775, 10538, 70, 15.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (776, 10538, 72, 34.8000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (777, 10539, 13, 6.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (778, 10539, 21, 10.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (779, 10539, 33, 2.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (780, 10539, 49, 20.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (781, 10540, 3, 10.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (782, 10540, 26, 31.2300, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (783, 10540, 38, 263.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (784, 10540, 68, 12.5000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (785, 10541, 24, 4.5000, 35, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (786, 10541, 38, 263.5000, 4, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (787, 10541, 65, 21.0500, 36, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (788, 10541, 71, 21.5000, 9, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (789, 10542, 11, 21.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (790, 10542, 54, 7.4500, 24, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (791, 10543, 12, 38.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (792, 10543, 23, 9.0000, 70, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (793, 10544, 28, 45.6000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (794, 10544, 67, 14.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (795, 10545, 11, 21.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (796, 10546, 7, 30.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (797, 10546, 35, 18.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (798, 10546, 62, 49.3000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (799, 10547, 32, 32.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (800, 10547, 36, 19.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (801, 10548, 34, 14.0000, 10, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (802, 10548, 41, 9.6500, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (803, 10549, 31, 12.5000, 55, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (804, 10549, 45, 9.5000, 100, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (805, 10549, 51, 53.0000, 48, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (806, 10550, 17, 39.0000, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (807, 10550, 19, 9.2000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (808, 10550, 21, 10.0000, 6, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (809, 10550, 61, 28.5000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (810, 10551, 16, 17.4500, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (811, 10551, 35, 18.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (812, 10551, 44, 19.4500, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (813, 10552, 69, 36.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (814, 10552, 75, 7.7500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (815, 10553, 11, 21.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (816, 10553, 16, 17.4500, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (817, 10553, 22, 21.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (818, 10553, 31, 12.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (819, 10553, 35, 18.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (820, 10554, 16, 17.4500, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (821, 10554, 23, 9.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (822, 10554, 62, 49.3000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (823, 10554, 77, 13.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (824, 10555, 14, 23.2500, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (825, 10555, 19, 9.2000, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (826, 10555, 24, 4.5000, 18, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (827, 10555, 51, 53.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (828, 10555, 56, 38.0000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (829, 10556, 72, 34.8000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (830, 10557, 64, 33.2500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (831, 10557, 75, 7.7500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (832, 10558, 47, 9.5000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (833, 10558, 51, 53.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (834, 10558, 52, 7.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (835, 10558, 53, 32.8000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (836, 10558, 73, 15.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (837, 10559, 41, 9.6500, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (838, 10559, 55, 24.0000, 18, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (839, 10560, 30, 25.8900, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (840, 10560, 62, 49.3000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (841, 10561, 44, 19.4500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (842, 10561, 51, 53.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (843, 10562, 33, 2.5000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (844, 10562, 62, 49.3000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (845, 10563, 36, 19.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (846, 10563, 52, 7.0000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (847, 10564, 17, 39.0000, 16, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (848, 10564, 31, 12.5000, 6, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (849, 10564, 55, 24.0000, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (850, 10565, 24, 4.5000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (851, 10565, 64, 33.2500, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (852, 10566, 11, 21.0000, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (853, 10566, 18, 62.5000, 18, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (854, 10566, 76, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (855, 10567, 31, 12.5000, 60, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (856, 10567, 51, 53.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (857, 10567, 59, 55.0000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (858, 10568, 10, 31.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (859, 10569, 31, 12.5000, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (860, 10569, 76, 18.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (861, 10570, 11, 21.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (862, 10570, 56, 38.0000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (863, 10571, 14, 23.2500, 11, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (864, 10571, 42, 14.0000, 28, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (865, 10572, 16, 17.4500, 12, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (866, 10572, 32, 32.0000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (867, 10572, 40, 18.4000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (868, 10572, 75, 7.7500, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (869, 10573, 17, 39.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (870, 10573, 34, 14.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (871, 10573, 53, 32.8000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (872, 10574, 33, 2.5000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (873, 10574, 40, 18.4000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (874, 10574, 62, 49.3000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (875, 10574, 64, 33.2500, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (876, 10575, 59, 55.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (877, 10575, 63, 43.9000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (878, 10575, 72, 34.8000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (879, 10575, 76, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (880, 10576, 1, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (881, 10576, 31, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (882, 10576, 44, 19.4500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (883, 10577, 39, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (884, 10577, 75, 7.7500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (885, 10577, 77, 13.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (886, 10578, 35, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (887, 10578, 57, 19.5000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (888, 10579, 15, 15.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (889, 10579, 75, 7.7500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (890, 10580, 14, 23.2500, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (891, 10580, 41, 9.6500, 9, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (892, 10580, 65, 21.0500, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (893, 10581, 75, 7.7500, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (894, 10582, 57, 19.5000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (895, 10582, 76, 18.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (896, 10583, 29, 123.7900, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (897, 10583, 60, 34.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (898, 10583, 69, 36.0000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (899, 10584, 31, 12.5000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (900, 10585, 47, 9.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (901, 10586, 52, 7.0000, 4, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (902, 10587, 26, 31.2300, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (903, 10587, 35, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (904, 10587, 77, 13.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (905, 10588, 18, 62.5000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (906, 10588, 42, 14.0000, 100, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (907, 10589, 35, 18.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (908, 10590, 1, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (909, 10590, 77, 13.0000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (910, 10591, 3, 10.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (911, 10591, 7, 30.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (912, 10591, 54, 7.4500, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (913, 10592, 15, 15.5000, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (914, 10592, 26, 31.2300, 5, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (915, 10593, 20, 81.0000, 21, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (916, 10593, 69, 36.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (917, 10593, 76, 18.0000, 4, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (918, 10594, 52, 7.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (919, 10594, 58, 13.2500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (920, 10595, 35, 18.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (921, 10595, 61, 28.5000, 120, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (922, 10595, 69, 36.0000, 65, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (923, 10596, 56, 38.0000, 5, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (924, 10596, 63, 43.9000, 24, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (925, 10596, 75, 7.7500, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (926, 10597, 24, 4.5000, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (927, 10597, 57, 19.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (928, 10597, 65, 21.0500, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (929, 10598, 27, 43.9000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (930, 10598, 71, 21.5000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (931, 10599, 62, 49.3000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (932, 10600, 54, 7.4500, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (933, 10600, 73, 15.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (934, 10601, 13, 6.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (935, 10601, 59, 55.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (936, 10602, 77, 13.0000, 5, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (937, 10603, 22, 21.0000, 48, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (938, 10603, 49, 20.0000, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (939, 10604, 48, 12.7500, 6, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (940, 10604, 76, 18.0000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (941, 10605, 16, 17.4500, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (942, 10605, 59, 55.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (943, 10605, 60, 34.0000, 70, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (944, 10605, 71, 21.5000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (945, 10606, 4, 22.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (946, 10606, 55, 24.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (947, 10606, 62, 49.3000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (948, 10607, 7, 30.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (949, 10607, 17, 39.0000, 100, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (950, 10607, 33, 2.5000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (951, 10607, 40, 18.4000, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (952, 10607, 72, 34.8000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (953, 10608, 56, 38.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (954, 10609, 1, 18.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (955, 10609, 10, 31.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (956, 10609, 21, 10.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (957, 10610, 36, 19.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (958, 10611, 1, 18.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (959, 10611, 2, 19.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (960, 10611, 60, 34.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (961, 10612, 10, 31.0000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (962, 10612, 36, 19.0000, 55, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (963, 10612, 49, 20.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (964, 10612, 60, 34.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (965, 10612, 76, 18.0000, 80, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (966, 10613, 13, 6.0000, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (967, 10613, 75, 7.7500, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (968, 10614, 11, 21.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (969, 10614, 21, 10.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (970, 10614, 39, 18.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (971, 10615, 55, 24.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (972, 10616, 38, 263.5000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (973, 10616, 56, 38.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (974, 10616, 70, 15.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (975, 10616, 71, 21.5000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (976, 10617, 59, 55.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (977, 10618, 6, 25.0000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (978, 10618, 56, 38.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (979, 10618, 68, 12.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (980, 10619, 21, 10.0000, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (981, 10619, 22, 21.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (982, 10620, 24, 4.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (983, 10620, 52, 7.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (984, 10621, 19, 9.2000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (985, 10621, 23, 9.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (986, 10621, 70, 15.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (987, 10621, 71, 21.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (988, 10622, 2, 19.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (989, 10622, 68, 12.5000, 18, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (990, 10623, 14, 23.2500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (991, 10623, 19, 9.2000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (992, 10623, 21, 10.0000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (993, 10623, 24, 4.5000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (994, 10623, 35, 18.0000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (995, 10624, 28, 45.6000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (996, 10624, 29, 123.7900, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (997, 10624, 44, 19.4500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (998, 10625, 14, 23.2500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (999, 10625, 42, 14.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1000, 10625, 60, 34.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1001, 10626, 53, 32.8000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1002, 10626, 60, 34.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1003, 10626, 71, 21.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1004, 10627, 62, 49.3000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1005, 10627, 73, 15.0000, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1006, 10628, 1, 18.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1007, 10629, 29, 123.7900, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1008, 10629, 64, 33.2500, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1009, 10630, 55, 24.0000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1010, 10630, 76, 18.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1011, 10631, 75, 7.7500, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1012, 10632, 2, 19.0000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1013, 10632, 33, 2.5000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1014, 10633, 12, 38.0000, 36, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1015, 10633, 13, 6.0000, 13, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1016, 10633, 26, 31.2300, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1017, 10633, 62, 49.3000, 80, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1018, 10634, 7, 30.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1019, 10634, 18, 62.5000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1020, 10634, 51, 53.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1021, 10634, 75, 7.7500, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1022, 10635, 4, 22.0000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1023, 10635, 5, 21.3500, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1024, 10635, 22, 21.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1025, 10636, 4, 22.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1026, 10636, 58, 13.2500, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1027, 10637, 11, 21.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1028, 10637, 50, 16.2500, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1029, 10637, 56, 38.0000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1030, 10638, 45, 9.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1031, 10638, 65, 21.0500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1032, 10638, 72, 34.8000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1033, 10639, 18, 62.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1034, 10640, 69, 36.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1035, 10640, 70, 15.0000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1036, 10641, 2, 19.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1037, 10641, 40, 18.4000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1038, 10642, 21, 10.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1039, 10642, 61, 28.5000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1040, 10643, 28, 45.6000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1041, 10643, 39, 18.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1042, 10643, 46, 12.0000, 2, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1043, 10644, 18, 62.5000, 4, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1044, 10644, 43, 46.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1045, 10644, 46, 12.0000, 21, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1046, 10645, 18, 62.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1047, 10645, 36, 19.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1048, 10646, 1, 18.0000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1049, 10646, 10, 31.0000, 18, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1050, 10646, 71, 21.5000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1051, 10646, 77, 13.0000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1052, 10647, 19, 9.2000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1053, 10647, 39, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1054, 10648, 22, 21.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1055, 10648, 24, 4.5000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1056, 10649, 28, 45.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1057, 10649, 72, 34.8000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1058, 10650, 30, 25.8900, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1059, 10650, 53, 32.8000, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1060, 10650, 54, 7.4500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1061, 10651, 19, 9.2000, 12, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1062, 10651, 22, 21.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1063, 10652, 30, 25.8900, 2, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1064, 10652, 42, 14.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1065, 10653, 16, 17.4500, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1066, 10653, 60, 34.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1067, 10654, 4, 22.0000, 12, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1068, 10654, 39, 18.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1069, 10654, 54, 7.4500, 6, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1070, 10655, 41, 9.6500, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1071, 10656, 14, 23.2500, 3, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1072, 10656, 44, 19.4500, 28, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1073, 10656, 47, 9.5000, 6, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1074, 10657, 15, 15.5000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1075, 10657, 41, 9.6500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1076, 10657, 46, 12.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1077, 10657, 47, 9.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1078, 10657, 56, 38.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1079, 10657, 60, 34.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1080, 10658, 21, 10.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1081, 10658, 40, 18.4000, 70, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1082, 10658, 60, 34.0000, 55, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1083, 10658, 77, 13.0000, 70, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1084, 10659, 31, 12.5000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1085, 10659, 40, 18.4000, 24, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1086, 10659, 70, 15.0000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1087, 10660, 20, 81.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1088, 10661, 39, 18.0000, 3, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1089, 10661, 58, 13.2500, 49, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1090, 10662, 68, 12.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1091, 10663, 40, 18.4000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1092, 10663, 42, 14.0000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1093, 10663, 51, 53.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1094, 10664, 10, 31.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1095, 10664, 56, 38.0000, 12, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1096, 10664, 65, 21.0500, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1097, 10665, 51, 53.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1098, 10665, 59, 55.0000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1099, 10665, 76, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1100, 10666, 29, 123.7900, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1101, 10666, 65, 21.0500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1102, 10667, 69, 36.0000, 45, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1103, 10667, 71, 21.5000, 14, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1104, 10668, 31, 12.5000, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1105, 10668, 55, 24.0000, 4, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1106, 10668, 64, 33.2500, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1107, 10669, 36, 19.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1108, 10670, 23, 9.0000, 32, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1109, 10670, 46, 12.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1110, 10670, 67, 14.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1111, 10670, 73, 15.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1112, 10670, 75, 7.7500, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1113, 10671, 16, 17.4500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1114, 10671, 62, 49.3000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1115, 10671, 65, 21.0500, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1116, 10672, 38, 263.5000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1117, 10672, 71, 21.5000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1118, 10673, 16, 17.4500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1119, 10673, 42, 14.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1120, 10673, 43, 46.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1121, 10674, 23, 9.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1122, 10675, 14, 23.2500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1123, 10675, 53, 32.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1124, 10675, 58, 13.2500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1125, 10676, 10, 31.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1126, 10676, 19, 9.2000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1127, 10676, 44, 19.4500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1128, 10677, 26, 31.2300, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1129, 10677, 33, 2.5000, 8, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1130, 10678, 12, 38.0000, 100, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1131, 10678, 33, 2.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1132, 10678, 41, 9.6500, 120, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1133, 10678, 54, 7.4500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1134, 10679, 59, 55.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1135, 10680, 16, 17.4500, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1136, 10680, 31, 12.5000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1137, 10680, 42, 14.0000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1138, 10681, 19, 9.2000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1139, 10681, 21, 10.0000, 12, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1140, 10681, 64, 33.2500, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1141, 10682, 33, 2.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1142, 10682, 66, 17.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1143, 10682, 75, 7.7500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1144, 10683, 52, 7.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1145, 10684, 40, 18.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1146, 10684, 47, 9.5000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1147, 10684, 60, 34.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1148, 10685, 10, 31.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1149, 10685, 41, 9.6500, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1150, 10685, 47, 9.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1151, 10686, 17, 39.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1152, 10686, 26, 31.2300, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1153, 10687, 9, 97.0000, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1154, 10687, 29, 123.7900, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1155, 10687, 36, 19.0000, 6, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1156, 10688, 10, 31.0000, 18, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1157, 10688, 28, 45.6000, 60, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1158, 10688, 34, 14.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1159, 10689, 1, 18.0000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1160, 10690, 56, 38.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1161, 10690, 77, 13.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1162, 10691, 1, 18.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1163, 10691, 29, 123.7900, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1164, 10691, 43, 46.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1165, 10691, 44, 19.4500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1166, 10691, 62, 49.3000, 48, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1167, 10692, 63, 43.9000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1168, 10693, 9, 97.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1169, 10693, 54, 7.4500, 60, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1170, 10693, 69, 36.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1171, 10693, 73, 15.0000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1172, 10694, 7, 30.0000, 90, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1173, 10694, 59, 55.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1174, 10694, 70, 15.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1175, 10695, 8, 40.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1176, 10695, 12, 38.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1177, 10695, 24, 4.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1178, 10696, 17, 39.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1179, 10696, 46, 12.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1180, 10697, 19, 9.2000, 7, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1181, 10697, 35, 18.0000, 9, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1182, 10697, 58, 13.2500, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1183, 10697, 70, 15.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1184, 10698, 11, 21.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1185, 10698, 17, 39.0000, 8, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1186, 10698, 29, 123.7900, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1187, 10698, 65, 21.0500, 65, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1188, 10698, 70, 15.0000, 8, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1189, 10699, 47, 9.5000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1190, 10700, 1, 18.0000, 5, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1191, 10700, 34, 14.0000, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1192, 10700, 68, 12.5000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1193, 10700, 71, 21.5000, 60, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1194, 10701, 59, 55.0000, 42, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1195, 10701, 71, 21.5000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1196, 10701, 76, 18.0000, 35, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1197, 10702, 3, 10.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1198, 10702, 76, 18.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1199, 10703, 2, 19.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1200, 10703, 59, 55.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1201, 10703, 73, 15.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1202, 10704, 4, 22.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1203, 10704, 24, 4.5000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1204, 10704, 48, 12.7500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1205, 10705, 31, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1206, 10705, 32, 32.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1207, 10706, 16, 17.4500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1208, 10706, 43, 46.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1209, 10706, 59, 55.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1210, 10707, 55, 24.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1211, 10707, 57, 19.5000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1212, 10707, 70, 15.0000, 28, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1213, 10708, 5, 21.3500, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1214, 10708, 36, 19.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1215, 10709, 8, 40.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1216, 10709, 51, 53.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1217, 10709, 60, 34.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1218, 10710, 19, 9.2000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1219, 10710, 47, 9.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1220, 10711, 19, 9.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1221, 10711, 41, 9.6500, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1222, 10711, 53, 32.8000, 120, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1223, 10712, 53, 32.8000, 3, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1224, 10712, 56, 38.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1225, 10713, 10, 31.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1226, 10713, 26, 31.2300, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1227, 10713, 45, 9.5000, 110, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1228, 10713, 46, 12.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1229, 10714, 2, 19.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1230, 10714, 17, 39.0000, 27, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1231, 10714, 47, 9.5000, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1232, 10714, 56, 38.0000, 18, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1233, 10714, 58, 13.2500, 12, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1234, 10715, 10, 31.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1235, 10715, 71, 21.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1236, 10716, 21, 10.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1237, 10716, 51, 53.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1238, 10716, 61, 28.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1239, 10717, 21, 10.0000, 32, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1240, 10717, 54, 7.4500, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1241, 10717, 69, 36.0000, 25, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1242, 10718, 12, 38.0000, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1243, 10718, 16, 17.4500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1244, 10718, 36, 19.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1245, 10718, 62, 49.3000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1246, 10719, 18, 62.5000, 12, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1247, 10719, 30, 25.8900, 3, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1248, 10719, 54, 7.4500, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1249, 10720, 35, 18.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1250, 10720, 71, 21.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1251, 10721, 44, 19.4500, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1252, 10722, 2, 19.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1253, 10722, 31, 12.5000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1254, 10722, 68, 12.5000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1255, 10722, 75, 7.7500, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1256, 10723, 26, 31.2300, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1257, 10724, 10, 31.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1258, 10724, 61, 28.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1259, 10725, 41, 9.6500, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1260, 10725, 52, 7.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1261, 10725, 55, 24.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1262, 10726, 4, 22.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1263, 10726, 11, 21.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1264, 10727, 17, 39.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1265, 10727, 56, 38.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1266, 10727, 59, 55.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1267, 10728, 30, 25.8900, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1268, 10728, 40, 18.4000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1269, 10728, 55, 24.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1270, 10728, 60, 34.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1271, 10729, 1, 18.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1272, 10729, 21, 10.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1273, 10729, 50, 16.2500, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1274, 10730, 16, 17.4500, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1275, 10730, 31, 12.5000, 3, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1276, 10730, 65, 21.0500, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1277, 10731, 21, 10.0000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1278, 10731, 51, 53.0000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1279, 10732, 76, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1280, 10733, 14, 23.2500, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1281, 10733, 28, 45.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1282, 10733, 52, 7.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1283, 10734, 6, 25.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1284, 10734, 30, 25.8900, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1285, 10734, 76, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1286, 10735, 61, 28.5000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1287, 10735, 77, 13.0000, 2, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1288, 10736, 65, 21.0500, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1289, 10736, 75, 7.7500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1290, 10737, 13, 6.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1291, 10737, 41, 9.6500, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1292, 10738, 16, 17.4500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1293, 10739, 36, 19.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1294, 10739, 52, 7.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1295, 10740, 28, 45.6000, 5, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1296, 10740, 35, 18.0000, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1297, 10740, 45, 9.5000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1298, 10740, 56, 38.0000, 14, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1299, 10741, 2, 19.0000, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1300, 10742, 3, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1301, 10742, 60, 34.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1302, 10742, 72, 34.8000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1303, 10743, 46, 12.0000, 28, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1304, 10744, 40, 18.4000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1305, 10745, 18, 62.5000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1306, 10745, 44, 19.4500, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1307, 10745, 59, 55.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1308, 10745, 72, 34.8000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1309, 10746, 13, 6.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1310, 10746, 42, 14.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1311, 10746, 62, 49.3000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1312, 10746, 69, 36.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1313, 10747, 31, 12.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1314, 10747, 41, 9.6500, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1315, 10747, 63, 43.9000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1316, 10747, 69, 36.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1317, 10748, 23, 9.0000, 44, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1318, 10748, 40, 18.4000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1319, 10748, 56, 38.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1320, 10749, 56, 38.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1321, 10749, 59, 55.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1322, 10749, 76, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1323, 10750, 14, 23.2500, 5, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1324, 10750, 45, 9.5000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1325, 10750, 59, 55.0000, 25, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1326, 10751, 26, 31.2300, 12, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1327, 10751, 30, 25.8900, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1328, 10751, 50, 16.2500, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1329, 10751, 73, 15.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1330, 10752, 1, 18.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1331, 10752, 69, 36.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1332, 10753, 45, 9.5000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1333, 10753, 74, 10.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1334, 10754, 40, 18.4000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1335, 10755, 47, 9.5000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1336, 10755, 56, 38.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1337, 10755, 57, 19.5000, 14, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1338, 10755, 69, 36.0000, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1339, 10756, 18, 62.5000, 21, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1340, 10756, 36, 19.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1341, 10756, 68, 12.5000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1342, 10756, 69, 36.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1343, 10757, 34, 14.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1344, 10757, 59, 55.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1345, 10757, 62, 49.3000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1346, 10757, 64, 33.2500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1347, 10758, 26, 31.2300, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1348, 10758, 52, 7.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1349, 10758, 70, 15.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1350, 10759, 32, 32.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1351, 10760, 25, 14.0000, 12, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1352, 10760, 27, 43.9000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1353, 10760, 43, 46.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1354, 10761, 25, 14.0000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1355, 10761, 75, 7.7500, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1356, 10762, 39, 18.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1357, 10762, 47, 9.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1358, 10762, 51, 53.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1359, 10762, 56, 38.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1360, 10763, 21, 10.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1361, 10763, 22, 21.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1362, 10763, 24, 4.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1363, 10764, 3, 10.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1364, 10764, 39, 18.0000, 130, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1365, 10765, 65, 21.0500, 80, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1366, 10766, 2, 19.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1367, 10766, 7, 30.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1368, 10766, 68, 12.5000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1369, 10767, 42, 14.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1370, 10768, 22, 21.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1371, 10768, 31, 12.5000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1372, 10768, 60, 34.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1373, 10768, 71, 21.5000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1374, 10769, 41, 9.6500, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1375, 10769, 52, 7.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1376, 10769, 61, 28.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1377, 10769, 62, 49.3000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1378, 10770, 11, 21.0000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1379, 10771, 71, 21.5000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1380, 10772, 29, 123.7900, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1381, 10772, 59, 55.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1382, 10773, 17, 39.0000, 33, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1383, 10773, 31, 12.5000, 70, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1384, 10773, 75, 7.7500, 7, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1385, 10774, 31, 12.5000, 2, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1386, 10774, 66, 17.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1387, 10775, 10, 31.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1388, 10775, 67, 14.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1389, 10776, 31, 12.5000, 16, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1390, 10776, 42, 14.0000, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1391, 10776, 45, 9.5000, 27, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1392, 10776, 51, 53.0000, 120, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1393, 10777, 42, 14.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1394, 10778, 41, 9.6500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1395, 10779, 16, 17.4500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1396, 10779, 62, 49.3000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1397, 10780, 70, 15.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1398, 10780, 77, 13.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1399, 10781, 54, 7.4500, 3, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1400, 10781, 56, 38.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1401, 10781, 74, 10.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1402, 10782, 31, 12.5000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1403, 10783, 31, 12.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1404, 10783, 38, 263.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1405, 10784, 36, 19.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1406, 10784, 39, 18.0000, 2, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1407, 10784, 72, 34.8000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1408, 10785, 10, 31.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1409, 10785, 75, 7.7500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1410, 10786, 8, 40.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1411, 10786, 30, 25.8900, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1412, 10786, 75, 7.7500, 42, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1413, 10787, 2, 19.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1414, 10787, 29, 123.7900, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1415, 10788, 19, 9.2000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1416, 10788, 75, 7.7500, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1417, 10789, 18, 62.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1418, 10789, 35, 18.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1419, 10789, 63, 43.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1420, 10789, 68, 12.5000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1421, 10790, 7, 30.0000, 3, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1422, 10790, 56, 38.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1423, 10791, 29, 123.7900, 14, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1424, 10791, 41, 9.6500, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1425, 10792, 2, 19.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1426, 10792, 54, 7.4500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1427, 10792, 68, 12.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1428, 10793, 41, 9.6500, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1429, 10793, 52, 7.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1430, 10794, 14, 23.2500, 15, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1431, 10794, 54, 7.4500, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1432, 10795, 16, 17.4500, 65, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1433, 10795, 17, 39.0000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1434, 10796, 26, 31.2300, 21, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1435, 10796, 44, 19.4500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1436, 10796, 64, 33.2500, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1437, 10796, 69, 36.0000, 24, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1438, 10797, 11, 21.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1439, 10798, 62, 49.3000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1440, 10798, 72, 34.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1441, 10799, 13, 6.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1442, 10799, 24, 4.5000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1443, 10799, 59, 55.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1444, 10800, 11, 21.0000, 50, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1445, 10800, 51, 53.0000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1446, 10800, 54, 7.4500, 7, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1447, 10801, 17, 39.0000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1448, 10801, 29, 123.7900, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1449, 10802, 30, 25.8900, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1450, 10802, 51, 53.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1451, 10802, 55, 24.0000, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1452, 10802, 62, 49.3000, 5, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1453, 10803, 19, 9.2000, 24, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1454, 10803, 25, 14.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1455, 10803, 59, 55.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1456, 10804, 10, 31.0000, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1457, 10804, 28, 45.6000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1458, 10804, 49, 20.0000, 4, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1459, 10805, 34, 14.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1460, 10805, 38, 263.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1461, 10806, 2, 19.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1462, 10806, 65, 21.0500, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1463, 10806, 74, 10.0000, 15, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1464, 10807, 40, 18.4000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1465, 10808, 56, 38.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1466, 10808, 76, 18.0000, 50, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1467, 10809, 52, 7.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1468, 10810, 13, 6.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1469, 10810, 25, 14.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1470, 10810, 70, 15.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1471, 10811, 19, 9.2000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1472, 10811, 23, 9.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1473, 10811, 40, 18.4000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1474, 10812, 31, 12.5000, 16, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1475, 10812, 72, 34.8000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1476, 10812, 77, 13.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1477, 10813, 2, 19.0000, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1478, 10813, 46, 12.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1479, 10814, 41, 9.6500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1480, 10814, 43, 46.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1481, 10814, 48, 12.7500, 8, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1482, 10814, 61, 28.5000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1483, 10815, 33, 2.5000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1484, 10816, 38, 263.5000, 30, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1485, 10816, 62, 49.3000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1486, 10817, 26, 31.2300, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1487, 10817, 38, 263.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1488, 10817, 40, 18.4000, 60, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1489, 10817, 62, 49.3000, 25, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1490, 10818, 32, 32.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1491, 10818, 41, 9.6500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1492, 10819, 43, 46.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1493, 10819, 75, 7.7500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1494, 10820, 56, 38.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1495, 10821, 35, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1496, 10821, 51, 53.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1497, 10822, 62, 49.3000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1498, 10822, 70, 15.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1499, 10823, 11, 21.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1500, 10823, 57, 19.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1501, 10823, 59, 55.0000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1502, 10823, 77, 13.0000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1503, 10824, 41, 9.6500, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1504, 10824, 70, 15.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1505, 10825, 26, 31.2300, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1506, 10825, 53, 32.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1507, 10826, 31, 12.5000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1508, 10826, 57, 19.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1509, 10827, 10, 31.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1510, 10827, 39, 18.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1511, 10828, 20, 81.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1512, 10828, 38, 263.5000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1513, 10829, 2, 19.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1514, 10829, 8, 40.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1515, 10829, 13, 6.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1516, 10829, 60, 34.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1517, 10830, 6, 25.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1518, 10830, 39, 18.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1519, 10830, 60, 34.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1520, 10830, 68, 12.5000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1521, 10831, 19, 9.2000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1522, 10831, 35, 18.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1523, 10831, 38, 263.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1524, 10831, 43, 46.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1525, 10832, 13, 6.0000, 3, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1526, 10832, 25, 14.0000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1527, 10832, 44, 19.4500, 16, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1528, 10832, 64, 33.2500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1529, 10833, 7, 30.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1530, 10833, 31, 12.5000, 9, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1531, 10833, 53, 32.8000, 9, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1532, 10834, 29, 123.7900, 8, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1533, 10834, 30, 25.8900, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1534, 10835, 59, 55.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1535, 10835, 77, 13.0000, 2, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1536, 10836, 22, 21.0000, 52, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1537, 10836, 35, 18.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1538, 10836, 57, 19.5000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1539, 10836, 60, 34.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1540, 10836, 64, 33.2500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1541, 10837, 13, 6.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1542, 10837, 40, 18.4000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1543, 10837, 47, 9.5000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1544, 10837, 76, 18.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1545, 10838, 1, 18.0000, 4, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1546, 10838, 18, 62.5000, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1547, 10838, 36, 19.0000, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1548, 10839, 58, 13.2500, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1549, 10839, 72, 34.8000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1550, 10840, 25, 14.0000, 6, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1551, 10840, 39, 18.0000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1552, 10841, 10, 31.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1553, 10841, 56, 38.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1554, 10841, 59, 55.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1555, 10841, 77, 13.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1556, 10842, 11, 21.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1557, 10842, 43, 46.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1558, 10842, 68, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1559, 10842, 70, 15.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1560, 10843, 51, 53.0000, 4, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1561, 10844, 22, 21.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1562, 10845, 23, 9.0000, 70, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1563, 10845, 35, 18.0000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1564, 10845, 42, 14.0000, 42, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1565, 10845, 58, 13.2500, 60, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1566, 10845, 64, 33.2500, 48, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1567, 10846, 4, 22.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1568, 10846, 70, 15.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1569, 10846, 74, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1570, 10847, 1, 18.0000, 80, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1571, 10847, 19, 9.2000, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1572, 10847, 37, 26.0000, 60, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1573, 10847, 45, 9.5000, 36, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1574, 10847, 60, 34.0000, 45, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1575, 10847, 71, 21.5000, 55, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1576, 10848, 5, 21.3500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1577, 10848, 9, 97.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1578, 10849, 3, 10.0000, 49, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1579, 10849, 26, 31.2300, 18, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1580, 10850, 25, 14.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1581, 10850, 33, 2.5000, 4, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1582, 10850, 70, 15.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1583, 10851, 2, 19.0000, 5, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1584, 10851, 25, 14.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1585, 10851, 57, 19.5000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1586, 10851, 59, 55.0000, 42, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1587, 10852, 2, 19.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1588, 10852, 17, 39.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1589, 10852, 62, 49.3000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1590, 10853, 18, 62.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1591, 10854, 10, 31.0000, 100, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1592, 10854, 13, 6.0000, 65, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1593, 10855, 16, 17.4500, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1594, 10855, 31, 12.5000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1595, 10855, 56, 38.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1596, 10855, 65, 21.0500, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1597, 10856, 2, 19.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1598, 10856, 42, 14.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1599, 10857, 3, 10.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1600, 10857, 26, 31.2300, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1601, 10857, 29, 123.7900, 10, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1602, 10858, 7, 30.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1603, 10858, 27, 43.9000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1604, 10858, 70, 15.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1605, 10859, 24, 4.5000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1606, 10859, 54, 7.4500, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1607, 10859, 64, 33.2500, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1608, 10860, 51, 53.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1609, 10860, 76, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1610, 10861, 17, 39.0000, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1611, 10861, 18, 62.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1612, 10861, 21, 10.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1613, 10861, 33, 2.5000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1614, 10861, 62, 49.3000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1615, 10862, 11, 21.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1616, 10862, 52, 7.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1617, 10863, 1, 18.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1618, 10863, 58, 13.2500, 12, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1619, 10864, 35, 18.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1620, 10864, 67, 14.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1621, 10865, 38, 263.5000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1622, 10865, 39, 18.0000, 80, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1623, 10866, 2, 19.0000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1624, 10866, 24, 4.5000, 6, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1625, 10866, 30, 25.8900, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1626, 10867, 53, 32.8000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1627, 10868, 26, 31.2300, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1628, 10868, 35, 18.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1629, 10868, 49, 20.0000, 42, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1630, 10869, 1, 18.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1631, 10869, 11, 21.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1632, 10869, 23, 9.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1633, 10869, 68, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1634, 10870, 35, 18.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1635, 10870, 51, 53.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1636, 10871, 6, 25.0000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1637, 10871, 16, 17.4500, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1638, 10871, 17, 39.0000, 16, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1639, 10872, 55, 24.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1640, 10872, 62, 49.3000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1641, 10872, 64, 33.2500, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1642, 10872, 65, 21.0500, 21, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1643, 10873, 21, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1644, 10873, 28, 45.6000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1645, 10874, 10, 31.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1646, 10875, 19, 9.2000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1647, 10875, 47, 9.5000, 21, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1648, 10875, 49, 20.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1649, 10876, 46, 12.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1650, 10876, 64, 33.2500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1651, 10877, 16, 17.4500, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1652, 10877, 18, 62.5000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1653, 10878, 20, 81.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1654, 10879, 40, 18.4000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1655, 10879, 65, 21.0500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1656, 10879, 76, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1657, 10880, 23, 9.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1658, 10880, 61, 28.5000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1659, 10880, 70, 15.0000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1660, 10881, 73, 15.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1661, 10882, 42, 14.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1662, 10882, 49, 20.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1663, 10882, 54, 7.4500, 32, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1664, 10883, 24, 4.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1665, 10884, 21, 10.0000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1666, 10884, 56, 38.0000, 21, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1667, 10884, 65, 21.0500, 12, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1668, 10885, 2, 19.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1669, 10885, 24, 4.5000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1670, 10885, 70, 15.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1671, 10885, 77, 13.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1672, 10886, 10, 31.0000, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1673, 10886, 31, 12.5000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1674, 10886, 77, 13.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1675, 10887, 25, 14.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1676, 10888, 2, 19.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1677, 10888, 68, 12.5000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1678, 10889, 11, 21.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1679, 10889, 38, 263.5000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1680, 10890, 17, 39.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1681, 10890, 34, 14.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1682, 10890, 41, 9.6500, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1683, 10891, 30, 25.8900, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1684, 10892, 59, 55.0000, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1685, 10893, 8, 40.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1686, 10893, 24, 4.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1687, 10893, 29, 123.7900, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1688, 10893, 30, 25.8900, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1689, 10893, 36, 19.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1690, 10894, 13, 6.0000, 28, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1691, 10894, 69, 36.0000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1692, 10894, 75, 7.7500, 120, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1693, 10895, 24, 4.5000, 110, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1694, 10895, 39, 18.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1695, 10895, 40, 18.4000, 91, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1696, 10895, 60, 34.0000, 100, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1697, 10896, 45, 9.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1698, 10896, 56, 38.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1699, 10897, 29, 123.7900, 80, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1700, 10897, 30, 25.8900, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1701, 10898, 13, 6.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1702, 10899, 39, 18.0000, 8, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1703, 10900, 70, 15.0000, 3, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1704, 10901, 41, 9.6500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1705, 10901, 71, 21.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1706, 10902, 55, 24.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1707, 10902, 62, 49.3000, 6, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1708, 10903, 13, 6.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1709, 10903, 65, 21.0500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1710, 10903, 68, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1711, 10904, 58, 13.2500, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1712, 10904, 62, 49.3000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1713, 10905, 1, 18.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1714, 10906, 61, 28.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1715, 10907, 75, 7.7500, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1716, 10908, 7, 30.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1717, 10908, 52, 7.0000, 14, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1718, 10909, 7, 30.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1719, 10909, 16, 17.4500, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1720, 10909, 41, 9.6500, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1721, 10910, 19, 9.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1722, 10910, 49, 20.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1723, 10910, 61, 28.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1724, 10911, 1, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1725, 10911, 17, 39.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1726, 10911, 67, 14.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1727, 10912, 11, 21.0000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1728, 10912, 29, 123.7900, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1729, 10913, 4, 22.0000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1730, 10913, 33, 2.5000, 40, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1731, 10913, 58, 13.2500, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1732, 10914, 71, 21.5000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1733, 10915, 17, 39.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1734, 10915, 33, 2.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1735, 10915, 54, 7.4500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1736, 10916, 16, 17.4500, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1737, 10916, 32, 32.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1738, 10916, 57, 19.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1739, 10917, 30, 25.8900, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1740, 10917, 60, 34.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1741, 10918, 1, 18.0000, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1742, 10918, 60, 34.0000, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1743, 10919, 16, 17.4500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1744, 10919, 25, 14.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1745, 10919, 40, 18.4000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1746, 10920, 50, 16.2500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1747, 10921, 35, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1748, 10921, 63, 43.9000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1749, 10922, 17, 39.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1750, 10922, 24, 4.5000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1751, 10923, 42, 14.0000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1752, 10923, 43, 46.0000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1753, 10923, 67, 14.0000, 24, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1754, 10924, 10, 31.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1755, 10924, 28, 45.6000, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1756, 10924, 75, 7.7500, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1757, 10925, 36, 19.0000, 25, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1758, 10925, 52, 7.0000, 12, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1759, 10926, 11, 21.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1760, 10926, 13, 6.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1761, 10926, 19, 9.2000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1762, 10926, 72, 34.8000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1763, 10927, 20, 81.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1764, 10927, 52, 7.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1765, 10927, 76, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1766, 10928, 47, 9.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1767, 10928, 76, 18.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1768, 10929, 21, 10.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1769, 10929, 75, 7.7500, 49, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1770, 10929, 77, 13.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1771, 10930, 21, 10.0000, 36, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1772, 10930, 27, 43.9000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1773, 10930, 55, 24.0000, 25, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1774, 10930, 58, 13.2500, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1775, 10931, 13, 6.0000, 42, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1776, 10931, 57, 19.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1777, 10932, 16, 17.4500, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1778, 10932, 62, 49.3000, 14, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1779, 10932, 72, 34.8000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1780, 10932, 75, 7.7500, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1781, 10933, 53, 32.8000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1782, 10933, 61, 28.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1783, 10934, 6, 25.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1784, 10935, 1, 18.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1785, 10935, 18, 62.5000, 4, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1786, 10935, 23, 9.0000, 8, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1787, 10936, 36, 19.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1788, 10937, 28, 45.6000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1789, 10937, 34, 14.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1790, 10938, 13, 6.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1791, 10938, 43, 46.0000, 24, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1792, 10938, 60, 34.0000, 49, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1793, 10938, 71, 21.5000, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1794, 10939, 2, 19.0000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1795, 10939, 67, 14.0000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1796, 10940, 7, 30.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1797, 10940, 13, 6.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1798, 10941, 31, 12.5000, 44, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1799, 10941, 62, 49.3000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1800, 10941, 68, 12.5000, 80, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1801, 10941, 72, 34.8000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1802, 10942, 49, 20.0000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1803, 10943, 13, 6.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1804, 10943, 22, 21.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1805, 10943, 46, 12.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1806, 10944, 11, 21.0000, 5, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1807, 10944, 44, 19.4500, 18, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1808, 10944, 56, 38.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1809, 10945, 13, 6.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1810, 10945, 31, 12.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1811, 10946, 10, 31.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1812, 10946, 24, 4.5000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1813, 10946, 77, 13.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1814, 10947, 59, 55.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1815, 10948, 50, 16.2500, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1816, 10948, 51, 53.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1817, 10948, 55, 24.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1818, 10949, 6, 25.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1819, 10949, 10, 31.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1820, 10949, 17, 39.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1821, 10949, 62, 49.3000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1822, 10950, 4, 22.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1823, 10951, 33, 2.5000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1824, 10951, 41, 9.6500, 6, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1825, 10951, 75, 7.7500, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1826, 10952, 6, 25.0000, 16, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1827, 10952, 28, 45.6000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1828, 10953, 20, 81.0000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1829, 10953, 31, 12.5000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1830, 10954, 16, 17.4500, 28, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1831, 10954, 31, 12.5000, 25, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1832, 10954, 45, 9.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1833, 10954, 60, 34.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1834, 10955, 75, 7.7500, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1835, 10956, 21, 10.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1836, 10956, 47, 9.5000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1837, 10956, 51, 53.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1838, 10957, 30, 25.8900, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1839, 10957, 35, 18.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1840, 10957, 64, 33.2500, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1841, 10958, 5, 21.3500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1842, 10958, 7, 30.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1843, 10958, 72, 34.8000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1844, 10959, 75, 7.7500, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1845, 10960, 24, 4.5000, 10, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1846, 10960, 41, 9.6500, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1847, 10961, 52, 7.0000, 6, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1848, 10961, 76, 18.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1849, 10962, 7, 30.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1850, 10962, 13, 6.0000, 77, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1851, 10962, 53, 32.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1852, 10962, 69, 36.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1853, 10962, 76, 18.0000, 44, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1854, 10963, 60, 34.0000, 2, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1855, 10964, 18, 62.5000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1856, 10964, 38, 263.5000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1857, 10964, 69, 36.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1858, 10965, 51, 53.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1859, 10966, 37, 26.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1860, 10966, 56, 38.0000, 12, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1861, 10966, 62, 49.3000, 12, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1862, 10967, 19, 9.2000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1863, 10967, 49, 20.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1864, 10968, 12, 38.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1865, 10968, 24, 4.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1866, 10968, 64, 33.2500, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1867, 10969, 46, 12.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1868, 10970, 52, 7.0000, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1869, 10971, 29, 123.7900, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1870, 10972, 17, 39.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1871, 10972, 33, 2.5000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1872, 10973, 26, 31.2300, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1873, 10973, 41, 9.6500, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1874, 10973, 75, 7.7500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1875, 10974, 63, 43.9000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1876, 10975, 8, 40.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1877, 10975, 75, 7.7500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1878, 10976, 28, 45.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1879, 10977, 39, 18.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1880, 10977, 47, 9.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1881, 10977, 51, 53.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1882, 10977, 63, 43.9000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1883, 10978, 8, 40.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1884, 10978, 21, 10.0000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1885, 10978, 40, 18.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1886, 10978, 44, 19.4500, 6, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1887, 10979, 7, 30.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1888, 10979, 12, 38.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1889, 10979, 24, 4.5000, 80, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1890, 10979, 27, 43.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1891, 10979, 31, 12.5000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1892, 10979, 63, 43.9000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1893, 10980, 75, 7.7500, 40, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1894, 10981, 38, 263.5000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1895, 10982, 7, 30.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1896, 10982, 43, 46.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1897, 10983, 13, 6.0000, 84, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1898, 10983, 57, 19.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1899, 10984, 16, 17.4500, 55, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1900, 10984, 24, 4.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1901, 10984, 36, 19.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1902, 10985, 16, 17.4500, 36, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1903, 10985, 18, 62.5000, 8, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1904, 10985, 32, 32.0000, 35, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1905, 10986, 11, 21.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1906, 10986, 20, 81.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1907, 10986, 76, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1908, 10986, 77, 13.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1909, 10987, 7, 30.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1910, 10987, 43, 46.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1911, 10987, 72, 34.8000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1912, 10988, 7, 30.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1913, 10988, 62, 49.3000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1914, 10989, 6, 25.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1915, 10989, 11, 21.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1916, 10989, 41, 9.6500, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1917, 10990, 21, 10.0000, 65, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1918, 10990, 34, 14.0000, 60, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1919, 10990, 55, 24.0000, 65, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1920, 10990, 61, 28.5000, 66, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1921, 10991, 2, 19.0000, 50, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1922, 10991, 70, 15.0000, 20, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1923, 10991, 76, 18.0000, 90, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1924, 10992, 72, 34.8000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1925, 10993, 29, 123.7900, 50, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1926, 10993, 41, 9.6500, 35, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1927, 10994, 59, 55.0000, 18, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1928, 10995, 51, 53.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1929, 10995, 60, 34.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1930, 10996, 42, 14.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1931, 10997, 32, 32.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1932, 10997, 46, 12.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1933, 10997, 52, 7.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1934, 10998, 24, 4.5000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1935, 10998, 61, 28.5000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1936, 10998, 74, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1937, 10998, 75, 7.7500, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1938, 10999, 41, 9.6500, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1939, 10999, 51, 53.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1940, 10999, 77, 13.0000, 21, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1941, 11000, 4, 22.0000, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1942, 11000, 24, 4.5000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1943, 11000, 77, 13.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1944, 11001, 7, 30.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1945, 11001, 22, 21.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1946, 11001, 46, 12.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1947, 11001, 55, 24.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1948, 11002, 13, 6.0000, 56, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1949, 11002, 35, 18.0000, 15, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1950, 11002, 42, 14.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1951, 11002, 55, 24.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1952, 11003, 1, 18.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1953, 11003, 40, 18.4000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1954, 11003, 52, 7.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1955, 11004, 26, 31.2300, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1956, 11004, 76, 18.0000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1957, 11005, 1, 18.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1958, 11005, 59, 55.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1959, 11006, 1, 18.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1960, 11006, 29, 123.7900, 2, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1961, 11007, 8, 40.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1962, 11007, 29, 123.7900, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1963, 11007, 42, 14.0000, 14, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1964, 11008, 28, 45.6000, 70, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1965, 11008, 34, 14.0000, 90, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1966, 11008, 71, 21.5000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1967, 11009, 24, 4.5000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1968, 11009, 36, 19.0000, 18, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1969, 11009, 60, 34.0000, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1970, 11010, 7, 30.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1971, 11010, 24, 4.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1972, 11011, 58, 13.2500, 40, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1973, 11011, 71, 21.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1974, 11012, 19, 9.2000, 50, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1975, 11012, 60, 34.0000, 36, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1976, 11012, 71, 21.5000, 60, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1977, 11013, 23, 9.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1978, 11013, 42, 14.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1979, 11013, 45, 9.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1980, 11013, 68, 12.5000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1981, 11014, 41, 9.6500, 28, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1982, 11015, 30, 25.8900, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1983, 11015, 77, 13.0000, 18, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1984, 11016, 31, 12.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1985, 11016, 36, 19.0000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1986, 11017, 3, 10.0000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1987, 11017, 59, 55.0000, 110, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1988, 11017, 70, 15.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1989, 11018, 12, 38.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1990, 11018, 18, 62.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1991, 11018, 56, 38.0000, 5, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1992, 11019, 46, 12.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1993, 11019, 49, 20.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1994, 11020, 10, 31.0000, 24, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1995, 11021, 2, 19.0000, 11, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1996, 11021, 20, 81.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1997, 11021, 26, 31.2300, 63, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1998, 11021, 51, 53.0000, 44, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (1999, 11021, 72, 34.8000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2000, 11022, 19, 9.2000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2001, 11022, 69, 36.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2002, 11023, 7, 30.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2003, 11023, 43, 46.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2004, 11024, 26, 31.2300, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2005, 11024, 33, 2.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2006, 11024, 65, 21.0500, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2007, 11024, 71, 21.5000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2008, 11025, 1, 18.0000, 10, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2009, 11025, 13, 6.0000, 20, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2010, 11026, 18, 62.5000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2011, 11026, 51, 53.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2012, 11027, 24, 4.5000, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2013, 11027, 62, 49.3000, 21, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2014, 11028, 55, 24.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2015, 11028, 59, 55.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2016, 11029, 56, 38.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2017, 11029, 63, 43.9000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2018, 11030, 2, 19.0000, 100, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2019, 11030, 5, 21.3500, 70, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2020, 11030, 29, 123.7900, 60, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2021, 11030, 59, 55.0000, 100, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2022, 11031, 1, 18.0000, 45, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2023, 11031, 13, 6.0000, 80, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2024, 11031, 24, 4.5000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2025, 11031, 64, 33.2500, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2026, 11031, 71, 21.5000, 16, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2027, 11032, 36, 19.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2028, 11032, 38, 263.5000, 25, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2029, 11032, 59, 55.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2030, 11033, 53, 32.8000, 70, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2031, 11033, 69, 36.0000, 36, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2032, 11034, 21, 10.0000, 15, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2033, 11034, 44, 19.4500, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2034, 11034, 61, 28.5000, 6, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2035, 11035, 1, 18.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2036, 11035, 35, 18.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2037, 11035, 42, 14.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2038, 11035, 54, 7.4500, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2039, 11036, 13, 6.0000, 7, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2040, 11036, 59, 55.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2041, 11037, 70, 15.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2042, 11038, 40, 18.4000, 5, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2043, 11038, 52, 7.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2044, 11038, 71, 21.5000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2045, 11039, 28, 45.6000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2046, 11039, 35, 18.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2047, 11039, 49, 20.0000, 60, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2048, 11039, 57, 19.5000, 28, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2049, 11040, 21, 10.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2050, 11041, 2, 19.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2051, 11041, 63, 43.9000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2052, 11042, 44, 19.4500, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2053, 11042, 61, 28.5000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2054, 11043, 11, 21.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2055, 11044, 62, 49.3000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2056, 11045, 33, 2.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2057, 11045, 51, 53.0000, 24, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2058, 11046, 12, 38.0000, 20, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2059, 11046, 32, 32.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2060, 11046, 35, 18.0000, 18, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2061, 11047, 1, 18.0000, 25, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2062, 11047, 5, 21.3500, 30, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2063, 11048, 68, 12.5000, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2064, 11049, 2, 19.0000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2065, 11049, 12, 38.0000, 4, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2066, 11050, 76, 18.0000, 50, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2067, 11051, 24, 4.5000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2068, 11052, 43, 46.0000, 30, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2069, 11052, 61, 28.5000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2070, 11053, 18, 62.5000, 35, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2071, 11053, 32, 32.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2072, 11053, 64, 33.2500, 25, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2073, 11054, 33, 2.5000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2074, 11054, 67, 14.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2075, 11055, 24, 4.5000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2076, 11055, 25, 14.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2077, 11055, 51, 53.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2078, 11055, 57, 19.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2079, 11056, 7, 30.0000, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2080, 11056, 55, 24.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2081, 11056, 60, 34.0000, 50, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2082, 11057, 70, 15.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2083, 11058, 21, 10.0000, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2084, 11058, 60, 34.0000, 21, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2085, 11058, 61, 28.5000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2086, 11059, 13, 6.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2087, 11059, 17, 39.0000, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2088, 11059, 60, 34.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2089, 11060, 60, 34.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2090, 11060, 77, 13.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2091, 11061, 60, 34.0000, 15, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2092, 11062, 53, 32.8000, 10, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2093, 11062, 70, 15.0000, 12, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2094, 11063, 34, 14.0000, 30, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2095, 11063, 40, 18.4000, 40, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2096, 11063, 41, 9.6500, 30, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2097, 11064, 17, 39.0000, 77, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2098, 11064, 41, 9.6500, 12, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2099, 11064, 53, 32.8000, 25, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2100, 11064, 55, 24.0000, 4, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2101, 11064, 68, 12.5000, 55, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2102, 11065, 30, 25.8900, 4, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2103, 11065, 54, 7.4500, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2104, 11066, 16, 17.4500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2105, 11066, 19, 9.2000, 42, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2106, 11066, 34, 14.0000, 35, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2107, 11067, 41, 9.6500, 9, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2108, 11068, 28, 45.6000, 8, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2109, 11068, 43, 46.0000, 36, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2110, 11068, 77, 13.0000, 28, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2111, 11069, 39, 18.0000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2112, 11070, 1, 18.0000, 40, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2113, 11070, 2, 19.0000, 20, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2114, 11070, 16, 17.4500, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2115, 11070, 31, 12.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2116, 11071, 7, 30.0000, 15, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2117, 11071, 13, 6.0000, 10, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2118, 11072, 2, 19.0000, 8, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2119, 11072, 41, 9.6500, 40, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2120, 11072, 50, 16.2500, 22, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2121, 11072, 64, 33.2500, 130, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2122, 11073, 11, 21.0000, 10, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2123, 11073, 24, 4.5000, 20, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2124, 11074, 16, 17.4500, 14, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2125, 11075, 2, 19.0000, 10, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2126, 11075, 46, 12.0000, 30, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2127, 11075, 76, 18.0000, 2, 0.15)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2128, 11076, 6, 25.0000, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2129, 11076, 14, 23.2500, 20, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2130, 11076, 19, 9.2000, 10, 0.25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2131, 11077, 2, 19.0000, 24, 0.2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2132, 11077, 3, 10.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2133, 11077, 4, 22.0000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2134, 11077, 6, 25.0000, 1, 0.02)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2135, 11077, 7, 30.0000, 1, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2136, 11077, 8, 40.0000, 2, 0.1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2137, 11077, 10, 31.0000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2138, 11077, 12, 38.0000, 2, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2139, 11077, 13, 6.0000, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2140, 11077, 14, 23.2500, 1, 0.03)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2141, 11077, 16, 17.4500, 2, 0.03)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2142, 11077, 20, 81.0000, 1, 0.04)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2143, 11077, 23, 9.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2144, 11077, 32, 32.0000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2145, 11077, 39, 18.0000, 2, 0.05)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2146, 11077, 41, 9.6500, 3, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2147, 11077, 46, 12.0000, 3, 0.02)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2148, 11077, 52, 7.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2149, 11077, 55, 24.0000, 2, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2150, 11077, 60, 34.0000, 2, 0.06)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2151, 11077, 64, 33.2500, 2, 0.03)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2152, 11077, 66, 17.0000, 1, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2153, 11077, 73, 15.0000, 2, 0.01)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2154, 11077, 75, 7.7500, 4, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [UnitPrice], [Quantity], [Discount]) VALUES (2155, 11077, 77, 13.0000, 2, 0)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (1, N'Chai', 1, 23.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (2, N'Chang', 1, 20.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (3, N'Aniseed Syrup', 2, 10.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, 22.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, 21.3500, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (6, N'Grandma''s Boysenberry Spread', 2, 27.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 7, 30.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (8, N'Northwoods Cranberry Sauce', 2, 40.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (9, N'Mishi Kobe Niku', 6, 97.0000, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (10, N'Ikura', 8, 31.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (11, N'Queso Cabrales', 4, 21.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (12, N'Queso Manchego La Pastora', 4, 38.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (13, N'Konbu', 8, 6.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (14, N'Tofu', 7, 23.2500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (15, N'Genen Shouyu', 2, 15.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (16, N'Pavlova', 3, 17.4500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (17, N'Alice Mutton', 6, 39.0000, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (18, N'Carnarvon Tigers', 8, 62.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (19, N'Teatime Chocolate Biscuits', 3, 9.2000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (20, N'Sir Rodney''s Marmalade', 3, 81.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (21, N'Sir Rodney''s Scones', 3, 10.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (22, N'Gustaf''s Knäckebröd', 5, 21.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (23, N'Tunnbröd', 5, 9.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (24, N'Guaraná Fantástica', 1, 4.5000, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 3, 14.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (26, N'Gumbär Gummibärchen', 3, 31.2300, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (27, N'Schoggi Schokolade', 3, 43.9000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (28, N'Rössle Sauerkraut', 7, 45.6000, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (29, N'Thüringer Rostbratwurst', 6, 123.7900, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (30, N'Nord-Ost Matjeshering', 8, 25.8900, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (31, N'Gorgonzola Telino', 4, 12.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (32, N'Mascarpone Fabioli', 4, 32.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (33, N'Geitost', 4, 2.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (34, N'Sasquatch Ale', 1, 14.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (35, N'Steeleye Stout', 1, 18.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (36, N'Inlagd Sill', 8, 19.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (37, N'Gravad lax', 8, 26.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (38, N'Côte de Blaye', 1, 263.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (39, N'Chartreuse verte', 1, 17.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (40, N'Boston Crab Meat', 8, 18.4000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (41, N'Jack''s New England Clam Chowder', 8, 9.6500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (42, N'Singaporean Hokkien Fried Mee', 5, 14.0000, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (43, N'Ipoh Coffee', 1, 46.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (44, N'Gula Malacca', 2, 19.4500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (45, N'Rogede sild', 8, 9.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (46, N'Spegesild', 8, 12.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (47, N'Zaanse koeken', 3, 9.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (48, N'Chocolade', 3, 12.7500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (49, N'Maxilaku', 3, 20.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (50, N'Valkoinen suklaa', 3, 16.2500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (51, N'Manjimup Dried Apples', 7, 53.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (52, N'Filo Mix', 5, 7.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (53, N'Perth Pasties', 6, 32.8000, 1)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (54, N'Tourtière', 6, 7.4500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (55, N'Pâté chinois', 6, 24.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (56, N'Gnocchi di nonna Alice', 5, 38.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (57, N'Ravioli Angelo', 5, 19.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (58, N'Escargots de Bourgogne', 8, 13.2500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (59, N'Raclette Courdavault', 4, 55.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (60, N'Camembert Pierrot', 4, 34.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (61, N'Sirop d''érable', 2, 28.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (62, N'Tarte au sucre', 3, 49.3000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (63, N'Vegie-spread', 2, 43.9000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (64, N'Wimmers gute Semmelknödel', 5, 33.2500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, 21.0500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, 17.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (67, N'Laughing Lumberjack Lager', 1, 14.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (68, N'Scottish Longbreads', 3, 12.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (69, N'Gudbrandsdalsost', 4, 36.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (70, N'Outback Lager', 1, 15.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (71, N'Flotemysost', 4, 21.5000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (72, N'Mozzarella di Giovanni', 4, 34.8000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (73, N'Röd Kaviar', 8, 15.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (74, N'Longlife Tofu', 7, 10.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (75, N'Rhönbräu Klosterbier', 1, 7.7500, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (76, N'Lakkalikööri', 1, 18.0000, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [Discontinued]) VALUES (77, N'Original Frankfurter grüne Soße', 2, 13.0000, 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Territory] ([TerritoryId], [TerritoryDescription]) VALUES (N'01581', N'Westboro')
GO
INSERT [dbo].[Territory] ([TerritoryId], [TerritoryDescription]) VALUES (N'01730', N'Bedford')
GO
INSERT [dbo].[Territory] ([TerritoryId], [TerritoryDescription]) VALUES (N'01833', N'Georgetown')
GO
INSERT [dbo].[Territory] ([TerritoryId], [TerritoryDescription]) VALUES (N'02116', N'Boston')
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[CustomerSetting]  WITH CHECK ADD  CONSTRAINT [FK_CustomerSetting_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerSetting] CHECK CONSTRAINT [FK_CustomerSetting_Customer]
GO
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeTerritories_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_dbo.EmployeeTerritories_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeTerritories_dbo.Territory_TerritoryId] FOREIGN KEY([TerritoryId])
REFERENCES [dbo].[Territory] ([TerritoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_dbo.EmployeeTerritories_dbo.Territory_TerritoryId]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [CK_Discount]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [CK_UnitPrice]
GO
