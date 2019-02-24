FROM node:10.15

RUN npm install --unsafe-perm -g autorest@beta
RUN npm install --unsafe-perm -g pwsh
RUN npm install --unsafe-perm -g dotnet-sdk-2.1

RUN apt-get update && apt-get install -y git

RUN git clone --depth 1 https://github.com/firecracker-microvm/firecracker.git

RUN autorest --powershell --input-file:"./firecracker/api_server/swagger/firecracker.yaml"
