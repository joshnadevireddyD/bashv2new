#!/bin/bash
if [ $(whoami) != 'root' ]; then
echo "must be root to run $0"
exit 1;
fi
