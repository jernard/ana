use database bd_transacciones
#esto es una prueba para git
#nuevo intento para git
CREATE TABLE banco (
ID_banco INT IDENTITY(1,1) PRIMARY KEY,
ban_nit VARCHAR(12) NOT NULL UNIQUE, 
ban_nom VARCHAR(60) NOT NULL, 
ban_dir VARCHAR(60) NOT NULL, 
ban_tel VARCHAR(60)); 

CREATE TABLE cliente ( 
ID_cliente INT IDENTITY(1,1) PRIMARY KEY,
cli_documento VARCHAR(10) NOT NULL UNIQUE, 
cli_nombre VARCHAR(30) NOT NULL, 
cli_apellidos VARCHAR(30) NOT NULL, 
cli_celular VARCHAR(20) NOT NULL, 
cli_direccion VARCHAR(30) NOT NULL, 
cli_sexo VARCHAR(1) DEFAULT 'f', 
cli_fechaNacimiento DATE, 
CHECK (cli_sexo='f' or cli_sexo='m'));

CREATE TABLE producto ( 
ID_producto INT IDENTITY(1,1) PRIMARY KEY,
pro_nombre VARCHAR(50) NOT NULL, 
pro_valorDescuento FLOAT(4) NOT NULL, 
pro_des VARCHAR(100)NOT NULL); 

CREATE TABLE cuenta ( 
ID_cuenta INT IDENTITY(1,1) PRIMARY KEY,
cue_clave VARCHAR(4) NOT NULL,
cue_numero VARCHAR(10) NOT NULL UNIQUE, 
cue_fechaCreacion DATE NOT NULL, 
cue_saldo FLOAT(50) default 0 NOT NULL, 
cue_idBanco INT FOREIGN KEY REFERENCES banco(ID_banco),
cue_idCliente INT FOREIGN KEY REFERENCES cliente(ID_cliente), 	
cue_idProduct INT FOREIGN KEY REFERENCES producto(ID_producto),
CHECK (cue_saldo>=0));

INSERT INTO banco VALUES('856543-54', 'Banco Occidente', 'Calle 4', '6568452'); 
INSERT INTO banco VALUES('654321-19','Banco Bogota', 'Calle 9 # 5', ' 6681829'); 
INSERT INTO banco VALUES('321644-45','Davivienda', 'Carrera 10 # 8', '8682179'); 
INSERT INTO banco VALUES('654312-96', 'Banco Popular', 'Calle 13 # 6', '5684688');
INSERT INTO banco VALUES('132654-54', 'Bancolombia', 'Calle 56 # 3', '9889745'); 

INSERT INTO cliente VALUES('4523698', 'Fernando','Orozco Gonzales','3216449874','Calle 36 #4-40', 'm', '1962-05-21');
INSERT INTO cliente VALUES('56984232', 'Mariana','Lopez Mendoza','3203654789','Calle 66 #5-90', 'f', '1976-03-18');
INSERT INTO cliente VALUES('1021654987', 'Adriana','Monje Perez','3105398523','Calle 170 #9-40', 'f', '1994-06-02');
INSERT INTO cliente VALUES('1036587147', 'Andres','Suarez Orjuela','3134454520','Calle 65 #7-32', 'm', '1988-12-01');
INSERT INTO cliente VALUES('956325874', 'Julian','Ramirez Diaz','3103254040','Calle 96 #41-45', 'm', '1981-02-14');
INSERT INTO cliente VALUES('1095236841', 'Arturo','Sosa Restrepo','3214079574','Calle 187 #14-19', 'm', '1995-07-23');
INSERT INTO cliente VALUES('5896254', 'Dana','Mora Martinez','3144517670','Calle 91 #8-09', 'f', '1967-09-30');
INSERT INTO cliente VALUES('49818252', 'Ignacio','Corredor Bustos','3164986110','Calle 35 #85-10', 'm', '1973-10-07');
INSERT INTO cliente VALUES('63985121', 'Alejandra','Tellez Hunda','3102410409','Calle 41 #32-23', 'f', '1978-01-10');
INSERT INTO cliente VALUES('896523214', 'Natalia','Anturi Almario','3213332075','Calle 52 #7-35', 'f', '1984-11-17');
INSERT INTO cliente VALUES('962301123', 'Melissa','Garcia Lopez','3108508758','Calle 37 #18-08', 'f', '1985-04-21');
INSERT INTO cliente VALUES('1044654321', 'Jose Antonio','Torres Alonso','3124501664','Calle 71 #5-21', 'm', '1990-08-11');

INSERT INTO producto VALUES('Cuenta Corriente', 0, 'No');
INSERT INTO producto VALUES('Cuenta Corriente', 2, 'Si');
INSERT INTO producto VALUES('Cuenta Corriente', 3, 'Si');
INSERT INTO producto VALUES('Cuenta Ahorros', 0, 'No');
INSERT INTO producto VALUES('Cuenta Ahorros', 2, 'Si');
INSERT INTO producto VALUES('Cuenta Ahorros', 3, 'Si');	

INSERT INTO cuenta VALUES('1234', '123400', '2013-03-06', 5600000, 5, 12, 6);
INSERT INTO cuenta VALUES('0000', '000000', '2014-03-16', 1300000, 5, 1, 1);
INSERT INTO cuenta VALUES('1111', '111100', '2015-02-26', 1400000, 5, 2, 2);
INSERT INTO cuenta VALUES('2222', '222200', '2011-01-23', 2300000, 5, 3, 3);
INSERT INTO cuenta VALUES('3333', '333300', '2010-11-21', 9100000, 5, 4, 4);
INSERT INTO cuenta VALUES('4444', '444400', '2009-12-14', 5200000, 5, 4, 5);
INSERT INTO cuenta VALUES('5555', '555500', '2009-10-15', 3200000, 5, 5, 6);
INSERT INTO cuenta VALUES('6666', '666600', '2011-09-01', 3000000, 5, 1, 2);
INSERT INTO cuenta VALUES('7777', '777700', '2012-04-04', 1400000, 5, 12, 2);
INSERT INTO cuenta VALUES('8888', '888800', '2013-09-07', 5600000, 5, 1, 3);
INSERT INTO cuenta VALUES('9999', '999900', '2014-02-19', 7300000, 1, 6, 4);
INSERT INTO cuenta VALUES('1000', '100000', '2013-01-11', 3600000, 1, 7, 5);
INSERT INTO cuenta VALUES('1100', '110000', '2013-05-11', 1520000, 1, 8, 5);
INSERT INTO cuenta VALUES('1200', '120000', '2015-08-29', 3600000, 1, 9, 4);
INSERT INTO cuenta VALUES('1300', '130000', '2008-07-24', 6540000, 1, 10, 3);
INSERT INTO cuenta VALUES('1400', '140000', '2007-06-14', 9460000, 1, 11, 2);
INSERT INTO cuenta VALUES('1500', '150000', '2005-06-13', 3130000, 1, 1, 1);
INSERT INTO cuenta VALUES('1600', '160000', '2010-07-11', 2120000, 1, 2, 6);
INSERT INTO cuenta VALUES('1700', '170000', '2009-08-26', 5540000, 1, 3, 6);
INSERT INTO cuenta VALUES('1800', '180000', '2008-06-28', 5210000, 1, 4, 1);
INSERT INTO cuenta VALUES('1900', '190000', '2008-03-19', 1230000, 2, 5, 2);
INSERT INTO cuenta VALUES('2000', '200000', '2009-03-20', 5130000, 2, 6, 3);
INSERT INTO cuenta VALUES('2100', '210000', '2010-01-10', 1560000, 2, 7, 4);
INSERT INTO cuenta VALUES('2200', '220000', '2011-11-30', 1690000, 2, 8, 5);
INSERT INTO cuenta VALUES('2300', '230000', '2012-12-12', 3690000, 2, 9, 6);
INSERT INTO cuenta VALUES('2400', '240000', '2006-12-12', 1400000, 2, 10, 1);
INSERT INTO cuenta VALUES('2500', '250000', '2007-10-14', 5000000, 2, 11, 2);
INSERT INTO cuenta VALUES('2600', '260000', '2008-03-07', 1200000, 2, 12, 3);
INSERT INTO cuenta VALUES('2700', '270000', '2009-04-08', 1100000, 2, 1, 4);
INSERT INTO cuenta VALUES('2800', '280000', '2010-01-09', 1460000, 2, 2, 5);
INSERT INTO cuenta VALUES('2900', '290000', '2012-01-04', 3600000, 3, 3, 6);
INSERT INTO cuenta VALUES('3000', '300000', '2013-02-05', 2100000, 3, 4, 6);
INSERT INTO cuenta VALUES('3100', '310000', '2015-05-06', 2300000, 3, 5, 5);
INSERT INTO cuenta VALUES('3200', '320000', '2003-08-08', 5900000, 3, 7, 4);
INSERT INTO cuenta VALUES('3300', '330000', '2004-06-06', 6300000, 3, 6, 3);
INSERT INTO cuenta VALUES('3400', '340000', '2009-07-03', 3900000, 4, 7, 2);
INSERT INTO cuenta VALUES('3500', '350000', '2008-09-01', 5410000, 4, 8, 1);
INSERT INTO cuenta VALUES('3600', '360000', '2009-01-17', 4100000, 4, 9, 6);
INSERT INTO cuenta VALUES('3700', '370000', '2015-11-19', 2300000, 4, 10, 6);
INSERT INTO cuenta VALUES('3800', '380000', '2012-10-24', 1460000, 4, 11, 1);



CREATE LOGIN Login_Banco 
	WITH PASSWORD = '123';

CREATE USER user_Banco FOR LOGIN Login_Banco 
GO 
USE bd_transacciones 
GO 
EXEC sp_addrolemember
	'db_owner',
	'User_banco';
GO

Use bd_transacciones
SELECT * FROM cuenta 
BEGIN TRANSACTION 
--Update 
UPDATE bd_transacciones.dbo.cuenta
	set cue_saldo = cue_saldo+10;
-----
COMMIT 
ROLLBACK

---RESTART
USE bd_transacciones
SELECT * FROM cuenta
BEGIN TRANSACTION
--update
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 5)
	where ID_cuenta = 2;

UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 5)
	where ID_cuenta = 5;
---
COMMIT
ROLLBACK
-----------
SELECT * from cuenta;


---SHUT DOWN
USE bd_transacciones
SELECT * FROM cuenta
BEGIN TRANSACTION
--update
WAITFOR DELAY '02:00'
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 5);
---
COMMIT

USE bd_transacciones
SELECT * FROM cuenta
BEGIN TRANSACTION
--update
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 1);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 2);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 3);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 4);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 5);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 6);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 7);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 8);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 9);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 10);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 11);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 12);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 13);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 14);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 15);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 16);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 17);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 18);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 19);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 20);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 21);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 22);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 23);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 24);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 25);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 26);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 27);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 28);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo+(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 29);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 30);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 31);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 32);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 33);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 34);
UPDATE bd_transacciones.dbo.cuenta
	SET cue_saldo = cue_saldo-(SELECT cue_saldo
								FROM cuenta
								where ID_cuenta = 35);

---
COMMIT
ROLLBACK


