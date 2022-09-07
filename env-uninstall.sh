#!/bin/bash

[ -e $HOME/bin/httpsconvert ] && { rm -rf $HOME/bin/httpsconvert ; }
grep -q httpsconvert < $HOME/.bashrc && { sed -i".bak" '/httpsconvert/d' $HOME/.bashrc ; rm -rf $HOME/.bashrc.bak ; }

exit 0
