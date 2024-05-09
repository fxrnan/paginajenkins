nano Dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/
EXPOSE 9000

docker build -t pagina1 .
docker images
docker run -d -p 80:9000 --name pagina1 pagina1
