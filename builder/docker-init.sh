#!/bin/bash

/opt/scripts/greenclip daemon &
/usr/sbin/sshd -D &

wait -n
exit $?