create database if not exists db_realmadrid;

create user 'realmadriduser'@'localhost' identified by 'changeit';
grant all PRIVILEGES on db_realmadrid.* to 'realmadriduser'@'localhost';

use db_realmadrid;

CREATE TABLE IF NOT EXISTS admin (
id int(11) NOT NULL AUTO_INCREMENT,
nume char(30) NOT NULL,
email char(40) NOT NULL,
parola char(40) NOT NULL,
PRIMARY KEY (id),
UNIQUE KEY nume (nume)
);

INSERT INTO admin (nume, email, parola) VALUES
('admin', 'taviurdu@yahoo.com', MD5('admin'));

CREATE TABLE IF NOT EXISTS echipa_fotbal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post VARCHAR(50),
    nume VARCHAR(100),
    numar_tricou INT,
    UNIQUE (post, nume)
);

--  Inseram jucatorii in echipa de fotbal
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('portar', 'Thibaut Courtois', 1);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('portar', 'Andriy Lunin', 13);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('portar', 'Kepa Arrizabalaga', 25);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Dani Carvajal', 2);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Éder Militão', 3);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'David Alaba', 4);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Nacho Fernandez', 6);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Lucas Vasquez', 17);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Fran Garcia', 20);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Antonio Rudiger', 22);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('fundas', 'Ferland Mendy', 23);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Jude Bellingham', 5);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Toni Kroos', 8);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Luka Modrić', 10);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Eduardo Camavinga', 12);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Federico Valverde', 15);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Aurelian Tchouameni', 18);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Dani Ceballos', 19);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('mijlocas', 'Arda Guler', 24);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('atacant', 'Vinícius Júnior', 7);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('atacant', 'Rodrygo', 11);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('atacant', 'Joselu', 14);
INSERT INTO echipa_fotbal (post, nume, numar_tricou) VALUES ('atacant', 'Brahim Diaz', 21);

CREATE TABLE IF NOT EXISTS echipa_baschet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post VARCHAR(50),
    nume VARCHAR(100),
    numar_tricou INT,
    UNIQUE (post, nume)
);

INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('fundas', 'Sergio Llull', 23);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('fundas', 'Carlos Alocen', 12);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('fundas', 'Nigel Williams-Goss', 0);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('fundas', 'Fabien Causeur', 1);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('fundas', 'Jaycee Carroll', 20);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('pivot', 'Walter Tavares', 22);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('pivot', 'Vincent Poirier', 17);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('pivot', 'Alex Tyus', 7);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Gabriel Deck', 14);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Anthony Randolph', 3);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Rudy Fernandez', 5);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Jeffery Taylor', 44);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Trey Thompkins', 33);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Alberto Abalde', 6);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Adam Hanga', 8);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Usman Garuba', 16);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Vukcevic Tristan', 18);
INSERT INTO echipa_baschet (post, nume, numar_tricou) VALUES ('extremă', 'Mario Nakic', 11);

CREATE TABLE IF NOT EXISTS anunturi (
    id INT (11) NOT NULL AUTO_INCREMENT,
    mesaj varchar(256) NOT NULL,
    data date NOT NULL,
    PRIMARY KEY (id)
    );
    
insert into anunturi (mesaj, data) values (
    "Real Madrid se pregateste de finala Champions League", 
    "2024-05-24");
insert into anunturi (mesaj, data) values ("alt anunt", "2024-05-20");
insert into anunturi (mesaj, data) values ("inca unu", "2023-05-20");
insert into anunturi (mesaj, data) values ("si altu anunt", "2022-05-20");
insert into anunturi (mesaj, data) values ("la multi ani", "2021-05-20");
insert into anunturi (mesaj, data) values ("un ultim anunt", "2019-05-20");