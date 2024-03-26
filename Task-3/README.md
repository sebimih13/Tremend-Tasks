# STEPS

### Configure Docker
1. Create Dockerfile
2. Define Docker Container

### Setup docker image for mysql database
```sh
docker build -t mysql_db .
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/build-image.PNG)

### Run mysql database container
```sh
docker run -it --name mysql_db_container -v mysql:/var/lib/mysql mysql_db
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/container.PNG)

<!-- ### Run container
```sh
docker start -i mysql_db_container
``` -->

### Open another terminal
```sh
docker container ls
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/admin-terminal.PNG)

### Connect to the database as Admin
```sh
docker exec -it 1b6a45353af4 /bin/bash
```
```sh
ls
```
```sh
cd docker-entrypoint-initdb.d
```
```sh
ls
```
```sh
mysql -u Admin -p
Admin123
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/admin.PNG)

### Queries
```sh
show databases;
```

```sh
use company;
```

```sh
show tables;
```

```sh
select * from departments;
```

```sh
select * from employees;
```

```sh
select * from positions;
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/q-1.PNG)

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/q-2.PNG)

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/q-3.PNG)

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/q-4.PNG)

### Find the average salary for each department
```sh
mysql> SELECT d.department_name, AVG(e.salary)
    -> FROM departments d JOIN employees e ON (d.department_id = e.department)
    -> GROUP BY d.department_name;
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-3/resources/q-5.PNG)

