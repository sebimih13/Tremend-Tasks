# STEPS
### Install ubuntu containter
```sh
docker pull ubuntu:latest
```

```sh
docker run -it --name my_linux_container ubuntu
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/Install-Ubuntu-Containter.PNG)

### Check current ubuntu version
```sh
ls
```
```sh
cat /etc/os-release
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/current-ubuntu-version.PNG)

### Add a new user
```sh
useradd -m john
```
```sh
id john
```
```sh
passwd john
```
```sh
john123
```
```sh
john123
```
```sh
su john
```
```sh
whoami
```
```sh
exit
```
```sh
whoami
```

### Install wget to easily download create_large_file.sh
```sh
apt update
```
```sh
apt install wget
```
```sh
wget https://raw.githubusercontent.com/anddragn/Useful-Resources/main/1-linux/create_large_file.sh
```
```sh
ls
```

### Run shell script
```sh
bash create_large_file.sh
```
```sh
ls
```

### Check script
```sh
cat create_large_file.sh
```

### Modify script
```sh
sed -i '$ d' create_large_file.sh
```
```sh
sed -i '$ d' create_large_file.sh
```
```sh
echo "mv large_file /home/john" >> create_large_file.sh
```

### Check the modified script
```sh
cat create_large_file.sh
```

### Run the modified shell script
```sh
sh create_large_file.sh
```

### Check if the script copied the created file to the desired location
```sh
cd home/john
```
```sh
ls
```

### Copy the test.sh script into container
```sh
exit
```
```sh
exit
```
```sh
exit
```
```sh
docker cp test.sh my_linux_container:/
```
```sh
docker start -i my_linux_container
```
```sh
ls
```

# Run test.sh
```sh
bash test.sh
```

