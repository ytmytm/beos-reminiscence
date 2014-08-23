#!/bin/sh

PWD=`echo $0 | sed s/rungame.sh//`

REPLY=`alert --empty "Which version to run?" "Original" "Fixed"`

case $REPLY in
	"Fixed") 
		BINARY=rs-soundfix
		;;
	*)
		BINARY=rs
		;;
esac
"$PWD/$BINARY" --datapath="$PWD/DATA" --savepath="$PWD"
