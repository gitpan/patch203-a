#!/bin/sh
#

# Make sure we are in the right directory
#

grep -q 'print "MiniVend version 2.03' minivend.pl 2>/dev/null

if test $? != 0
then 
	echo "This isn't the directory with MiniVend 2.03 in it."
	echo "Please copy these files there and run it again."
	exit 2
fi

patch < patch203-a


if test $? = 0
then 
	echo "Patch succeeded."
else
	echo "Patch FAILED."
fi
