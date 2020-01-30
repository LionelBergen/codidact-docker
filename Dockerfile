FROM mcr.microsoft.com/dotnet/core/sdk
# copy the codidact project into the container
COPY ./core /app
COPY ./entrypoint.sh /entrypoint.sh

# program needed to convert line endings, in case we're on a windows system
RUN apt-get update && apt-get install dos2unix

WORKDIR /app

# change line endings to be unix friendly
RUN chmod +x ../entrypoint.sh
RUN dos2unix ../entrypoint.sh
RUN find . -type f -print0 | xargs -0 dos2unix

RUN dotnet tool install --global dotnet-ef
ENV PATH "$PATH:$HOME/.dotnet/tools/"

# our workdir is /app entrypoint is outside of that
CMD /bin/bash ../entrypoint.sh