#!/bin/bash

# encode ssh_key with 'cat key | base64 -w 0'
(umask 077; echo "$SSH_KEY_BASE64" | base64 -d > /tmp/id_deploy)

rsync -e "ssh -i /tmp/id_deploy -o BatchMode=yes -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 51015" -r --delete public/ hacknsnack@iomona.de:hackandsnack.de
rm /tmp/id_deploy
