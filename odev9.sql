1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.


1.
Select city, country 
from city
inner join Country on city.country_id = Country.country_id;

2.
Select customer.first_name, customer.last_name
from customer
inner join payment on payment.customer_id = customer.customer_id;

3.
Select c.first_name, c.last_name, r.rental_id
from customer as c
inner join rental AS r on r.customer_id = c.customer_id;