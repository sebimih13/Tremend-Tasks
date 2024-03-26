# STEPS

### Configure Docker
1. Create Dockerfile
2. Define Docker Container

### Setup docker image and containter for mysql app
```sh
docker build -t mysql_app .
```

```sh
docker run -it --name mysql_app_container -v mysql:/var/lib/mysql mysql_app
```

### Run container
```sh
docker start -i mysql_app_container
```

### Open another terminal
```sh
docker container ls
```

### Connect to the database as Admin
```sh
docker exec -it 802a3c389d50 /bin/bash
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

### Find the average salary for each department
```sh
mysql> SELECT d.department_name, AVG(e.salary)   
    -> FROM departments d JOIN employees e ON (d.department_id = e.department)
    -> GROUP BY d.department_name;
```

