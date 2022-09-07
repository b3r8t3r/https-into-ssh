# Https git links into ssh
## Contents

1. [Readme](#readme)
2. [Installation](#installation)
3. [How it works](#how-it-works)
4. [Properties](#properties) \
    4.1 [For installed script](#for-installed-script) \
    4.2 [For local use](#for-local-use) \
    4.3 [Options](#options)
5. [Examples of use](#examples-of-use) \
    5.1 [Installed script](#installed-script)\
        5.1.1 [Regular use](#regular-use) \
        5.1.2 [Debug mode](#debug-mode)\
        5.1.3 [Silent mode](#silent-mode)\
    5.2 [Local script](#local-script)\
        5.2.1 [Default](#default)\
        5.2.2 [Debug](#debug)\
        5.2.3 [Silent](#silent)
6. [Uninstall](#uninstall)

## Readme
The script in repo could help you in moments like you do not have access for **github** for desktop and you are bored with searching for ssh link from mobile.

Just start the script and you'll get the ssh link for needed repo.

## Installation

To install script for your local environment, start file `env-setup.sh`. After that, you could use script with command `httpsconvert`.

## How it works

Start script with link on needed **https** **github** repo and script will return **ssh** link for it. Kinda useful if you do not have access for **github** for desktop.

## Properties
### For installed script

```bash
httpsconvert <repo> [<option>]
```

### For local use

```bash
./httpsconvert <repo> [<option>]
```

### Options

`-d` - Debug information. Shows the steps of work with link.

`-s` - Silent mode. In output shows only resulting ssh link.

## Examples of use

### Installed script

#### Regular use

```bash
httpsconvert https://github.com/ShuvVa/https-into-ssh.git
Original link:
https://github.com/ShuvVa/https-into-ssh.git
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
httpsconvert https://github.com/ShuvVa/https-into-ssh
Original link:
https://github.com/ShuvVa/https-into-ssh
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

#### Debug mode

```bash
httpsconvert https://github.com/ShuvVa/https-into-ssh.git -d
Debug mode:
==========
There is github link!
There is .git addition!
==========
Original link:
https://github.com/ShuvVa/https-into-ssh.git
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
httpsconvert https://github.com/ShuvVa/https-into-ssh -d
Debug mode:
==========
There is github link!
There is no .git addition.
==========
Original link:
https://github.com/ShuvVa/https-into-ssh
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

#### Silent mode

```bash
httpsconvert https://github.com/ShuvVa/https-into-ssh.git -s
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
httpsconvert https://github.com/ShuvVa/https-into-ssh -s
git@github.com:ShuvVa/https-into-ssh.git
```

### Local script

#### Default

```bash
./httpsconvert https://github.com/ShuvVa/https-into-ssh.git
Original link:
https://github.com/ShuvVa/https-into-ssh.git
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
./httpsconvert https://github.com/ShuvVa/https-into-ssh
Original link:
https://github.com/ShuvVa/https-into-ssh
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

#### Debug

```bash
./httpsconvert https://github.com/ShuvVa/https-into-ssh.git -d
Debug mode:
==========
There is github link!
There is .git addition!
==========
Original link:
https://github.com/ShuvVa/https-into-ssh.git
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
./httpsconvert https://github.com/ShuvVa/https-into-ssh -d
Debug mode:
==========
There is github link!
There is no .git addition.
==========
Original link:
https://github.com/ShuvVa/https-into-ssh
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

#### Silent

```bash
./httpsconvert https://github.com/ShuvVa/https-into-ssh.git -s
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
./httpsconvert https://github.com/ShuvVa/https-into-ssh -s
git@github.com:ShuvVa/https-into-ssh.git
```

## Uninstall

To uninstall script for your local environment, start file `env-uninstall.sh`. After that, script will be removed from environment.
