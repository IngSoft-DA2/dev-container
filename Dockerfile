FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /src

COPY ["Starwars/*", "Starwars/"]

RUN dotnet tool install --global dotnet-ef --version 6.0.0
ENV PATH="${PATH}:/root/.dotnet/tools"