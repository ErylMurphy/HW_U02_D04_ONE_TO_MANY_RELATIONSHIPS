CREATE DATABASE soccer_teams;

\c soccer_teams;

DROP TABLE IF EXISTS soccer_teams;
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS spoken_languages;

CREATE TABLE spoken_languages (
  id BIGSERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE countries (
  id BIGSERIAL PRIMARY KEY,
  name TEXT,
  population INTEGER,
  spoken_language_id INTEGER REFERENCES spoken_languages(id)
);

CREATE TABLE cities (
  id BIGSERIAL PRIMARY KEY,
  name TEXT,
  population INTEGER,
  country_id INTEGER REFERENCES countries(id)
);

CREATE TABLE soccer_teams (
  id BIGSERIAL PRIMARY KEY,
  name TEXT,
  city_id INTEGER REFERENCES cities(id)
);
