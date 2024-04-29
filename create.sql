use biuro_podrozy

go
create function ISCHAR(@string varchar(50))
returns bit as
begin
	declare @result bit = 0
	if @string like REPLICATE('[A-Za-z¥¹ÆæÊê£³ÑñÓóŒœŸ¯¿ -]', LEN(@string))
		set @result = 1
	return @result
end
go

create function ISPHONENUMBER (@dane char(9))
returns bit as
begin
    declare @result bit = 0;
    if len(@dane) = 9 and @dane not like '%[^0-9]%'
        set @result = 1;
    return @result;
end
go

create function ISCITYORCOUNTRY(@dane varchar(50))
returns bit as
begin
    declare @result bit = 0;
    if @dane not like '%[^A-Za-z¥¹ÆæÊê£³ÑñÓóŒœŸ¯¿ -]%' and @dane not like '%[0-9]%'
        set @result = 1;
    return @result;
end
go

create function ISEMAIL(@email varchar(255))
returns bit as
begin
    declare @result bit = 0;
    if @email like '%[^A-Z0-9._\+@-]%' or
       @email not like '%[@]%[.]%' or
       len(@email) > 255
        set @result = 0;
    else
        set @result = 1;
    return @result;
end
go

create table osoba(
id_osoby int primary key identity(1,1) check(id_osoby>0 and id_osoby<150000),
imie varchar(20) not null,
nazwisko varchar(20) not null,
data_urodzenia date not null,
numer_telefonu char(9) not null unique check(dbo.ISPHONENUMBER(numer_telefonu)=1),
email varchar(255) check(dbo.ISEMAIL(email)=1),
miejscowosc varchar(50) not null check(dbo.ISCITYORCOUNTRY(miejscowosc)=1),
ulica_i_numer varchar(50) not null check(ulica_i_numer like 'ul.% [0-9]%'),
pesel char(11) unique check(len(pesel) = 11 and pesel not like '%[^0-9]%')
)

create table kraj_dzialalnosci(
nazwa_kraju varchar(50) primary key check(dbo.ISCITYORCOUNTRY(nazwa_kraju)=1),
liczebnosc int check(liczebnosc>0),
imie_przedstawiciela varchar(20) not null,
nazwisko_przedstawiciela varchar(20) not null
)

create table hotel(
id_hotelu int primary key identity(1,1) check(id_hotelu>0 and id_hotelu<200),
nazwa_hotelu varchar(255) not null,
numer_telefonu char(9) unique not null check(dbo.ISPHONENUMBER(numer_telefonu)=1),
email varchar(255) unique not null check(dbo.ISEMAIL(email)=1),
miejscowosc varchar(50) not null check(dbo.ISCITYORCOUNTRY(miejscowosc)=1),
ulica_i_numer varchar(50) not null check(ulica_i_numer like 'ul.% [0-9]%'),
imie_wlasciciela varchar(20) not null,
nazwisko_wlasciciela varchar(255) not null 
)

create table pilot(
id_pracownika int primary key check(id_pracownika>0 and id_pracownika<150000),
data_zatrudnienia date not null,
data_zwolnenia date, 
foreign key (id_pracownika) references osoba (id_osoby) on delete cascade
)

create table uczestnik(
id_uczestnika int primary key check(id_uczestnika>0 and id_uczestnika<150000),
numer_dowodu varchar(10) unique not null check (numer_dowodu not like '%[^A-Za-z0-9]%'),
numer_paszportu varchar(10) unique not null check (numer_paszportu not like '%[^A-Za-z0-9]%'),
foreign key (id_uczestnika) references osoba (id_osoby) on delete cascade
)

create table wycieczka(
id_wycieczki int primary key IDENTITY(1,1) check(id_wycieczki>0 and id_wycieczki<5000),
miejsce_docelowe varchar(50) not null check(dbo.ISCITYORCOUNTRY(miejsce_docelowe)=1),
nazwa_wycieczki	varchar(50) not null,
data_rozpoczecia date not null,
data_zakonczenia date not null,
godzina_rozpoczecia time not null,
godzina_zakonczenia time not null,
max_ilosc_uczestnikow int not null check(max_ilosc_uczestnikow>0 and max_ilosc_uczestnikow<=100),
cena money not null check(cena>0),
koszt_organizacji money not null check(koszt_organizacji>0),
nazwa_kraju varchar(50) not null check(dbo.ISCITYORCOUNTRY(nazwa_kraju)=1),
id_pracownika int not null check(id_pracownika>0 and id_pracownika<150000),
foreign key (nazwa_kraju) references kraj_dzialalnosci(nazwa_kraju) on update cascade,
foreign key (id_pracownika) references pilot(id_pracownika) on delete no action 
)

create table kwaterowanie(
id_hotelu int check(id_hotelu>0 and id_hotelu<200),
id_wycieczki int check(id_wycieczki>0 and id_wycieczki<5000),
data_zakwaterowania date not null,
data_wykwaterowania date not null,
foreign key(id_hotelu) references hotel(id_hotelu) on delete cascade,
foreign key(id_wycieczki) references wycieczka(id_wycieczki) on delete cascade,
)

create table typ_atrakcji(
id int primary key IDENTITY(1,1),
typ varchar(30)
)

create table atrakcja(
nazwa_atrakcji varchar(255) primary key,
cena money not null,
id int,
miejscowosc varchar(50) not null check(dbo.ISCITYORCOUNTRY(miejscowosc)=1),
ulica_i_numer varchar(50) not null check(ulica_i_numer like 'ul.% [0-9]%'),
max_liczba_uczestnikow int not null check(max_liczba_uczestnikow>0 and max_liczba_uczestnikow<=100), 
foreign key(id) references typ_atrakcji(id) on delete cascade
)

create table atrakcja_w_planie(
id_wycieczki int check(id_wycieczki>0 and id_wycieczki<5000),
nazwa_atrakcji varchar(255),
foreign key(id_wycieczki) references wycieczka(id_wycieczki) on delete cascade,
foreign key(nazwa_atrakcji) references atrakcja(nazwa_atrakcji) on update cascade on delete cascade
) 

create table status_realizacji(
id int primary key IDENTITY(1,1),
stan varchar(30)
)

create table powod_rezygnacji(
id int primary key IDENTITY(1,1),
powod varchar(30)
)

create table rezerwacja(
id_rezerwacji int primary key identity(1,1) check(id_rezerwacji>0 and id_rezerwacji<100000),
data_rezerwacji date not null,
kwota money not null check(kwota>0),
oplacone varchar(3) not null check(oplacone IN ('tak', 'nie')),
id_wycieczki int not null check(id_wycieczki>0 and id_wycieczki<5000),
id_osoby int not null check(id_osoby>0 and id_osoby<150000),
id_statusu int
foreign key(id_wycieczki) references wycieczka(id_wycieczki) on delete cascade,
foreign key(id_osoby) references osoba(id_osoby) on delete no action,
foreign key(id_statusu) references status_realizacji(id) on delete cascade
)

create table rezygnacja(
id_rezygnacji int primary key IDENTITY(1,1) check(id_rezygnacji>0 and id_rezygnacji<100000),
data_rezygnacji date,
id_powodu int,
zwrot_kosztow varchar(3) check(zwrot_kosztow IN ('tak', 'nie')),
id_rezerwacji int not null check(id_rezerwacji>0 and id_rezerwacji<100000),
id_statusu int
foreign key(id_rezerwacji) references rezerwacja(id_rezerwacji) on delete cascade,
foreign key(id_statusu) references status_realizacji(id) on delete no action,--tutaj dodac inna tabele???
foreign key(id_powodu) references powod_rezygnacji(id) on delete cascade
)

create table dane_w_rezerwacji(
id_osoby int check(id_osoby>0 and id_osoby<150000),
id_rezerwacji int check(id_rezerwacji>0 and id_rezerwacji<100000),
foreign key(id_osoby) references uczestnik(id_uczestnika) on delete cascade,
foreign key(id_rezerwacji) references rezerwacja(id_rezerwacji) on delete cascade
)



