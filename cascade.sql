use biuro_podrozy
delete from wycieczka where data_zakonczenia<dateadd(year,-10,getdate());--usuniecie wycieczek, które odby³y siê ponad 10 lat temu

delete from osoba where id_osoby in ( --usuniecie pilotów, którzy zostali zwolnieni siê ponad 10 lat temu
	select id_pracownika 
	from pilot 
	where data_zwolnenia<dateadd(year,-10,getdate()));


update atrakcja set nazwa_atrakcji='nowe' where nazwa_atrakcji='Bazylika Sagrada Família';
update kraj_dzialalnosci set nazwa_kraju='NowyKraj' where nazwa_kraju='W³ochy';
