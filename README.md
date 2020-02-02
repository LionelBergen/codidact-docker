# codidact-docker
Run the codidact core project (https://github.com/codidact/core) using docker

Steps
-----
1) Clone the Codidact Core project into this repsoitory

2) run `docker-compose up --build -d`.

3) Done! You can view the database using localhost:5431, username: `database_user` password: `postgres`
visit `https://localhost:5000` for the web app.

Known issues
------------

`Can not read file in context: ....sqlite3\db.lock`

Solution/work around: Build the docker container before running Visual Studio