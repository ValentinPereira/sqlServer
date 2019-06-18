/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: brokers
------------------------------------------------------------*/
CREATE TABLE brokers(
	idBrokers     INT IDENTITY (1,1) NOT NULL ,
	lastname      VARCHAR (50) NOT NULL ,
	firstname     VARCHAR (50) NOT NULL ,
	mail          VARCHAR (100) NOT NULL ,
	phonenumber   VARCHAR (10) NOT NULL  ,
	CONSTRAINT brokers_PK PRIMARY KEY (idBrokers)
);


/*------------------------------------------------------------
-- Table: customers
------------------------------------------------------------*/
CREATE TABLE customers(
	idCustomers   INT IDENTITY (1,1) NOT NULL ,
	lastname      VARCHAR (50) NOT NULL ,
	firstname     VARCHAR (50) NOT NULL ,
	mail          VARCHAR (100) NOT NULL ,
	phonenumber   VARCHAR (10) NOT NULL ,
	budget        INT  NOT NULL  ,
	CONSTRAINT customers_PK PRIMARY KEY (idCustomers)
);


/*------------------------------------------------------------
-- Table: appointments
------------------------------------------------------------*/
CREATE TABLE appointments(
	idAppointment   INT IDENTITY (1,1) NOT NULL ,
	datehour        DATETIME  NOT NULL ,
	subject         TEXT  NOT NULL ,
	idBrokers       INT  NOT NULL ,
	idCustomers     INT  NOT NULL  ,
	CONSTRAINT appointments_PK PRIMARY KEY (idAppointment)

	,CONSTRAINT appointments_brokers_FK FOREIGN KEY (idBrokers) REFERENCES brokers(idBrokers)
	,CONSTRAINT appointments_customers0_FK FOREIGN KEY (idCustomers) REFERENCES customers(idCustomers)
);



