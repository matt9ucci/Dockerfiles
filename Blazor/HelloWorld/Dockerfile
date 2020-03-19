# See: https://docs.microsoft.com/en-us/aspnet/core/blazor/get-started
FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /app

RUN dotnet new -i Microsoft.AspNetCore.Components.WebAssembly.Templates::3.2.0-preview2.20160.5 \
 && dotnet new blazorwasm

EXPOSE 5000/tcp
ENTRYPOINT [ "dotnet", "run", "--urls", "http://+:5000" ]
