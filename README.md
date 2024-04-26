# Https git links into ssh
## Contents

1. [Readme](#readme)
2. [Installation](#installation)
3. [How it works](#how-it-works)
4. [How to use](#how-to-use) \
    4.1 [Options](#options)
5. [Examples of use](#examples-of-use) \
    5.1 [Regular use](#regular-use) \
    5.2 [Help page](#help-page)\
    5.3 [Silent mode](#silent-mode)
6. [Deinstallation](#deinstallation)

## Readme
The script in repo could help you in moments like you do not have access for **git** for desktop and you are bored with searching for ssh link from mobile.

Just start the script and you'll get the ssh link for needed repo.

## Installation

To install script for your local environment, start file `setup.sh`. After that, you could use script with command `https-into-ssh`.

## How it works

Start script with link on needed **https** **git** repo and script will return **ssh** link for it. Kinda useful if you do not have access for **git** for desktop.

## How to use

```bash
https-into-ssh [<option>] <repo>
```

### Options

`-h` or `--help` - Help page. Shows instruction how to use script.

`-s` or `--silent` - Silent mode. In output shows only resulting ssh link.

## Examples of use

### Regular use

```bash
https-into-ssh https://github.com/b3r8t3r/https-into-ssh.git
Original link: https://github.com/b3r8t3r/https-into-ssh.git

Resulting link: git@github.com:b3r8t3r/https-into-ssh.git
```

```bash
https-into-ssh https://github.com/b3r8t3r/https-into-ssh
Original link: https://github.com/b3r8t3r/https-into-ssh

Resulting link: git@github.com:b3r8t3r/https-into-ssh.git
```

### Help page

```bash
https-into-ssh -h
https-into-ssh [<arg>] <repo> 
This is help note for this script. 
Inputted args:
        --help or -h: show this page.
        --silent or -s: shows only resulting link.
```

```bash
https-into-ssh --help
https-into-ssh [<arg>] <repo> 
This is help note for this script. 
Inputted args:
        --help or -h: show this page.
        --silent or -s: shows only resulting link.
```

### Silent mode

```bash
https-into-ssh -s https://github.com/b3r8t3r/https-into-ssh.git
git@github.com:b3r8t3r/https-into-ssh.git
```

```bash
https-into-ssh --silent https://github.com/b3r8t3r/https-into-ssh
git@github.com:b3r8t3r/https-into-ssh.git
```

## Deinstallation

To uninstall script for your local environment, start file `uninstall.sh`. After that, script will be removed from environment.
