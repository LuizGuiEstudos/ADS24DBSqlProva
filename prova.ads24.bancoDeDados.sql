CREATE database prova;


USE prova;

CREATE TABLE pessoa(
	id INTEGER auto_increment primary key,
    nome varchar(255),
    
    FK_CarroID integer,
    FOREIGN KEY (FK_CarroID) references carro( id )
);

##CREATE
INSERT INTO pessoa( nome, FK_CarroID ) 
VALUES( "Predo", 1 );

INSERT INTO pessoa( nome, FK_CarroID ) 
VALUES( "Mario", 3 );

INSERT INTO pessoa( nome, FK_CarroID ) 
VALUES( "Erick", 4 );

##UPDATE
UPDATE pessoa
SET nome = "Pedro Bioca"
WHERE id = 1;

##DELETE
DELETE FROM pessoa where id = 2;

##READ
SELECT * FROM pessoa;

##DROP
drop table pessoa;








		#####CARRO
CREATE TABLE carro(
	id INTEGER auto_increment primary key,
    marca varchar(255),
    placa varchar(12)
);
INSERT INTO carro( marca, placa ) ##CREATE 
VALUES( "Volksvaiguiner", "GYT12345" );

INSERT INTO carro( marca, placa ) ##CREATE 
VALUES( "Wolverine", "GAY1234" );

INSERT INTO carro( marca, placa ) ##CREATE 
VALUES( "Itachi", "SUV1234" );

INSERT INTO carro( marca, placa ) ##CREATE 
VALUES( "Panasonic", "BWD1234" );

##UPDATE
UPDATE carro
SET placa = "UWU6912"
WHERE id = 1;

##DELETE
DELETE FROM carro where id = 5;

##READ
SELECT * FROM carro; 

##DROP
drop table carro;


	###
SELECT * FROM pessoa
LEFT JOIN carro on pessoa.FK_CarroID = carro.id; 
