CREATE DATABASE sitio;
USE sitio;

CREATE TABLE vacas(cod INT PRIMARY KEY NOT NULL auto_increment, nome VARCHAR(30), peso DECIMAL(10,2));

INSERT INTO vacas (cod, nome, peso) VALUES (1, 'Mimosa', 500.0);
INSERT INTO vacas VALUES (NULL, 'Concha', 800.42);
INSERT INTO vacas VALUES (NULL, 'Diana', 480.9);
INSERT INTO vacas VALUES (NULL, 'Estrela', 650.0);
INSERT INTO vacas VALUES (NULL, 'Juju', 670.8);
INSERT INTO vacas VALUES (NULL, 'Jade', 954.1);
INSERT INTO vacas VALUES (NULL, 'Lili', 570.5);
INSERT INTO vacas VALUES (NULL, 'Tina', 499.2);

--Maior peso
SELECT * FROM VACAS ORDER BY PESO DESC;

SELECT * FROM VACAS WHERE PESO = (SELECT MAX(PESO) FROM VACAS);

--Menor peso 
SELECT * FROM VACAS ORDER BY PESO ASC;

SELECT * FROM VACAS WHERE PESO = (SELECT MIN(PESO) FROM VACAS);