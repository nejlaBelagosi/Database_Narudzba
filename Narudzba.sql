G0;
CREATE DATABASE ISPIT 
CREATE TABLE Telefon(
telefon_id int PRIMARY KEY NOT NULL,
klijent_id int NOT NULL,
sifra_drzave nvarchar(50) NOT NULL,
br_telefona int NOT NULL
)
CREATE TABLE Adresa(
Adresa_Id int NOT NULL PRIMARY KEY,
Klijent_Id int NOT NULL,
ULICA NVARCHAR(50) NOT NULL,
BROJ INT NOT NULL,
POSTANSKI INT NOT NULL
)
ALTER TABLE Adresa 
DROP COLUMN klijent_Id

CREATE TABLE ZEMLJA(
ZEMLJA_ID int NOT NULL PRIMARY KEY,
IME NVARCHAR(50) NOT NULL
)

CREATE TABLE KLIJENT(
CLIENT_ID int NOT NULL PRIMARY KEY,
IME NVARCHAR(50) NOT NULL,
PREZIME NVARCHAR(50) NOT NULL,
GODINE INT NOT NULL
)

ALTER TABLE Adresa
ADD CLIENT_ID INT NOT NULL REFERENCES KLIJENT(CLIENT_ID)

ALTER TABLE Adresa
ADD ZEMLJA_ID INT NOT NULL REFERENCES ZEMLJA(ZEMLJA_ID)

ALTER TABLE Telefon 
ADD CLIENT_ID INT NOT NULL REFERENCES KLIJENT(CLIENT_ID)

CREATE TABLE Narudzba (
narudzba_id int NOT NULL,
CLIENT_ID int NOT NULL,
datum date NOT NULL
)
ALTER TABLE Narudzba 
DROP COLUMN narudzba_id
ALTER TABLE Narudzba 
ADD narudzba_id int NOT NULL PRIMARY KEY

ALTER TABLE Narudzba 
DROP COLUMN CLIENT_ID

ALTER TABLE Narudzba
ADD CLIENT_ID int NOT NULL REFERENCES KLIJENT(CLIENT_ID)

CREATE TABLE Artikli(
artikli_id int PRIMARY KEY NOT NULL,
narudzba_id int NOT NULL,
opis varchar(100) NOT NULL,
vrijednost int NOT NULL,
iznos int NOT NULL 
)
ALTER TABLE Artikli 
DROP column narudzba_id
ALTER TABLE Artikli 
ADD narudzba_id int NOT NULL REFERENCES Narudzba(narudzba_id)

INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (1,'Nejra', 'Pezo', 22)
INSERT INTO Narudzba(narudzba_id, CLIENT_ID, datum) VALUES (1,1,'2023-01-02')
INSERT INTO Narudzba(narudzba_id, CLIENT_ID, datum) VALUES (2,2,'2022-01-02')
INSERT INTO Narudzba(narudzba_id, CLIENT_ID, datum) VALUES (3,3,'2023-03-02')
INSERT INTO Narudzba(narudzba_id, CLIENT_ID, datum) VALUES (4,4,'2023-01-06')
INSERT INTO Narudzba(narudzba_id, CLIENT_ID, datum) VALUES (5,9,'2023-01-06')

INSERT INTO Artikli(artikli_id,narudzba_id,opis,vrijednost,iznos) VALUES (2,1,'Dugotrajan i postojan lak', 22, 10)
INSERT INTO Artikli(artikli_id,narudzba_id,opis,vrijednost,iznos) VALUES (3,2,'Snazan', 10, 30)
INSERT INTO Artikli(artikli_id,narudzba_id,opis,vrijednost,iznos) VALUES (4,3,'Miris mora', 30, 25)
INSERT INTO Artikli(artikli_id,narudzba_id,opis,vrijednost,iznos) VALUES (5,4,'Ne znam vise koji opis da stavim', 3, 40)
INSERT INTO Artikli(artikli_id,narudzba_id,opis,vrijednost,iznos) VALUES (6,4,'Dugotrajan', 3, 40)




INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (2,'Ajla','Guhdija',21)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (3,'Ajlaa','Pasukanovic',18)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (4,'Adna','Karic',18)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (5,'Emina','Konak',13)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (6,'Belmin','Nezimovic',11)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (7,'Ajdin','Tabak',15)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (8,'Selma','Ploski�',17)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (9,'Ajla','Kadri�',22)
INSERT INTO KLIJENT(CLIENT_ID,IME,PREZIME,GODINE) VALUES (10,'Lamija','Demir',18)


INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (1,'Amerika')
INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (2,'Turska')
INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (3,'Hrvatska')
INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (4,'Italija')
INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (5,'Maroko')
INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (6,'Slovenija')
INSERT INTO ZEMLJA(ZEMLJA_ID, IME) VALUES (7,'Njema�ka')

INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(1,'Vrticka',23,71000,1,1)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(2,'Titova',35,71000,2,2)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(3,'Pijacna',14,71000,3,3)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(4,'Vitkovac',29,71000,4,4)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(5,'Obala Kulina bana',39,71000,4,3)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(6,'Alifakovac',38,71000,4,1)
--NE PRIKAZUJE OVE TRI ADRESE KAD RADIM INNER JOIN 
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(7,'FAKULTETSKA',21,71000,4,7)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(8,'FAKULTETSKA',21,71000,4,9)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(9,'Karamu�i�i',150,71000,2,10)
INSERT INTO Adresa(Adresa_Id,  ULICA, BROJ, POSTANSKI,ZEMLJA_ID,CLIENT_ID) VALUES 
(10,'Karamu�i�i',130,71000,2,8)


INSERT INTO Telefon(telefon_id, klijent_id, sifra_drzave, telefon, CLIENT_ID) 
VALUES (1,1,1,3332,1)
INSERT INTO Telefon(telefon_id, klijent_id, sifra_drzave, telefon, CLIENT_ID) 
VALUES (2,2,1,0612733,1)
INSERT INTO Telefon(telefon_id, klijent_id, sifra_drzave, telefon, CLIENT_ID) 
VALUES (3,3,2,062455243,2)
INSERT INTO Telefon(telefon_id, klijent_id, sifra_drzave, telefon, CLIENT_ID) 
VALUES (4,3,2,062725739,3)
INSERT INTO Telefon(telefon_id, klijent_id, sifra_drzave, telefon, CLIENT_ID) 
VALUES (5,2,4,062724092,4)

   -- UPITI
   SELECT*FROM Adresa
   
   SELECT ULICA,BROJ,POSTANSKI FROM Adresa WHERE ULICA NOT LIKE '[aeiou]%' OR BROJ%2=0
   SELECT IME FROM ZEMLJA WHERE IME LIKE '%E%' ORDER BY ZEMLJA_ID DESC; --odozdo prema gore, a ASC odozgo prema dolje

   SELECT ime,prezime,datum 
   FROM Narudzba 
   INNER JOIN Klijent
   ON Narudzba.CLIENT_ID=Klijent.CLIENT_ID
   WHERE datum LIKE '2023%'
   ORDER BY datum DESC; 
   --ILI
   SELECT ime,prezime,datum 
   FROM Narudzba 
   INNER JOIN Klijent
   ON Narudzba.CLIENT_ID=Klijent.CLIENT_ID
   WHERE datum BETWEEN '2023-01-01' AND '2023-12-31'
   ORDER BY datum DESC;

   SELECT artikli.opis,artikli.vrijednost, KLIJENT.IME,KLIJENT.PREZIME, KLIJENT.GODINE
   FROM Artikli 
   INNER JOIN Narudzba ON Artikli.narudzba_id= Narudzba.narudzba_id
   INNER JOIN KLIJENT ON Narudzba.CLIENT_ID= KLIJENT.CLIENT_ID
   INNER JOIN Adresa ON Adresa.CLIENT_ID=KLIJENT.CLIENT_ID
   WHERE ULICA='Obala kulina bana'AND GODINE>=18;
   
   SELECT COUNT(PREZIME) AS 'Broj_klijenata'
   FROM KLIJENT
   INNER JOIN Adresa ON Adresa.CLIENT_ID= KLIJENT.CLIENT_ID
   INNER JOIN ZEMLJA ON Adresa.ZEMLJA_ID=ZEMLJA.ZEMLJA_ID --???????????????

   SELECT sum(vrijednost) AS 'SUMA_VRIJEDNOSTI'
   FROM Artikli
   INNER JOIN Narudzba ON Artikli.narudzba_id=Narudzba.narudzba_id
   INNER JOIN KLIJENT ON Narudzba.CLIENT_ID=KLIJENT.CLIENT_ID
   INNER JOIN Telefon ON Telefon.CLIENT_ID=KLIJENT.CLIENT_ID
   WHERE telefon%2=0


   SELECT AVG(GODINE) AS 'Prosjecna starost'
   FROM KLIJENT
   INNER JOIN Narudzba ON Narudzba.CLIENT_ID=KLIJENT.CLIENT_ID
   INNER JOIN Artikli  ON Artikli.narudzba_id=Narudzba.narudzba_id
   WHERE iznos>1;
  
  --dodavanje kolone Grad u tabelu Adresa
  ALTER TABLE Adresa 
  ADD Grad varchar(50);



  select Telefon from Telefon
  
   

 
   
   
   
   
  

