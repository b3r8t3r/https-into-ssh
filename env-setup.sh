#!/bin/bash

[ -e $HOME/bin/convert ] || { [ -e ./convert ] || { ln convert.sh convert ; } ; mv -f -u convert $HOME/bin ; } 
[ -e ./convert ] && { rm -rf convert ; }

grep -q convert < $HOME/.bashrc || { $(echo "export convert=$HOME/bin/convert" >> $HOME/.bashrc) ; }

exit 0