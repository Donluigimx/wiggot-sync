#!/bin/bash

echo "Installing wiggot-sync"

curl -s 'https://raw.githubusercontent.com/Donluigimx/wiggot-sync/master/wiggot-sync.sh' >/usr/local/bin/wiggot-sync
chmod +x /usr/local/bin/wiggot-sync

echo "Installation finished"
