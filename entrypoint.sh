#!/bin/bash

echo "starting...."

# set the path for dotnet command to work
export PATH="$PATH:$HOME/.dotnet/tools/"

# debugging
#echo "PATH: " . $PATH

dotnet restore
(cd src/WebUI; dotnet ef database update)

echo "finished updating the database"
(cd src/WebUI; dotnet run)