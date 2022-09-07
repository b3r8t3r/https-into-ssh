#!/bin/bash

[ -e $HOME/bin/httpsconvert ] || {  cp ./httpsconvert $HOME/bin ; } 

grep -q httpsconvert < $HOME/.bashrc || { $(echo "export httpsconvert=$HOME/bin/httpsconvert" >> $HOME/.bashrc) ; }

exit 0
