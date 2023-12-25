# Bash-AI

This project translates textual input (english or other languages) and translates them into runnable bash commands. It aims at making googling and stackoverflow-ing commands obsolete and speed up whatever task needs to be accomplished.

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
ubuntu@hostname$ bash-ai print the alphabet in order
echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z
```
