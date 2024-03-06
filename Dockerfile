FROM nginx

COPY html/ /usr/share/nginx/html/

RUN apt update

RUN apt install -y nano iputils-ping telnet

RUN mkdir docker
RUN cd docker && touch test.txt

#RUN -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=hrmisjp@2024" -p 1433:1433 --name sql1 --hostname sql1 -d  mcr.microsoft.com/mssql/server:2022-latest