# STEPS
1. Create Dockerfile
2. Define Docker Container

```sh
docker build -t python_app .
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-2/python/resources/build-image.PNG)

```sh
docker run -it --name python_app_container python_app
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-2/python/resources/python-container.PNG)

```sh
docker run --rm python_app
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-2/python/resources/python-rm.PNG)

