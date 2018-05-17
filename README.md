# One-to-Many Relationships Lab

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

> Copy and paste your SQL statement here.

1.  Insert a new country that speaks that language. Hint: Don't forget the foreign key!

> Copy and paste your SQL statement here.

1.  Insert a big city in that country.

> Copy and paste your SQL statement here.

1.  Insert a soccer team that's from that city.

> Copy and paste your SQL statement here.

1.  Select the names of countries that speak English in one statement using a JOIN.

> Copy and paste your SQL statement here.

1.  Select the names of soccer teams in London.

> Copy and paste your SQL statement here.

1.  Select the names of soccer teams in cities with a population of less than 4,000,000.

> Copy and paste your SQL statement here.

1.  Select the names of soccer teams in countries with a population of less than 4,000,000.

> Copy and paste your SQL statement here.

1.  Select the names of soccer teams in countries that speak English.

> Copy and paste your SQL statement here.
