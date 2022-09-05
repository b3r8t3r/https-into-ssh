#https: https://github.com/ShuvVa/https-into-ssh.git
#ssh: git@github.com:ShuvVa/https-into-ssh.git


https_adr=$1
https="https"
github="github.com"
dotgit=".git"
prefix="$https://$github/"
ssh="git@github.com:"


if [[ "$prefix"* != "$https_adr" ]]; then
echo -e "There is no github link!"
exit 1
fi

echo -e "Original link:\n"$https_adr
echo $dotgit
echo $ssh
