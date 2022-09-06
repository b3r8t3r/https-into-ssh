#!/bin/bash
#https: https://github.com/ShuvVa/https-into-ssh.git
#ssh: git@github.com:ShuvVa/https-into-ssh.git

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
has_postfix=1

repo=""
ssh="git@github.com:"

[ "$2" == "-d" ] && { echo -e "Debug mode:\n==========" ; }

[ -z $https_adr ] && { [ "$2" == "-d" ] && { echo "There is no kind of github repository link. Program terminates." ; } ; exit 0 ; }

[ $prefix == ${https_adr:0:19} ] && { [ "$2" == "-d" ] && { echo -e "There is github link!" ; } ; prefix_index=0 ; }

end=${https_adr##*/}
temp=${end#*.}

[ $prefix_index -eq "-1" ] && { echo "The inputted line is not github repository link. Program terminates." ; exit 2 ; }

[ $end == $temp ] && { [ "$2" == "-d" ] && { echo "There is no .git addition." ; } ; has_postfix=0 ; }
[ $end != $temp ] && { [ $postfix != ".$temp" ] && 
{ echo "This link is not github repository. Program terminates." ; exit 1 ; } || { [ "$2" == "-d" ] && { echo "There are .git addition" ; } ; postfix_index=$(($https_adr_size-$postfix_size-1)) ; } ; }

[ $postfix_index -eq "-1" ] && { postfix_index=$(($https_adr_size-1)) ; }

[ $has_postfix == "0" ] && { repo=${https_adr:$prefix_size} ; } || { 
repo=${https_adr:$prefix_size:(($https_adr_size-$prefix_size-$postfix_size))} ; }

[ "$2" == "-d" ] && { echo -e "==========" ; }

echo -e "Original link:\n"$https_adr
echo $ssh$repo$postfix
