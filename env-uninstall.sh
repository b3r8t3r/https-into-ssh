#!/bin/bash

[ -e $HOME/bin/convert ] && { rm -rf $HOME/bin/convert ; }
grep -q convert < $HOME/.bashrc && { sed -i".bak" '/convert/d' $HOME/.bashrc ; rm -rf $HOME/.bashrc.bak ; }

exit 0