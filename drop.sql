use biuro_podrozy

drop table kwaterowanie;
drop table atrakcja_w_planie;
drop table dane_w_rezerwacji;
drop table rezygnacja;
drop table rezerwacja;
drop table wycieczka;
drop table kraj_dzialalnosci;
drop table hotel;
drop table pilot;
drop table uczestnik;
drop table osoba;
drop table atrakcja;
drop table typ_atrakcji;
drop table status_realizacji;
drop table powod_rezygnacji;

drop function dbo.ischar;
drop function dbo.isphonenumber;
drop function dbo.iscityorcountry;
drop function dbo.isemail;

drop view dbo.WidokListaUczestnikow;
drop view dbo.WidokPowodyRezygnacji;
drop view dbo.WidokDostepneWycieczki;
drop view dbo.WidokIloscWycieczekPilotow;
drop view dbo.WidokZyskiKrajow;