use world;

select continent, COUNT(name) as Total_Countries, life_expectancy FROM countries GROUP BY continent;

select continent, COUNT(name) as Total_Countries, life_expectancy FROM countries where life_expectancy BETWEEN 60 and 70 GROUP BY continent;

select continent, life_expectancy FROM countries where life_expectancy > 75 GROUP BY continent;

select name, life_expectancy FROM countries where life_expectancy < 40 GROUP BY continent;

select name, population FROM countries GROUP BY name ORDER BY `countries`.`population` DESC limit 10;

select SUM(population) as total_population FROM countries;

select continent, SUM(population) as total_population FROM countries GROUP by continent;

select continent, COUNT(name), SUM(population) as total_population, life_expectancy FROM countries where life_expectancy < 71 GROUP by continent;

Select countries.name, COUNT(cities.id) FROM countries INNER JOIN cities on countries.code = cities.country_code GROUP By countries.name;

SELECT countries.name, languages.language, COUNT(countries.code) from countries INNER JOIN languages on countries.code = languages.country_code GROUP BY languages.language ORDER by countries.name;

SELECT languages.language, COUNT(countries.code) as total_countries , languages.is_official from countries INNER JOIN languages on countries.code = languages.country_code WHERE languages.is_official = "t" GROUP BY languages.language;

SELECT continent, COUNT(cities.name) , AVG(cities.population) FROM countries INNER JOIN cities on countries.code = cities.country_code GROUP BY continent;

select languages.language, sum(countries.population * languages.percentage / 100) as total_population FROM countries INNER join languages on countries.code = languages.country_code GROUP BY languages.language ORDER by total_population DESC;