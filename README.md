# Bash-AI

This project translates textual input (english or other languages), translates them into runnable bash commands and executes them right away. It aims at making googling and stackoverflow-ing commands as well as reading exhaustive help messages and man pages obsolete and speed up whatever task needs to be accomplished by avoiding a context switch. You don't know how to do something in a terminal? Just express in natural language what you want to accomplish and let bash-ai do the rest.

```
ubuntu@hostname:~$ ai print the alphabet in order
echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z
```

```
ubuntu@hostname:~$ ai i want a list of all installed packages that have the string "ai" in their name
dpkg --get-selections | grep -i "ai"
bash-ai                                         install
containerd                                      deinstall
libaio1:amd64                                   install
libblockdev-mdraid3:amd64                       install
libcairo-gobject2:amd64                         install
libcairo2:amd64                                 install
libdecor-0-plugin-1-cairo:amd64                 install
libpangocairo-1.0-0:amd64                       install
libthai-data                                    install
libthai0:amd64                                  install
openai                                          install
philbot-containerized                           deinstall
thefuck-ai                                      install
whiptail                                        install
```

```
ubuntu@hostname:~$ echo hello world | ai count the characters in the input and print them
wc -m
12
```

```
ubuntu@hostname:~$ ai print all files in the current directory, disregarding on whether they are hidden | ai filter out all lines in the incoming data that do not start with . or that end with /
ls -a
grep '^\.' | grep -v '/$'
.
..
.bash_history
.bash_logout
.bashrc
.cache
.config
.gitconfig
.gitignore
.lesshst
.local
.npm
.profile
.sh_history
.ssh
.sudo_as_admin_successful
.wget-hsts
.zcompdump
.zsh_history
.zshrc
```

```
ubuntu@hostname:~$ ai list all guilds that a discord bot is in by name, by using the discord API and filterning down to the guilds names. assume the discord api token is in a properties file at location /var/lib/philbot/environment.properties.backend, the file containing key value pairs separated by =, the key is DISCORD_API_TOKEN
cat /var/lib/philbot/environment.properties.backend | grep DISCORD_API_TOKEN | cut -d'=' -f2 | xargs -I {} curl -H "Authorization: Bot {}" https://discord.com/api/v8/users/@me/guilds | jq -r '.[].name'
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  4644    0  4644    0     0  15624      0 --:--:-- --:--:-- --:--:-- 15583
discord.sobieski.codes
womma
Cuntry Club
Philbot's Home
...
```

Install via `wget -O - https://raw.githubusercontent.com/plengauer/bash-ai/main/INSTALL.sh | sh -E`
