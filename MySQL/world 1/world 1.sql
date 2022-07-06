use world;

select * from countries where continent = "Europe";

select * from countries where continent = "North America" or  continent = "Africa";

select cities.country_code, countries.name, continent, countries.population, cities.name as city from countries inner join cities on cities.country_code = countries.code where countries.population > 100000000;

select `name`, languages.language from countries inner join languages on countries.code = languages.country_code where languages.language = "spanish";

select `name`, languages.language, languages.is_official from countries inner join languages on countries.code = languages.country_code where languages.language = "spanish" and languages.is_official = "T";

select `name`, languages.language from countries inner join languages on countries.code = languages.country_code where languages.language = "spanish" or languages.language = "English" ;

select `name`, languages.language, languages.percentage, is_official from countries inner join languages on countries.code = languages.country_code where languages.language = "Arabic" and languages.percentage = 95.9 and is_official = "F";

select `name`, languages.language, languages.percentage, is_official from countries inner join languages on countries.code = languages.country_code where languages.language = "French" and languages.percentage < 50.0 and is_official = "T";

select `name`, languages.language, languages.percentage, is_official from countries inner join languages on countries.code = languages.country_code where  is_official = "T" order by languages.language ;

select countries.name, cities.name, languages.language , is_official from countries inner join languages on countries.code = languages.country_code inner join cities on countries.code = cities.country_code where  is_official = "T" order by cities.population desc limit 100;

select countries.name,life_expectancy, cities.name, cities.population from countries inner join languages on countries.code = languages.country_code inner join cities on countries.code = cities.country_code where life_expectancy < 40.0 limit 100;

select countries.name,languages.language , countries.life_expectancy from countries inner join languages on countries.code = languages.country_code inner join cities on countries.code = cities.country_code where languages.language = "English" ORDER BY `countries`.`life_expectancy` DESC limit 100;
