#!/bin/bash

# passwd file format
# username:password:UID:GID:GECOS:directory:shell

# 1.
print_home_directory()
{
    echo $HOME
}

# 2. 
list_all_usernames()
{
    getent passwd | cut -d: -f1
}

# 3.
count_users()
{
    getent passwd | cut -d: -f1 | wc -l
}

# 4. 
find_home_directory_user()
{
    # input
    read -p "Enter the username: " username

    # check input
    if [ -z "$username" ]; then
        echo "ERROR: Username cannot be empty"
        return 1
    fi

    if ! grep -q "^$username:" /etc/passwd; then
        echo "ERROR: User \"$username\" does not exist."
        return 1
    fi
    
    # print home directory
    getent passwd "$username" | cut -d: -f6
}

# 5.
list_all_usernames_UID_range()
{
    # input
    read -p "Enter the minimum UID: " min_uid
    read -p "Enter the maximum UID: " max_uid

    # check input 
    if [[ ! $min_uid =~ ^[0-9]+$ || ! $max_uid =~ ^[0-9]+$ ]]; then
        echo "ERROR: min_uid and max_uid must be a pozitive number"
        return 1
    fi

    if ((min_uid > max_uid)); then
        echo "ERROR: min_uid <= max_uid"
        return 1
    fi

    system_min_uid=$(grep "^UID_MIN" /etc/login.defs | awk '{print $2}')
    system_max_uid=$(grep "^UID_MAX" /etc/login.defs | awk '{print $2}')

    if ((min_uid < system_min_uid || system_max_uid < min_uid)); then
        echo "ERROR: min_uid must be within the range defined in /etc/login.defs"
        return 1
    fi

    if ((max_uid < system_min_uid || system_max_uid < max_uid)); then
        echo "ERROR: max_uid must be within the range defined in /etc/login.defs"
        return 1
    fi

    # print users
    getent passwd {$(($min_uid))..$(($max_uid))} | cut -d: -f1
}

# 6.
find_users_standard_shell()
{
    getent passwd | grep -E '/bin/(bash|sh)' | cut -d: -f1
}

# 7.
replace_character()
{
    sed 's/\//\\/g' /etc/passwd > new_passwd

    if [ $? -eq 0 ]; then
        echo "SUCCESS"
    else
        echo "ERROR"
    fi
}

# 8.
print_private_IP()
{
    hostname -I | cut -d ' ' -f1
}

# 9.
print_public_IP()
{
    wget -qO- ifconfig.me
}

# 10. 
switch_user()
{
    su john
}

# check privileges
if [ "$(id -u)" != "0" ]; then
    echo "ERROR: This script must be run as root or with sudo privileges"
    exit 1
fi

echo "print_home_directory:"
print_home_directory
echo

echo "list_all_usernames:"
list_all_usernames
echo

echo "count_users:"
count_users
echo

echo "find_home_directory_user:"
find_home_directory_user
echo

echo "list_all_usernames_UID_range:"
list_all_usernames_UID_range
echo

echo "find_users_standard_shell:"
find_users_standard_shell
echo

echo "replace_character:"
replace_character
echo

echo "print_private_IP:"
print_private_IP
echo

echo "print_public_IP:"
print_public_IP
echo

echo "switch_user:"
switch_user
echo

echo "print_home_directory:"
print_home_directory
echo

