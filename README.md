# dockerfiles

To build the image from Dockerfile
<br />
docker build -t sqlserverimage .
<br /><br /><br />


To run the container
<br />
docker run -d --name sql-server -p 1433:1433 sqlserverimage
<br /><br /><br />


To stop/start the sql server
<br />
docker stop sql-server
<br />
docker start sql-server
<br /><br /><br />


To run a command in a running container
<br />
docker exec -it sql-server bash
