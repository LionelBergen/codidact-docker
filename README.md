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

command not found 'dotnet-format' or 'dotnet-ef'

Solution/work around: use `dotnet dotnet-format` or `dotnet dotnet-format`. Not sure why, this didn't occur back when these tools were install globally.

