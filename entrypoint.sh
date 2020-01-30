#!/bin/bash

echo "starting...."
export PATH="$PATH:$HOME/.dotnet/tools/"
echo "PATH: " . $PATH
dotnet restore
(cd src/WebUI; dotnet ef database update)
echo "finished updating the database"
(cd src/WebUI; dotnet run)
#nohup dotnet tool install --global dotnet-ef &&
#(cd src/WebUI; dotnet ef database update)