# Bash-AI

This project translates textual input (english or other languages) and translates them into runnable bash commands. It aims at making googling and stackoverflow-ing commands obsolete and speed up whatever task needs to be accomplished.

```
ubuntu@hostname:~$ bash-ai print the alphabet in order
echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z
```

```
ubuntu@hostname:~$ bash-ai i want a list of all installed packages that have the string "ai" in their name
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
ubuntu@hostname:~$ echo hello world | bash-ai count the characters in the input and print them
wc -m
12
```

```
ubuntu@hostname:~$ bash-ai print all files in the current directory, disregarding on whether they are hidden | bash-ai filter out all lines in the incoming data that do not start with . or that end with /
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

Install via `wget -O - https://raw.githubusercontent.com/plengauer/bash-ai/main/INSTALL.sh | sh -E`
