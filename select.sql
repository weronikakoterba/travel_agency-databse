use biuro_podrozy;

/*1. Klient podczas swojej wycieczki straci� sw�j baga�, pami�ta �e ostatnio go widzia� w
hotelu, znajdz numer telefonu hotelu w kt�rym ten klient zosta� zakwaterowany w
celu zapytania si� czy jaki� przedmiot zosta� pozostawiony.*/

select *
from osoba o
join dane_w_rezerwacji dr on o.id_osoby = dr.id_osoby
join rezerwacja r on dr.id_rezerwacji=r.id_rezerwacji
join kwaterowanie k on r.id_wycieczki = k.id_wycieczki
join hotel h on k.id_hotelu = h.id_hotelu


select distinct h.numer_telefonu as NumerTelefonuHotelu
from osoba o
join dane_w_rezerwacji dr on o.id_osoby = dr.id_osoby
join rezerwacja r on dr.id_rezerwacji=r.id_rezerwacji
join kwaterowanie k on r.id_wycieczki = k.id_wycieczki
join hotel h on k.id_hotelu = h.id_hotelu
where o.id_osoby = 19 and k.data_wykwaterowania = '2023-08-24';

/*2. Analitycy zastanawiaj� si� nad zwi�kszeniem max. liczby uczestnik�w na kilku
wycieczkach i potrzebuj� zestawienie wycieczek, gdzie min po�owa miejsc by�a zaj�ta, dla
u�atwienia analizy wycieczki powinny by� posortowane malej�co wzgl�dem liczby
uczestnik�w.*/

select *
from wycieczka w
    left join rezerwacja r on w.id_wycieczki = r.id_wycieczki
	left join dane_w_rezerwacji dr on r.id_rezerwacji=dr.id_rezerwacji
    left join osoba o on dr.id_osoby = o.id_osoby


select w.*,LiczbaUczestnikow
from wycieczka w
join (
    select w.id_wycieczki, count(o.id_osoby) as LiczbaUczestnikow
    from wycieczka w
    left join rezerwacja r on w.id_wycieczki = r.id_wycieczki
	left join dane_w_rezerwacji dr on r.id_rezerwacji=dr.id_rezerwacji
    left join osoba o on dr.id_osoby = o.id_osoby
	where r.id_rezerwacji not in (select id_rezerwacji from rezygnacja)
    group by w.id_wycieczki
) LiczbaUczestnikow on w.id_wycieczki = LiczbaUczestnikow.id_wycieczki
where LiczbaUczestnikow.LiczbaUczestnikow >= w.max_ilosc_uczestnikow / 2
order by LiczbaUczestnikow desc;


/*3. Potrzeba okre�li� najbardziej zyskowny kraj docelowy wycieczek z ostatniego roku, w tym
celu nale�y przedstawi� zestawienie kraj�w wraz ich rocznymi zyskami biura z wycieczek
w nich si� odbywaj�cych, posortowane malej�ce wzgl�dem owych zysk�w.*/

select *
from wycieczka w
join rezerwacja r on w.id_wycieczki = r.id_wycieczki
left join rezygnacja rr on r.id_rezerwacji=rr.id_rezerwacji

go
create view WidokZyskiKrajow as
select w.nazwa_kraju as KrajDocelowy, sum(r.kwota) as RoczneZyski
from wycieczka w
join rezerwacja r on w.id_wycieczki = r.id_wycieczki
left join rezygnacja rr on r.id_rezerwacji=rr.id_rezerwacji
where year(w.data_rozpoczecia) >= year(getdate()) - 1 and year(w.data_rozpoczecia) <= year(getdate())
and r.oplacone = 'tak' and (rr.id_rezygnacji is null  or rr.zwrot_kosztow='tak')
group by w.nazwa_kraju
go

select top 1 *
from WidokZyskiKrajow
order by RoczneZyski desc;

/*4. Z okazji kolejnego dziesi�ciolecia pracy biuro podr�y chce wr�czy� nagrody pilotom, kt�rzy poprowadzili najwi�cej wycieczek.
przez ten okres i tym samym podzi�kowa� im za prac�. W tym celu znajd� dw�ch najbardziej aktywnych pilot�w.*/

select *
from pilot p
join osoba o on p.id_pracownika = o.id_osoby
join wycieczka w on p.id_pracownika = w.id_pracownika

go
create view WidokIloscWycieczekPilotow as
select p.id_pracownika, o.imie, o.nazwisko, count(p.id_pracownika) as LiczbaWycieczek
from pilot p
join osoba o on p.id_pracownika = o.id_osoby
join wycieczka w on p.id_pracownika = w.id_pracownika
where p.data_zwolnenia is null and year(w.data_rozpoczecia) >= year(getdate()) - 10
group by p.id_pracownika,o.imie, o.nazwisko
go

select top 2 *
from WidokIloscWycieczekPilotow
order by LiczbaWycieczek desc;


/*5. Do biura podr�y dzwoni potencjalny klinet, kt�ry chcia�by dowied� si� na jakie wycieczki mo�e sie wybra� 
w podanym przez siebie terminie oraz pozan� cenie za osob�, nale�y przedstawi� mu odpowiedni� wycieczk�.
W tym celu potrzebne jest zestawienie wszystkich wycieczek, gdzie liczba uczestnik�w jest mniejsza 
ni� maksymalna liczba os�b i mieszcz� si� one w podanym przedziale czasowym */

select *
    from wycieczka w
    left join rezerwacja r on w.id_wycieczki = r.id_wycieczki
	left join dane_w_rezerwacji dr on r.id_rezerwacji=dr.id_rezerwacji
    left join osoba o on dr.id_osoby = o.id_osoby

go 
create view WidokDostepneWycieczki as
select w.*, LiczbaUczestnikow, w.cena as KosztWycieczik
from wycieczka w
join (
    select w.id_wycieczki, count(o.id_osoby) as LiczbaUczestnikow
    from wycieczka w
    left join rezerwacja r on w.id_wycieczki = r.id_wycieczki
	left join dane_w_rezerwacji dr on r.id_rezerwacji=dr.id_rezerwacji
    left join osoba o on dr.id_osoby = o.id_osoby
	where r.id_rezerwacji not in (select id_rezerwacji from rezygnacja)
    group by w.id_wycieczki
) uczestnicy on w.id_wycieczki = uczestnicy.id_wycieczki
where uczestnicy.LiczbaUczestnikow < w.max_ilosc_uczestnikow
go

select *
from WidokDostepneWycieczki
where data_rozpoczecia >= '2024-01-01' and data_zakonczenia <= '2024-12-31'
order by cena asc

/*6. Aby mo� poprawnie przeprowadzi� wycieczk� pilot przed jej rozpocz�ciem powinien sprawdzi� czy wszystkim uczestnikom
uda�o si� dotrze� na miejsce zbi�rki. W tym celu nale�y sporz�dzi� liste wszystkich uczestnik�w wycieczki o podanym id.*/

select *
from rezerwacja r
join dane_w_rezerwacji dr on r.id_rezerwacji=dr.id_rezerwacji
join osoba o on dr.id_osoby = o.id_osoby

go
create view WidokListaUczestnikow as
select r.id_wycieczki, o.id_osoby, o.imie, o.nazwisko, o.numer_telefonu, o.email
from rezerwacja r
join dane_w_rezerwacji dr on r.id_rezerwacji=dr.id_rezerwacji
join osoba o on dr.id_osoby = o.id_osoby
where r.id_rezerwacji not in (select id_rezerwacji from rezygnacja)
go

select *
from WidokListaUczestnikow
where id_wycieczki = 20
order by nazwisko, imie

/*7. Prezes biura podr�y chce zna� najcz�stsz� przyczyn� rezygnacji z wycieczek, aby m�c jak najlepiej
chroni� si� przed strat� zysk�w z jej powodu. Nale�y go przedstawi� */

select *
from powod_rezygnacji pr
join rezygnacja r on pr.id = r.id_powodu

go
create view WidokPowodyRezygnacji as
select pr.powod, count(r.id_rezygnacji) as LiczbaRezygnacji
from powod_rezygnacji pr
join rezygnacja r on pr.id = r.id_powodu
where year(r.data_rezygnacji) between year(getdate()) - 5 and year(getdate())
group by pr.powod
go

select top 1 * 
from WidokPowodyRezygnacji
order by LiczbaRezygnacji desc;
	



