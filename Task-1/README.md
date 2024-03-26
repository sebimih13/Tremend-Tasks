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

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/new-user.PNG)

### Install wget to easily download create_large_file.sh
```sh
apt update
```
```sh
apt install wget
```
```sh
ls
```
```sh
wget https://raw.githubusercontent.com/anddragn/Useful-Resources/main/1-linux/create_large_file.sh
```
```sh
ls
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/wget-1.PNG)

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/wget-2.PNG)

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/wget-3.PNG)

### Run shell script
```sh
bash create_large_file.sh
```
```sh
ls
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/run-shell-script.PNG)

### Check script
```sh
cat create_large_file.sh
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/check-script.PNG)

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
```sh
cat create_large_file.sh
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/modify-script.PNG)

### Run the modified shell script
```sh
sh create_large_file.sh
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/run-modified-shell-script.PNG)

### Check if the script copied the created file to the desired location
```sh
cd home/john
```
```sh
ls
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/check-home-john-ls.PNG)

### Copy the test.sh script into container
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

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/copy-test.PNG)

### Run test.sh
```sh
bash test.sh
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/run-test.PNG)

### Check new_passwd
```sh
ls
```
```sh
cat new_passwd
```

![Install-Ubuntu-Containter](https://github.com/sebimih13/Tremend-Tasks/blob/main/Task-1/resources/check-newpasswd.PNG)

