FROM mcr.microsoft.com/dotnet/sdk:3.1.423-alpine3.16
ENV PATH="$PATH:/root/.dotnet/tools"
RUN apk add --no-cache openjdk11=11.0.16.1_p1-r0 nodejs-current=18.9.1-r0 && \
        dotnet tool install --no-cache --global dotnet-sonarscanner --version 5.8.0
