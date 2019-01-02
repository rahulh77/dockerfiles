# dockerfiles

To build the image from Dockerfile

docker build -t sqlserverimage .



To run the container

docker run -d --name sql-server -p 1433:1433 sqlserverimage



To stop/start the sql server

docker stop sql-server
docker start sql-server



To run a command in a running container
docker exec -it sql-server bash
