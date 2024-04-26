#!/bin/bash

declare rc=$HOME/.$(basename $SHELL)rc

[ -e $HOME/.httpsintossh/https-into-ssh ] && { rm -rf $HOME/.httpsintossh ; }

grep -q https-into-ssh < $rc && { sed -i".bak" '/https-into-ssh/d' $rc ; rm -rf $rc.bak ; }

exit 0
