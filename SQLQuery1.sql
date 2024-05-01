-- A�a��da 3 adet se�ip birle�tirdi�imiz tabloyu tekrar tek sat�rda �a��rmak i�in hotels ad�nda tan�m�n� yapt�k.--
with hotels as (
select * from [dbo].['2018$']
union
select * from [dbo].['2019$']
union
select * from [dbo].['2020$'])

-- Burada yukar�daki birle�ik verilerin sonucunu g�rd�k. select * from hotels --


/*--  select Burada otellerin ne kadar kazand���n� y�llara g�re g�r�nt�ledik.
hotel,arrival_date_year,
round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue 
from hotels
group by arrival_date_year,hotel  -- */

--select * from [dbo].[market_segment$] Burada indirim oranlar�n� g�r�nt�leriz.--

select * from hotels
left join [dbo].[market_segment$]
on hotels.market_segment = market_segment$.market_segment
left join [dbo].[meal_cost$]
on meal_cost$.meal=hotels.meal
