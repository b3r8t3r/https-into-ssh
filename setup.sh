#!/bin/bash

declare rc=$HOME/.$(basename $SHELL)rc

[ -d $HOME/.httpsintossh ] || { mkdir $HOME/.httpsintossh ; }

[ -e $HOME/.httpsintossh/https-into-ssh ] || {  cp ./https-into-ssh $HOME/.httpsintossh ; } 

[ -e $HOME/.httpsintossh/uninstall.sh ] || {  cp ./uninstall.sh $HOME/.httpsintossh ; } 

grep -q https-into-ssh < $rc || { $(echo "alias https-into-ssh='$HOME/.httpsintossh/https-into-ssh'" >> $rc) ; }

exit 0
