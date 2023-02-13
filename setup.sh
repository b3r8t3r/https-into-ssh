#!/bin/bash

[ -d $HOME/bin ] || { mkdir $HOME/bin ; }

[ -d $HOME/bin/httpstossh ] || { mkdir $HOME/bin/httpstossh ; }

[ -e $HOME/bin/httpstossh/httpsconvert ] || {  cp ./httpsconvert $HOME/bin/httpstossh ; } 

grep -q httpsconvert < $HOME/.bash_aliases || { $(echo "alias httpsconvert='$HOME/bin/httpstossh/httpsconvert'" >> $HOME/.bash_aliases) ; }

exit 0
