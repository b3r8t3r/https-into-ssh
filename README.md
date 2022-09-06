# Https git links into ssh

The script in repo could help you in moments like you do not have access for **github** for desktop and you are bored with searching for ssh link from mobile.

Just start the script and you'll get the ssh link for needed repo.

## Installation

To install script for your local environment, start file `env-setup.sh`. After that, you could use script with command `convert`.

## How it works

Start script with link on needed **https** **github** repo and script will return **ssh** link for it. Kinda useful if you do not have access for **github** for desktop.

## Properties
### For installed script

```bash
convert <repo> [<option>]
```

### For local use

```bash
./convert.sh <repo> [<option>]
```

### Options

`-d` - Debug information. Shows the steps of work with link.

`-s` - Silent mode. In output shows only resulting ssh link.

## Examples of use

### Installed script

#### Regular use

```bash
convert https://github.com/ShuvVa/https-into-ssh.git
Original link:
https://github.com/ShuvVa/https-into-ssh.git
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
convert https://github.com/ShuvVa/https-into-ssh
Original link:
https://github.com/ShuvVa/https-into-ssh
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

#### Debug mode

```bash
convert https://github.com/ShuvVa/https-into-ssh.git -d
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
convert https://github.com/ShuvVa/https-into-ssh -d
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
convert https://github.com/ShuvVa/https-into-ssh.git -s
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
convert https://github.com/ShuvVa/https-into-ssh -s
git@github.com:ShuvVa/https-into-ssh.git
```

### Local script

#### Regular use

```bash
./convert.sh https://github.com/ShuvVa/https-into-ssh.git
Original link:
https://github.com/ShuvVa/https-into-ssh.git
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
./convert.sh https://github.com/ShuvVa/https-into-ssh
Original link:
https://github.com/ShuvVa/https-into-ssh
Resulting link:
git@github.com:ShuvVa/https-into-ssh.git
```

#### Debug mode

```bash
./convert.sh https://github.com/ShuvVa/https-into-ssh.git -d
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
./convert.sh https://github.com/ShuvVa/https-into-ssh -d
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
./convert.sh https://github.com/ShuvVa/https-into-ssh.git -s
git@github.com:ShuvVa/https-into-ssh.git
```

```bash
./convert.sh https://github.com/ShuvVa/https-into-ssh -s
git@github.com:ShuvVa/https-into-ssh.git
```