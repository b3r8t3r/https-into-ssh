#!/bin/bash

[ -e $HOME/bin/httpstossh/httpsconvert ] && { rm -rf $HOME/bin/httpstossh ; }
grep -q httpsconvert < $HOME/.bash_aliases && { sed -i".bak" '/httpsconvert/d' $HOME/.bash_aliases ; rm -rf $HOME/.bash_aliases.bak ; }

exit 0
