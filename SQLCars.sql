/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: type
------------------------------------------------------------*/
CREATE TABLE type(
	idTypeCars   INT IDENTITY (1,1) NOT NULL ,
	type         VARCHAR (50) NOT NULL  ,
	CONSTRAINT type_PK PRIMARY KEY (idTypeCars)
);


/*------------------------------------------------------------
-- Table: brand
------------------------------------------------------------*/
CREATE TABLE brand(
	idBrand   INT IDENTITY (1,1) NOT NULL ,
	brand     VARCHAR (50) NOT NULL  ,
	CONSTRAINT brand_PK PRIMARY KEY (idBrand)
);


/*------------------------------------------------------------
-- Table: cars
------------------------------------------------------------*/
CREATE TABLE cars(
	idVehicule      INT IDENTITY (1,1) NOT NULL ,
	nameVehicule    VARCHAR (50) NOT NULL ,
	stockVehicule   INT  NOT NULL ,
	price           INT  NOT NULL ,
	image           VARCHAR (255) NOT NULL ,
	description     VARCHAR (8000) NOT NULL ,
	reference       VARCHAR (255) NOT NULL ,
	idTypeCars      INT  NOT NULL ,
	idBrand         INT  NOT NULL  ,
	CONSTRAINT cars_PK PRIMARY KEY (idVehicule)

	,CONSTRAINT cars_type_FK FOREIGN KEY (idTypeCars) REFERENCES type(idTypeCars)
	,CONSTRAINT cars_brand0_FK FOREIGN KEY (idBrand) REFERENCES brand(idBrand)
);

CREATE TABLE [User](
    [idUser] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [lastName] NVARCHAR(50) NOT NULL,
    [firstName] NVARCHAR(50) NOT NULL,
    [password] VARCHAR(255) NOT NULL
);



