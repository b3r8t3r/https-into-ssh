#!/bin/bash

[ -e $HOME/bin/httpsconvert ] || { [ -e ./httpsconvert ] || { ln convert.sh httpsconvert ; } ; mv -f -u httpsconvert $HOME/bin ; } 
[ -e ./httpsconvert ] && { rm -rf httpsconvert ; }

grep -q httpsconvert < $HOME/.bashrc || { $(echo "export httpsconvert=$HOME/bin/httpsconvert" >> $HOME/.bashrc) ; }

exit 0
