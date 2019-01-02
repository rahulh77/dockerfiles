RESTORE DATABASE WideWorldImporters FROM DISK = "/opt/mssql/backup/wwi.bak" WITH MOVE "WWI_Primary" TO "/opt/mssql/data/WideWorldImporters.mdf", MOVE "WWI_UserData" TO "/opt/mssql/data/WideWorldImporters_userdata.ndf", MOVE "WWI_Log" TO "/opt/mssql/data/WideWorldImporters.ldf", MOVE "WWI_InMemory_Data_1" TO "/opt/mssql/data/WideWorldImporters_InMemory_Data_1"
-- create database rahuldb;
-- GO
-- use rahuldb;
-- create table people (PersonId int Primary Key, Name nvarchar(50));
-- insert into people values (1,'rahul');
-- insert into people values (2,'giantpuppy');
-- select * from people
-- GO