use biuro_podrozy;

/*1. Klient podczas swojej wycieczki straci³ swój baga¿, pamiêta ¿e ostatnio go widzia³ w
hotelu, znajdz numer telefonu hotelu w którym ten klient zosta³ zakwaterowany w
celu zapytania siê czy jakiœ przedmiot zosta³ pozostawiony.*/

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

/*2. Analitycy zastanawiaj¹ siê nad zwiêkszeniem max. liczby uczestników na kilku
wycieczkach i potrzebuj¹ zestawienie wycieczek, gdzie min po³owa miejsc by³a zajêta, dla
u³atwienia analizy wycieczki powinny byæ posortowane malej¹co wzglêdem liczby
uczestników.*/

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


/*3. Potrzeba okreœliæ najbardziej zyskowny kraj docelowy wycieczek z ostatniego roku, w tym
celu nale¿y przedstawiæ zestawienie krajów wraz ich rocznymi zyskami biura z wycieczek
w nich siê odbywaj¹cych, posortowane malej¹ce wzglêdem owych zysków.*/

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

/*4. Z okazji kolejnego dziesiêciolecia pracy biuro podró¿y chce wrêczyæ nagrody pilotom, którzy poprowadzili najwiêcej wycieczek.
przez ten okres i tym samym podziêkowaæ im za pracê. W tym celu znajdŸ dwóch najbardziej aktywnych pilotów.*/

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


/*5. Do biura podró¿y dzwoni potencjalny klinet, który chcia³by dowiedŸ siê na jakie wycieczki mo¿e sie wybraæ 
w podanym przez siebie terminie oraz pozanæ cenie za osobê, nale¿y przedstawiæ mu odpowiedni¹ wycieczkê.
W tym celu potrzebne jest zestawienie wszystkich wycieczek, gdzie liczba uczestników jest mniejsza 
ni¿ maksymalna liczba osób i mieszcz¹ siê one w podanym przedziale czasowym */

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

/*6. Aby moæ poprawnie przeprowadziæ wycieczkê pilot przed jej rozpoczêciem powinien sprawdziæ czy wszystkim uczestnikom
uda³o siê dotrzeæ na miejsce zbiórki. W tym celu nale¿y sporz¹dziæ liste wszystkich uczestników wycieczki o podanym id.*/

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

/*7. Prezes biura podró¿y chce znaæ najczêstsz¹ przyczynê rezygnacji z wycieczek, aby móc jak najlepiej
chroniæ siê przed strat¹ zysków z jej powodu. Nale¿y go przedstawiæ */

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
	



