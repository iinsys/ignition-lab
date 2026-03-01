# Task 2: Persisting Database Data

## Objective
Learn how to use volumes with Docker Compose to persist data.

## Exercises
1. In a new directory `02-task-database`, create a `docker-compose.yml` file:
   ```yaml
   version: '3.8'
   services:
     db:
       image: postgres
       restart: always
       environment:
         - POSTGRES_USER=postgres
         - POSTGRES_PASSWORD=postgres
       ports:
         - '5432:5432'
       volumes:
         - db-data:/var/lib/postgresql/data
   volumes:
     db-data:
   ```
2. Run the application using Docker Compose.
   ```bash
   docker-compose up -d
   ```
3. Connect to the database and create a table. You can use any database tool you like, or you can use `psql` inside the container.
   ```bash
   docker-compose exec db psql -U postgres
   ```
   Inside psql:
   ```sql
   CREATE TABLE notes (id serial PRIMARY KEY, content VARCHAR ( 255 ) NOT NULL);
   INSERT INTO notes (content) VALUES ('hello from docker compose');
   \q
   ```
4. Bring down the application. The `-v` flag removes named volumes. We won't use it here because we want to persist the data.
   ```bash
   docker-compose down
   ```
5. Run the application again.
   ```bash
   docker-compose up -d
   ```
6. Connect to the database again and check if your table and data are still there.
    ```bash
    docker-compose exec db psql -U postgres
    ```
    Inside psql:
    ```sql
    \dt
    SELECT * FROM notes;
    \q
    ```
7. You should see that your data has persisted.
8. Bring down the application and remove the volume.
   ```bash
   docker-compose down -v
   ```
