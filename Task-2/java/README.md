# STEPS
1. Create Dockerfile
2. Define Docker Container

```sh
docker build -t java_app .
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-2/java/resources/build-image.PNG)

```sh
docker run -it --name java_app_container java_app
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-2/java/resources/java-container.PNG)

```sh
docker run --rm java_app
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-2/java/resources/java-rm.PNG)

