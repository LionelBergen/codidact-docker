FROM mcr.microsoft.com/dotnet/core/sdk
COPY ./core /app
COPY ./entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install dos2unix

WORKDIR /app

# RUN ["dotnet", "restore"]
# RUN ["dotnet", "build"]

RUN chmod +x ../entrypoint.sh
RUN dos2unix ../entrypoint.sh
RUN find . -type f -print0 | xargs -0 dos2unix

#RUN (cd src/WebUI; dotnet run)

RUN dotnet tool install --global dotnet-ef
ENV PATH "$PATH:$HOME/.dotnet/tools/"
RUN (echo $path)
#RUN (cd src/WebUI; dotnet ef database update)

CMD /bin/bash ../entrypoint.sh