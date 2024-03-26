FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=secretpw
ENV MYSQL_DATABASE=company

ENV MYSQL_USER=Admin
ENV MYSQL_PASSWORD=Admin123

COPY company.sql /docker-entrypoint-initdb.d/