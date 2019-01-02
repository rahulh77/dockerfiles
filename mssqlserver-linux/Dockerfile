FROM microsoft/mssql-server-linux:latest
LABEL maintainer="rahul" \
      version="1.0"

ENV SA_PASSWORD=Passw0rd
ENV ACCEPT_EULA=Y


RUN mkdir -p /opt/mssql/backup
RUN mkdir -p /opt/mssql/scripts
WORKDIR /opt/mssql/scripts

ADD https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImporters-Full.bak /opt/mssql/backup/wwi.bak
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
