#https: https://github.com/ShuvVa/https-into-ssh.git
#ssh: git@github.com:ShuvVa/https-into-ssh.git

https_test=https://github.com/ShuvVa/https-into-ssh.git

https_adr=$1
postfix=".git"
postfix_index=-1
postfix_size=${#postfix}
prefix="https://github.com/"
prefix_index=-1
prefix_size=${#prefix}
repo=""
ssh="git@github.com:"

if [[ "$https_adr" == "" ]]; then
	echo "There is no kind of github repository link. Program terminates."
	exit -1
fi

if grep -q "$prefix" <<< "$https_adr"; then
	echo -e "There is github link!"
	prefix_index=0
fi

if grep -q "$postfix" <<< "$https_adr"; then
	echo -e "There is github addition!"
	postfix_index=$((${#https_adr}-${#postfix}-1))
fi

if [[ "$prefix_index" == "-1" ]]; then
	echo "The inputted line is not github repository link. Program terminates."
	exit 1
fi

if [[ "$postfix_index" == "-1" ]]; then
	postfix_index=$((${#https_adr}-1))
fi

#temp=${https_tes%%$postfix*} && indexOf=$(echo "https_test%%$postfix*" | cat ${#temp})

echo -e "Original link:\n"$https_adr
echo ${#https_adr}
echo $prefix
echo $prefix_index
echo $prefix_size
echo $postfix
echo $postfix_index
echo $postfix_size
echo $ssh
echo $((${#https_adr}-${#postfix}))
