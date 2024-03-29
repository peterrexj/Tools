﻿CREATE TABLE [tblVersion] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[Version] TEXT,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblImageItemMapping] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[ImageId]	INTEGER,
	[ItemId]	INTEGER,
	[IsMainImage] INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblImageSubCategoryMapping] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[ImageId]	INTEGER,
	[SubCategoryId]	INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblImages] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[ImageRaw]	TEXT,
	[Path]	TEXT,
	[OnlineStorePath]  TEXT,
	[OnlineShareLink]  TEXT,
	[OnlinePublicAccessLink]  TEXT,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblMainCategory] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[Sequence] INTEGER,
	[Name]	TEXT,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblSubCategory] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[Sequence] INTEGER,
	[Name]	TEXT,
	[ShowImage] INTEGER,
	[ShowName] INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblProperty] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[Name]	TEXT,
	[Sequence] INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblItem] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[Name]	TEXT,
	[Sequence] INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblCategoryMapping] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[MainCategoryId]	INTEGER,
	[SubCategoryId]	INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblItemCategoryMapping] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[ItemId]	INTEGER,
	[CategoryMappingId]	INTEGER,
	PRIMARY KEY([Id] AUTOINCREMENT)
);

CREATE TABLE [tblItemPropertyMapping] (
	[Id]	INTEGER NOT NULL UNIQUE,
	[ItemId]	INTEGER,
	[PropertyId]	INTEGER,
	[Value]	TEXT,
	PRIMARY KEY([Id] AUTOINCREMENT)
);