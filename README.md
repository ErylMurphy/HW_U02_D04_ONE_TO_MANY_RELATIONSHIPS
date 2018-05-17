# One-to-Many Relationships Lab
ERYL's HW
## Setup

1.  Run the schema file, which creates the database tables

    ```bash
    psql -f database/schema.sql
    ```

1.  Run the seed file, which inserts data into the tables

    ```bash
    psql -f database/seed.sql
    ```

## Exercises

1.  Open `psql` and connect to the `soccer_teams` database.

1.  Use `\dt` and `\d table_name` to familiarize yourself with the tables and their columns.

1.  Insert a new language into the database.

>soccer_teams=# INSERT INTO spoken_languages
>soccer_teams-# VALUES (DEFAULT, 'Gibberish');
>INSERT 0 1
>soccer_teams=# 

1.  Insert a new country that speaks that language. Hint: Don't forget the foreign key!

>soccer_teams=# UPDATE countries SET spoken_language_id = 5 WHERE id = 6;
>UPDATE 1

1.  Insert a big city in that country.

>soccer_teams=# INSERT INTO cities VALUES (DEFAULT, 'Bogsport');
>INSERT 0 1
>soccer_teams=# UPDATE cities SET country_id = 6 WHERE id = 6;
>UPDATE 1

1.  Insert a soccer team that's from that city.

>soccer_teams=# INSERT INTO soccer_teams
>soccer_teams-# VALUES (DEFAULT, 'Bogsport Bindlestiffs');
>INSERT 0 1
>soccer_teams=# UPDATE soccer_teams SET city_id = 6 WHERE id = 7;
>UPDATE 1

1.  Select the names of countries that speak English in one statement using a JOIN.

>soccer_teams=# SELECT * FROM countries
>soccer_teams-# JOIN spoken_languages on countries.spoken_language_id = spoken_language_id WHERE spoken_languages.id = 1;

1.  Select the names of soccer teams in London.

>soccer_teams=# SELECT * FROM soccer_teams WHERE city_id = 3;

1.  Select the names of soccer teams in cities with a population of less than 4,000,000.

>soccer_teams=# SELECT * FROM soccer_teams JOIN cities on soccer_teams.city_id = cities.id WHERE cities.population < 4000000;

1.  Select the names of soccer teams in countries with a population of less than 4,000,000.

> soccer_teams=# SELECT * FROM countries WHERE countries.population < 4000000;
 id | name | population | spoken_language_id 
----+------+------------+--------------------
(0 rows)


1.  Select the names of soccer teams in countries that speak English.

> soccer_teams=# SELECT soccer_teams.name AS team_name, countries.name AS country_name FROM soccer_teams JOIN cities ON cities.id = soccer_teams.city_id JOIN countries on cities.country_id = countries.id JOIN spoken_languages on countries.spoken_language_id = spoken_languages.id WHERE spoken_languages.name = 'English'; 
     team_name      |       country_name       
--------------------+--------------------------
 New York City F.C. | United States of America
 Chicago Fire       | United States of America
 Arsenal F.C.       | England
 Chelsea F.C.       | England
 Liverpool F.C.     | England
(5 rows)


