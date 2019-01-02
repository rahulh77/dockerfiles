FROM microsoft/mssql-server-linux:latest
LABEL maintainer="rahul" \
      version="1.0"

ENV SA_PASSWORD=Passw0rd
ENV ACCEPT_EULA=Y


RUN mkdir /opt/mssql/backup
WORKDIR /opt/mssql/backup

COPY ./bak/WideWorldImporters-Full.bak /opt/mssql/backup/wwi.bak
#RUN REstore db

# SQL Server port
EXPOSE 1433
#CMD run/start sql server

COPY entrypoint.sh entrypoint.sh
COPY SqlCmdStartup.sh SqlCmdStartup.sh
COPY SqlCmdScript.sql SqlCmdScript.sql

# Grant permissions for the SqlCmdStartup.sh script to be executable
RUN chmod +x ./SqlCmdStartup.sh
#start everything
CMD /bin/bash ./entrypoint.sh
