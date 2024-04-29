use biuro_podrozy
--uczestnicy
insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Weronika', 'Koterba', '2003-01-15', '123456789', 'werka@example.com', 'Gdanśk', 'ul.Prosta 10', '12345678901');
declare @id_osoby int;
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'123456789','123456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Jan', 'Nowak', '1985-05-20', '987654322', 'jan@example.com', 'Kraków', 'ul.Krakowska 5', '23456789012');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'223456789','223456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Julia', 'Filewicz', '2003-06-27', '987654334', 'julka123@example.com', 'Kraków', 'ul.Agh 5', '35789230432');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'323456789','323456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Piotr', 'Wójcik', '1992-11-18', '567890123', 'piotr@example.com', 'Wrocław', 'ul.Wrocławska 15', '45678901234');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'423456789','423456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Bartosz', 'Kamiński', '2000-10-02', '543210987', 'bartosz@example.com', 'Rzeszów', 'ul.Rzeszowska 4', '22334455667');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'123456787','123456787');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Magdalena', 'Witkowska', '1989-12-05', '432109876', 'magdalena@example.com', 'Olsztyn', 'ul.Olsztynska 9', '11223344556');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'123456788','123456788');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Łukasz', 'Pawlak', '1993-08-14', '234567890', 'lukasz@example.com', 'Bydgoszcz', 'ul.Bydgoska 12', '01234567890');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'123456780','123456780');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Alicja', 'Kwiatkowska', '1986-04-09', '345678901', 'alicja@example.com', 'Gdynia', 'ul.Gdynska 17', '90123456789');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'923456789','923456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Agnieszka', 'Kulesz', '2006-06-10', '012345679', 'aga@example.com', 'Siedlce', 'ul.Różana 1', '89012345678');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'823456789','823456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Ewa', 'Jankowska', '1987-02-28', '890123456', 'ewa@example.com', 'Poznań', 'ul.Poznanska 22', '78901234567');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'723456789','723456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Marcin', 'Dąbrowski', '1995-07-12', '789012345', 'marcin@example.com', 'Katowice', 'ul.Katowicka 8', '67890123456');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'623456789','623456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Katarzyna', 'Koterba', '1984-03-25', '678901234', 'katarzyna@example.com', 'Bytów', 'ul.Kwiatowa 10', '56789012345');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'523456789','523456789');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Amelia', 'Piotrowska', '2004-04-01', '876543210', 'amelia22@example.com', 'Kraków', 'ul.Bałtycka 14', '55667788990');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'523456729','523456729');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Tomasz', 'Lewandowski', '1996-09-17', '765432109', 'tomasz@example.com', 'Lublin', 'ul.Wysoka 11', '44556677889');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'523456719','523456719');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Wiktoria', 'Kubacka', '2003-06-28', '654321099', 'wiktoria@example.com', 'Chełmno', 'ul.Fiołkowa 6', '33445566779');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'523456700','523456700');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Michella', 'Miłecka', '2004-05-28', '234567899', 'misia@example.com', 'Rębiechowo', 'ul.Lotnicza 18', '99001101234');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'553456709','553456709');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Wiktoria', 'Kubacka', '2003-06-28', '654321098', 'wiktoria@example.com', 'Chełmno', 'ul.Fiołkowa 6', '33445566778');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'523456709','523456709');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Krzysztof', 'Nowicki', '1981-03-16', '123556789', 'krzysztof@example.com', 'Toruń', 'ul.Toruńska 2', '88990010123');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'543456709','543456709');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Natalia', 'Dudek', '1997-07-09', '012345678', 'natalia@example.com', 'Radom', 'ul.Toruńska 7', '77889901012');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'533456709','533456709');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Adam', 'Sobczyk', '1982-11-23', '987654321', 'adam@example.com', 'Bielsko-Biała', 'ul.Bielska 19', '66778889901');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'513456709','513456709');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Grzegorz', 'Wolski', '1984-08-08', '345678991', 'grzegorz@example.com', 'Słupsk', 'ul.Słupska 13', '00112233445');
set @id_osoby = scope_identity()
insert into uczestnik
	values(@id_osoby,'513455709','513455709');


--piloci
insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Grzegorz', 'Wolski', '2000-08-08', '345678999', 'grzegorz77@example.com', 'Słupsk', 'ul.Słupska 13', '90112233445');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'1990-08-08','2000-08-08');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Bartek', 'Wolski', '2000-08-09', '345678998', 'bartek77@example.com', 'Słupsk', 'ul.Słupska 3', '90112233446');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2001-09-08','2002-08-08');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Grzegorz', 'Zielony', '2004-08-08', '345678229', 'grzegorz@example.com', 'Słupsk', 'ul.Słupska 13', '80112233445');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2020-08-08','2022-08-08');

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Zuzanna', 'Długa', '1998-08-08', '555678333', 'zuzia@example.com', 'Gdańsk', 'ul.Gdańska 13', '80112233444');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2010-08-08',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Magda', 'Kwaitkowska', '2000-08-08', '345678977', 'magda@example.com', 'Kraków', 'ul.Krótka 13', '70112233445');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'1999-10-08',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Mateusz', 'Henio', '1998-08-08', '345678222', 'mateusz@example.com', 'Warszawa', 'ul.Słupska 13', '80112234445');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2020-10-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Tomasz', 'Kaszubowski', '2004-11-11', '345678777', 'tomek@example.com', 'Warszawa', 'ul.Gołębia 13', '99112233445');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2020-10-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Grzegorz', 'Ziel', '2000-08-08', '345678111', 'grzegorz1@example.com', 'Słupsk', 'ul.Kwaitowa 13', '80112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2011-08-09',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Weronika', 'Kot', '2003-08-08', '995678111', 'werka11@example.com', 'Słupsk', 'ul.Kwaitowa 13', '99112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2011-08-09',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Alicja', 'Kot', '2000-08-08', '885678111', 'ala1@example.com', 'Słupsk', 'ul.Kwaitowa 13', '88112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2011-08-09',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Wiktoria', 'Kot', '1999-10-08', '775678111', 'wiktoria1@example.com', 'Koszalin', 'ul.Kwaitowa 13', '77112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2012-08-09',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Jacek', 'Kochanowski', '1989-10-08', '665678111', 'jacek1@example.com', 'Słupsk', 'ul.Kwaitowa 13', '66112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2010-08-09',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Adam', 'Kochanowski', '1989-10-08', '555678111', 'adam1@example.com', 'Zakopane', 'ul.Kwaitowa 13', '55112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2010-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Jakub', 'Kucharski', '1988-10-08', '445678111', 'jakub1@example.com', 'Zakopane', 'ul.Morska 13', '44112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2010-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Patrycja', 'Dzika', '1989-10-08', '335678111', 'patrycja1@example.com', 'Kraków', 'ul.Polna 13', '33112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2000-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Piotr', 'Trzebiastowski', '1989-10-08', '225678111', 'piotr1@example.com', 'Zakopane', 'ul.Kwiatowa 13', '22112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2000-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Agnieszka', 'Żmuda', '1989-10-08', '115678111', 'agnieszka1@example.com', 'Zakopane', 'ul.Prosta 22', '11112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2011-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Agnieszka', 'Koterba', '1989-10-08', '005678111', 'agmieszka1@example.com', 'Sopot', 'ul.Prosta 22', '10112233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2011-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Bartosz', 'Żmuda', '1989-10-08', '999678111', 'bartek1@example.com', 'Zakopane', 'ul.Prosta 22', '99912233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2011-08-10',null);

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values ('Lena', 'Strasser', '2000-10-08', '888678111', 'bartek1@example.com', 'Zakopane', 'ul.Prosta 22', '88812233441');
set @id_osoby = scope_identity()
insert into pilot
	values(@id_osoby,'2023-08-10',null);

--osoby, które tylko zarezerwowały wycieczkę

insert into osoba (imie, nazwisko, data_urodzenia, numer_telefonu, email, miejscowosc, ulica_i_numer, pesel)
	values 
		('Agnieszka', 'Koterba', '1989-10-08', '000000000', NULL, 'Sopot', 'ul.Prosta 22', '10112233000'),
		('Bartosz', 'Żmuda', '1989-10-08', '111111111', NULL, 'Zakopane', 'ul.Prosta 22', '99912230001'),
		('Lena', 'Strasser', '2000-10-08', '222222111', NULL, 'Zakopane', 'ul.Prosta 22', '88812233000');

insert into typ_atrakcji(typ)
values
	('rozrywkowe'),
	('kulturalne'),
	('sportowe'),
	('dla dzieci'),
	('plażowe'),
	('kino'),
	('degustacja jedzenia'),
	('degustacja wina'),
	('rejs'),
	('inne');

insert into status_realizacji(stan)
values
	('do zrealizowania'),
	('w trakcie realizacji'),
	('zakończona');


insert into powod_rezygnacji(powod)
values
	('smierć'),
	('choroba'),
	('zmiana planów'),
	('inne');

insert into kraj_dzialalnosci (nazwa_kraju, liczebnosc, imie_przedstawiciela, nazwisko_przedstawiciela)
values
    ('Polska', 40000000, 'Adam', 'Nowak'),
    ('Niemcy', 83000000, 'Anna', 'Schmidt'),
    ('Francja', 67000000, 'Pierre', 'Dub'),
    ('Włochy', 60000000, 'Giuseppe', 'Rossi'),
    ('Hiszpania', 47000000, 'Sofia', 'Lopez'),
    ('Wielka Brytania', 66000000, 'James', 'Smith'),
    ('Czechy', 144000000, 'Maciek', 'Ivanov'),
    ('Portugalia', 1400000000, 'We', 'Chen'),
    ('Grecja', 330000000, 'Emily', 'Johnson'),
    ('Holandia', 126000000, 'Alex', 'Russo');

insert into hotel (nazwa_hotelu, numer_telefonu, email, miejscowosc, ulica_i_numer, imie_wlasciciela, nazwisko_wlasciciela)
values
    ('Hotel Eiffel Tower', '123456789', 'eiffelhotel@example.com', 'Paryż', 'ul. Avenue des Champs-Élysées 1', 'Antoine', 'Lefèvre'),
    ('Colosseum Palace', '987654321', 'colosseumhotel@example.com', 'Rzym', 'ul. Via dei Fori Imperiali 2', 'Giulia', 'Conti'),
    ('Sagrada Familia Residence', '111222333', 'sagradahotel@example.com', 'Barcelona', 'ul. Carrer de Mallorca 3', 'Miguel', 'Gómez'),
    ('Brandenburg Grand Hotel', '444555666', 'brandenburghotel@example.com', 'Berlin', 'ul. Unter den Linden 4', 'Anna', 'Schmidt'),
    ('London Tower View Hotel', '777888999', 'londontowerhotel@example.com', 'Londyn', 'ul. Tower Hill 5', 'James', 'Brown'),
    ('Amsterdam Canalside Inn', '555666777', 'amsterdamcanalhotel@example.com', 'Amsterdam', 'ul. Keizersgracht 6', 'Sophie', 'van der Berg'),
    ('Parisian Riviera Hotel', '876543210', 'parisianrivierahotel@example.com', 'Paryż', 'ul. Promenade des Anglais 7', 'Claire', 'Leroux'),
    ('Roman Holiday Suites', '123456788', 'romanholidayhotel@example.com', 'Rzym', 'ul. Via del Corso 8', 'Luigi', 'Ricci'),
    ('Barcelona Seafront Resort', '333444555', 'barcelonaseahotel@example.com', 'Barcelona', 'ul. Passeig Marítim 9', 'Eva', 'Martínez'),
    ('Berlin Skyline Plaza Hotel', '666777888', 'berlinskylinehotel@example.com', 'Berlin', 'ul. Potsdamer Platz 10', 'Klaus', 'Schneider'),
    ('London West End Retreat', '123456787', 'londonwestendhotel@example.com', 'Londyn', 'ul. Leicester Square 11', 'Alice', 'Taylor'),
    ('Amsterdam Red Light Boutique', '321654987', 'amsterdamredlighthotel@example.com', 'Amsterdam', 'ul. Oudezijds Achterburgwal 12', 'Hans', 'van der Valk'),
    ('Montmartre Charm Hotel', '789012345', 'montmartrecharmhotel@example.com', 'Paryż', 'ul. Rue Lepic 14', 'Isabelle', 'Lefèvre'),
    ('Vatican View Suites', '321654988', 'vaticanviewhotel@example.com', 'Rzym', 'ul. Via della Conciliazione 15', 'Giovanni', 'Rossi'),
    ('Barcelona Gothic Quarter Hotel', '987655321', 'barcelonagothichotel@example.com', 'Barcelona', 'ul. Carrer del Bisbe 16', 'Carmen', 'García'),
    ('Checkpoint Charlie Hotel', '654987321', 'checkpointcharliehotel@example.com', 'Berlin', 'ul. Friedrichstraße 17', 'Helga', 'Müller'),
    ('London Thames Riverside Hotel', '987321654', 'londonriversidehotel@example.com', 'Londyn', 'ul. Albert Embankment 18', 'George', 'Smith'),
    ('Amsterdam Windmill Retreat', '654987329', 'amsterdamwindmillhotel@example.com', 'Amsterdam', 'ul. Zaanse Schans 19', 'Willem', 'van den Berg'),
    ('Louvre Rivoli Suites', '654987332', 'louvrerivolisuites@example.com', 'Paryż', 'ul. Rue de Rivoli 20', 'Charlotte', 'Leroux'),
    ('Rome Trastevere Hideaway', '654987322', 'rometrasteverehotel@example.com', 'Rzym', 'ul. Via di Trastevere 21', 'Francesca', 'Moretti'),
	('Athenian Palace Hotel', '888888888', 'athenian.palace@example.com', 'Ateny', 'ul. Grecja 2', 'Elena', 'Papadopoulos'),
	 ('Hotel Praga Central', '999999999', 'praga.central@example.com', 'Praga', 'ul. Centralna 1', 'Piotr', 'Nowak');

insert into atrakcja (nazwa_atrakcji, cena, id, miejscowosc, ulica_i_numer, max_liczba_uczestnikow)
values
    ('Wieża Eiffla', 20.00, 2, 'Paryż', 'ul. Wieżowa 1', 50),
    ('Koloseum', 25.00, 2, 'Rzym', 'ul. Gladiatorska 2', 50),
    ('Bazylika Sagrada Família', 30.00, 3, 'Barcelona', 'ul. Świętej Rodziny 3', 20),
    ('Rejs po Kanałach Amsterdamu', 15.00, 3, 'Amsterdam', 'ul. Wodna 4', 80),
    ('British Museum Tour', 18.00, 2, 'Londyn', 'ul. Historyczna 5', 100),
    ('Spacer po Murze Berlińskim', 10.00, 2, 'Berlin', 'ul. Historyczna 6', 15),
    ('Akropol zwiedzanie', 22.00, 2, 'Ateny', 'ul. Starożytna 7', 50),
    ('Wieczór w Luwrze', 25.00, 2, 'Paryż', 'ul. Malarska 8', 30),
    ('Fontanna di Trevi nocą', 12.00, 2, 'Rzym', 'ul. Fontannowa 9', 40),
    ('Park Güell zwiedzanie', 20.00, 2, 'Barcelona', 'ul. Parkowa 10', 50),
    ('Muzeum Sztuki ekspozycja', 15.00, 3, 'Amsterdam', 'ul. Artystyczna 11', 30),
    ('Tower of London nocą', 18.00, 3, 'Londyn', 'ul. Wieżowa 12', 50),
    ('Zamek Charlottenburg wizyta', 14.00, 1, 'Berlin', 'ul. Zamkowa 13', 40),
    ('Wieczór w Akropolu', 30.00, 2, 'Ateny', 'ul. Górska 14', 50),
    ('Muzeum Orsay wystawa', 25.00, 3, 'Paryż', 'ul. Artystyczna 15', 30),
    ('Koloseum zwiedzanie nocą', 12.00, 3, 'Rzym', 'ul. Starożytna 16', 40),
    ('La Rambla spacer', 8.00, 2, 'Barcelona', 'ul. Morska 17', 50),
    ('Muzeum Van Gogha wystawa', 15.00, 2, 'Amsterdam', 'ul. Artystyczna 18', 50),
    ('Natural History Museum oprowadzanie', 18.00, 2, 'Londyn', 'ul. Brytyjska 19', 50),
    ('East Side Gallery mur', 10.00, 3, 'Berlin', 'ul. Wschodnia 20', 50),
	('Plac Wacława', 15.00, 3, 'Praga', 'ul. Wacława 1', 50),
    ('Zamek Praski', 20.00, 3, 'Praga', 'ul. Zamkowa 2', 50);

insert into wycieczka (miejsce_docelowe, nazwa_wycieczki, data_rozpoczecia, data_zakonczenia, godzina_rozpoczecia, godzina_zakonczenia, max_ilosc_uczestnikow, cena, koszt_organizacji, nazwa_kraju, id_pracownika)
values
	('Paryż', 'Wspaniała Wycieczka do Paryża', '1999-06-01', '1999-06-10', '08:00:00', '18:00:00', 50, 1500.00, 5000.00, 'Francja', 22),
    ('Paryż', 'Wspaniała Wycieczka do Paryża', '2003-06-01', '2003-06-10', '08:00:00', '18:00:00', 50, 1500.00, 5000.00, 'Francja', 25),
    ('Rzym', 'Odkrywanie Starożytnego Rzymu', '2003-07-15', '2003-07-25', '09:30:00', '19:30:00', 40, 2000.00, 6000.00, 'Włochy', 25),
    ('Barcelona', 'Zwiedzanie Barcelony', '2023-08-10', '2023-08-20', '10:00:00', '20:00:00', 30, 1800.00, 5500.00, 'Hiszpania', 28),
    ('Londyn', 'Londyńska Przygoda', '2023-09-05', '2023-09-15', '11:00:00', '21:00:00', 45, 1700.00, 5200.00, 'Wielka Brytania', 24),
    ('Berlin', 'Spotkanie z Historią w Berlinie', '2023-10-20', '2023-10-30', '12:30:00', '22:30:00', 55, 1600.00, 5300.00, 'Niemcy', 25),
    ('Praga', 'Magiczna Praga', '2023-11-12', '2023-11-22', '13:00:00', '23:00:00', 35, 1900.00, 5800.00, 'Czechy', 26),
    ('Amsterdam', 'Amsterdam - Miasto Kanałów', '2023-12-03', '2023-12-13', '14:30:00', '00:30:00', 60, 2200.00, 6500.00, 'Holandia', 27),
    ('Ateny', 'Odkrywanie Starożytnych Aten', '2024-03-18', '2024-03-28', '15:00:00', '01:00:00', 48, 2100.00, 6300.00, 'Grecja', 28),
    ('Rzym', 'Odkrywanie Starożytnego Rzymu', '2023-07-15', '2023-07-25', '09:30:00', '19:30:00', 40, 2000.00, 6000.00, 'Włochy', 27),
	 ('Paryż', 'Wspaniała Wycieczka do Paryża', '2023-06-01', '2023-06-10', '08:00:00', '18:00:00', 50, 1500.00, 5000.00, 'Francja', 25),
    ('Rzym', 'Odkrywanie Starożytnego Rzymu', '2023-07-15', '2023-07-25', '09:30:00', '19:30:00', 40, 2000.00, 6000.00, 'Włochy', 27),
    ('Barcelona', 'Zwiedzanie Barcelony', '2023-08-10', '2023-08-20', '10:00:00', '20:00:00', 30, 1800.00, 5500.00, 'Hiszpania', 30),
    ('Londyn', 'Londyńska Przygoda', '2023-09-05', '2023-09-15', '11:00:00', '21:00:00', 45, 1700.00, 5200.00, 'Wielka Brytania', 31),
    ('Berlin', 'Spotkanie z Historią w Berlinie', '2024-10-20', '2024-10-30', '12:30:00', '22:30:00', 55, 1600.00, 5300.00, 'Niemcy', 25),
    ('Praga', 'Magiczna Praga', '2024-11-12', '2024-11-22', '13:00:00', '23:00:00', 35, 1900.00, 5800.00, 'Czechy', 26),
    ('Amsterdam', 'Amsterdam - Miasto Kanałów', '2024-12-03', '2024-12-13', '14:30:00', '00:30:00', 60, 2200.00, 6500.00, 'Holandia', 27),
    ('Ateny', 'Odkrywanie Starożytnych Aten', '2024-01-18', '2024-01-28', '15:00:00', '01:00:00', 48, 2100.00, 6300.00, 'Grecja', 28),
    ('Rzym', 'Odkrywanie Starożytnego Rzymu', '2024-07-15', '2024-07-25', '09:30:00', '19:30:00', 40, 2000.00, 6000.00, 'Włochy', 38),
	('Londyn', 'Londyńska Przygoda', '2023-09-05', '2023-09-15', '11:00:00', '21:00:00', 15, 1700.00, 5200.00, 'Wielka Brytania', 29),
    ('Berlin', 'Spotkanie z Historią w Berlinie', '2024-10-20', '2024-10-30', '12:30:00', '22:30:00', 55, 1600.00, 5300.00, 'Niemcy', 25);

insert into rezerwacja (data_rezerwacji, kwota, oplacone, id_wycieczki, id_osoby,id_statusu)
values
    ('2023-06-01', 3000.00, 'tak', 1, 1,1),
    ( '2023-07-15', 2000.00, 'tak', 2, 2,2),
    ( '2023-08-10', 1800.00, 'tak', 3, 3,3),
    ( '2023-09-05', 1700.00, 'nie', 4, 4,2),
    ('2023-10-20', 1600.00, 'tak', 5, 5,2),
    ( '2023-11-12', 1900.00, 'tak', 6, 6,3),
    ( '2023-12-03', 2200.00, 'tak', 7, 7,1),
    ('2024-01-18', 2100.00, 'tak', 8, 8,2),
    ( '2024-02-22', 2000.00, 'tak', 9, 9,3),
    ( '2024-04-08', 1500.00, 'nie', 10, 10,1),
    ( '2024-05-14', 2000.00, 'tak', 11, 11,2),
    ( '2024-06-30', 1800.00, 'tak', 12, 12,3),
    ( '2024-08-05', 1700.00, 'tak', 13, 13,1),
    ( '2024-09-20', 1600.00, 'tak', 14, 14,2),
    ('2024-10-25', 1900.00, 'tak', 15, 15,3),
    ('2024-11-30', 2200.00, 'nie', 16, 16,2),
    ( '2025-01-15', 2100.00, 'tak', 17, 41,2),
    ( '2025-02-20', 2000.00, 'tak', 18, 18,3),
    ( '2025-04-05', 1700.00, 'tak', 19, 42,1),
    ( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2),
	( '2025-05-10', 1700.00, 'tak', 20, 43,2);

insert into rezygnacja ( data_rezygnacji, id_powodu, zwrot_kosztow, id_rezerwacji, id_statusu)
values
    ( '2023-07-15', 3, 'nie', 2,2),
    ( '2023-08-10', 4, 'tak', 3,3),
    ( '2023-09-05', 3, 'nie', 4,1),
	( '2023-09-05', 3, 'nie', 20,1);
    /*( '2023-10-20', 2, 'tak', 5,2),
    ( '2023-11-12', 4, 'nie', 6,3),
    ( '2023-12-03', 1, 'tak', 7,2),
    ( '2024-01-18', 3, 'nie', 8,2),
    ( '2024-02-22', 4, 'tak', 9,3),
    ( '2024-04-08', 2, 'tak', 10,1),
    ( '2024-05-14',3, 'tak', 11,2),
    ( '2024-06-30', 4, 'nie', 12,3),
    ( '2024-08-05', 1, 'tak', 13,1),
    ( '2024-09-20', 3, 'nie', 14,2),
    ( '2024-10-25', 4, 'tak', 15,3),
    ( '2024-11-30', 2, 'tak', 16,2),
    ( '2025-01-15', 3, 'tak', 17,2),
    ('2025-02-20', 4, 'nie', 18,3),
    ( '2025-04-05', 1, 'tak', 19,1),
    ( '2025-05-10', 4, 'nie', 20,2);*/

insert into kwaterowanie (id_hotelu, id_wycieczki, data_zakwaterowania, data_wykwaterowania)
values
    (1, 1, '1999-06-01', '1999-06-10'),
    (2, 2, '2003-06-01', '2003-06-10'),
    (3, 3, '2003-07-15', '2003-07-25'),
    (4, 5, '2023-04-15', '2023-04-25'),
    (1, 4, '2023-05-20', '2023-05-30'),
    (6, 7, '2023-06-25', '2023-07-05'),
    (7, 10, '2023-07-30', '2023-08-09'),
    (8, 20, '2023-08-14', '2023-08-24'),
    (9, 9, '2023-09-19', '2023-09-29'),
    (10, 3, '2023-10-24', '2023-11-03'),
    (11, 20, '2023-11-08', '2023-11-18'),
    (12, 19, '2023-12-13', '2023-12-23'),
    (13, 17, '2024-01-17', '2024-01-27'),
    (14, 2, '2024-02-21', '2024-03-02'),
    (15, 3, '2024-03-27', '2024-04-06'),
    (16, 5, '2024-04-30', '2024-05-10'),
    (17, 4, '2024-05-05', '2024-05-15'),
    (18, 7, '2024-06-10', '2024-06-20'),
    (19, 10, '2024-07-15', '2024-07-25'),
    (20, 18, '2024-08-20', '2024-08-30');

insert into dane_w_rezerwacji (id_osoby, id_rezerwacji)
values
    (1, 1),
	(10, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
	(19, 21),
	(18, 22),
	(17, 23),
	(16, 24),
	(15, 25),
	(14, 26),
	(13, 27),
	(12, 28),
	(11, 29),
	(10, 30),
	(9, 31);
insert into atrakcja_w_planie (id_wycieczki, nazwa_atrakcji)
values
    (1, 'Wieża Eiffla'),
	(1,'Wieczór w Luwrze'),
    (2, 'Koloseum'),
    (3, 'Bazylika Sagrada Família'),
    (4, 'Tower of London nocą'),
    (5, 'Spacer po Murze Berlińskim'),
    (6, 'Plac Wacława'),
	(6, 'Zamek Praski'),
    (7, 'Rejs po Kanałach Amsterdamu'),
    (8, 'Wieczór w Akropolu'),
    (9, 'Koloseum'),
    (10, 'Muzeum Orsay wystawa'),
    (11, 'Fontanna di Trevi nocą'),
    (12, 'La Rambla spacer'),
    (13, 'British Museum Tour'),
    (14, 'East Side Gallery mur'),
    (15, 'Plac Wacława'),
    (16, 'Rejs po Kanałach Amsterdamu'),
    (17, 'Akropol zwiedzanie'),
    (18, 'Fontanna di Trevi nocą'),
    (19, 'Tower of London nocą'),
    (20, 'East Side Gallery mur');

/*select * from osoba;
select * from uczestnik;
select * from pilot;
select * from wycieczka;
select * from atrakcja_w_planie;
select * from atrakcja;
select * from kraj_dzialalnosci;
select * from hotel;
select * from kwaterowanie;
select * from rezerwacja;
select * from rezygnacja;
select * from dane_w_rezerwacji;*/
