use sakila;

SELECT country.country, count(city.country_id) as total_number_of_costumer FROM country INNER JOIN city on country.country_id = city.country_id GROUP BY country.country;

SELECT country.country, city.city, COUNT(customer.customer_id) FROM city inner JOIN country on country.country_id = city.country_id LEFT join address on city.city_id = address.city_id left join customer on customer.address_id = address.address_id GROUP BY city.city_id ORDER BY country.country;

select date_format(payment_date, '%M-%Y') as month_year, sum(amount) as total_rental_month, count(*) as total_trascation, avg(amount) as Average_rental_amount from payment GROUP by date_format(payment_date, '%M-%Y') order by payment_date;

select date_format(payment_date, '%i %p') AS hour_of_the_day ,sum(amount) as total_payment_recieved from payment GROUP BY date_format(payment_date, '%i %p');