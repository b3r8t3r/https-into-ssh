# Https git links into ssh

The script in repo could help you in moments like 
you do not have access for **github** for desktop and 
you are bored with searching for ssh link from 
mobile.

Just start the script and you'll get the ssh link 
for needed repo.

## How it works

Start script with link on needed **github** repo and 
script will return ssh link for it. Kinda useful if 
you do not have access for **github** for desktop.

## Properties

`-d` - Debug information. Shows the steps of work with link.

`-s` - Silent mode. In output shows only resulting ssh link.

## Examples of use

```bash
./convert.sh 
https://github.com/ShuvVa/https-into-ssh.git
Original link:
https://github.com/ShuvVa/https-into-ssh.git
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
./convert.sh
https://github.com/ShuvVa/https-into-ssh
Original link:
https://github.com/ShuvVa/https-into-ssh.git
git@github.com:ShuvVa/https-into-ssh.git
```
