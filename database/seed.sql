\c soccer_teams;

INSERT INTO spoken_languages (name) VALUES ('English');
INSERT INTO spoken_languages (name) VALUES ('Spanish');
INSERT INTO spoken_languages (name) VALUES ('Portuguese');

INSERT INTO countries (name, population, spoken_language_id) VALUES ('United States of America', 325000000, 1);
INSERT INTO countries (name, population, spoken_language_id) VALUES ('England', 53000000, 1);
INSERT INTO countries (name, population, spoken_language_id) VALUES ('Spain', 46000000, 2);
INSERT INTO countries (name, population, spoken_language_id) VALUES ('Portugal', 10000000, 3);
INSERT INTO countries (name, population, spoken_language_id) VALUES ('Ireland', 4733000, 1);

INSERT INTO cities (name, population, country_id) VALUES ('New York', 8538000, 1);
INSERT INTO cities (name, population, country_id) VALUES ('Chicago', 2700000, 1);
INSERT INTO cities (name, population, country_id) VALUES ('London', 8780000, 2);
INSERT INTO cities (name, population, country_id) VALUES ('Liverpool', 465000, 2);
INSERT INTO cities (name, population, country_id) VALUES ('Madrid', 3160000, 3);

INSERT INTO soccer_teams (name, city_id) VALUES ('New York City F.C.', 1);
INSERT INTO soccer_teams (name, city_id) VALUES ('Chicago Fire', 2);
INSERT INTO soccer_teams (name, city_id) VALUES ('Arsenal F.C.', 3);
INSERT INTO soccer_teams (name, city_id) VALUES ('Chelsea F.C.', 3);
INSERT INTO soccer_teams (name, city_id) VALUES ('Liverpool F.C.', 4);
INSERT INTO soccer_teams (name, city_id) VALUES ('Real Madrid F.C.', 5);
