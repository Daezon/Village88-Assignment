use sakila;

select * from customer; 

select * from customer inner join address on customer.address_id = address.address_id;

SELECT `customer_id`, `store_id`, `first_name`, `last_name`, `email`, address.`address`,city.city, `active`, `create_date`, customer.`last_update` FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id;

SELECT `customer_id`, `store_id`, `first_name`, `last_name`, `email`, address.`address`,city.city, country.country, `active`, `create_date`, customer.`last_update` FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id;

SELECT `customer_id`, `store_id`, `first_name`, `last_name`, `email`, address.`address`,city.city, country.country, `active`, `create_date`, customer.`last_update` FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where country.country = "Bolivia";

SELECT `customer_id`, `store_id`, `first_name`, `last_name`, `email`, address.`address`,city.city, country.country, `active`, `create_date`, customer.`last_update` FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where  country.country = "Bolivia" or country.country = "Germany " or country.country = "Greece" ;

 SELECT `customer_id`, `store_id`, `first_name`, `last_name`, `email`, address.`address`,city.city, `active`, `create_date`, customer.`last_update` FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id where city.city = "Baku";


SELECT `customer_id`, `store_id`, `first_name`, `last_name`, `email`, address.`address`,city.city, `active`, `create_date`, customer.`last_update` FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
where city.city = "Baku" or city.city = "Beira" or city.city = "Bergamo";

SELECT concat(`first_name`, `last_name`) as costumer_name, city.city, country.country, length(country.country) as country_length FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where length(country.country) < 5;

SELECT concat(`first_name`, `last_name`) as costumer_name, city.city, country.country, length(city.city) as city_length FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where length(city.city) > 10 order by country.country;


SELECT concat(`first_name`, `last_name`) as costumer_name, city.city  FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where city.city like '%ba%';

SELECT concat(`first_name`, `last_name`) as costumer_name, city.city , length(city.city) as city_length FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where city.city like '% %' order by length(city.city) desc;


SELECT concat(`first_name`, `last_name`) as costumer_name, city.city , country.country,length(city.city) as city_length , length(country.country) as city_length FROM `customer` INNER JOIN address ON customer.address_id=address.address_id inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id where length(country.country) > length(city.city);