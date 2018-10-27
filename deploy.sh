#!/bin/bash
(umask 077; echo "$SSH_KEY" > /tmp/id_deploy)
rsync -e "ssh -i /tmp/id_deploy -oBatchMode=yes -p 51015" -r --delete public/ hacknsnack@iomona.de:hackandsnack.de
rm /tmp/id_deploy
