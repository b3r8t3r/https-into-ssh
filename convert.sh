#!/bin/bash
#https: https://github.com/ShuvVa/https-into-ssh.git
#ssh: git@github.com:ShuvVa/https-into-ssh.git

https_test=https://github.com/ShuvVa/https-into-ssh.git

https_adr=$1
https_adr_size=${#https_adr}

git=github
com=.com/
https=https://
prefix=$https$git$com
prefix_index=-1
prefix_size=${#prefix}

postfix=".git"
postfix_index=-1
postfix_size=${#postfix}




repo=""
ssh="git@github.com:"

#if [ -z $https_adr ]; then
#	echo "There is no kind of github repository link. Program terminates."
#	exit 0
#fi

[ -z $https_adr ] && { echo "There is no kind of github repository link. Program terminates." ; exit 0 ; }

#if [ $prefix == ${https_adr:0:19} ]; then
#	echo -e "There is github link!"
#	prefix_index=0
#fi

[ $prefix == ${https_adr:0:19} ] && { echo -e "There is github link!" ; prefix_index=0 ; }

temp=$https_adr
#echo -e "=========\n"$temp"\n========="
end=${temp##*/}
#echo -e "=========\n"$end"\n========="
temp=${end#*.}
#echo -e "=========\n"$temp"\n========="
#if [ $end == $temp ]; then 
#	echo "There is no .git addition. Adding..."
#fi 
[ $prefix_index -eq "-1" ] && { echo "The inputted line is not github repository link. Program terminates." ; exit 2 ; }

[ $end == $temp ] && { echo "There is no .git addition. Adding..." ; }
[ $end != $temp ] && {  [ $postfix != ".$temp" ] && { echo "This link is not github repository. Program terminates." ; exit 1 ; } ; }

[ $postfix_index -eq "-1" ] && { postfix_index=$post_index_end ; }

#if [ $postfix != ".$temp" ] && [$end != $temp]; then 
#	echo "This link is not github repository. Program terminates."
#	exit 1
#fi 
#temp=${temp#*/}
#echo -e "=========\n"$temp"\n========="
#temp=${temp#*/}
#echo -e "=========\n"$temp"\n========="
#temp=${temp#*/}
#echo -e "=========\n"$temp"\n========="

#if [ "$postfix" == "$postf_part" ] then
#	echo -e "There is github addition!"
#	postfix_index=$post_index
#fi

#if [ $prefix_index -eq "-1" ]; then
#	echo "The inputted line is not github repository link. Program terminates."
#	exit 2
#fi



#if [ $postfix_index -eq "-1" ]; then
#	postfix_index=$post_index_end
#fi

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
