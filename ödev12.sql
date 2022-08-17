1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
2. film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
3. film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


1.
select count(*) 
from film
Where length > any
(select avg(length) from film);

2.
select count(*) 
from film
Where rental_rate = any
(select max(rental_rate) from film);

3.
select * 
from film
Where 
rental_rate = (select min(rental_rate) from film) 
and
replacement_cost = (select min(replacement_cost) from film);

4.
select c.customer_id, c.first_name, count(*) from payment p
inner join customer c on p.customer_id = c.customer_id
group by c.customer_id
order by count(*) DESC