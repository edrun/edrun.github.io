#!/bin/bash
echo 
echo 
echo  "----------------------"
echo  "Wirtten  for git client."
echo  "Modify by ql  Ver1.0"
echo  "----------------------"

COMMAND=""
while [ "$COMMAND" != "q" ]
do
	echo 
    echo 'Pls be careful to use'
	echo '---------------------'
	echo "Select a command:"
	echo "s. status"
	echo "a. add -Av"
	echo "c. commit -avm"
	echo "p. push -v"
	echo "gh. push gh-pages -v"
	echo "u. pull -v"
	echo "v. archive"
	echo "q. exit"
	echo '---------------------'
	read -r -s -n 1 COMMAND
	echo ''
    if [ "$COMMAND" = "s" ] ; then
		echo ">> git status"
    	git status
    elif [ "$COMMAND" = "a" ] ; then
		echo ">> git add -Av"
    	git add -Av
    elif [ "$COMMAND" = "c" ] ; then
    	echo ">> Please input a message: "
		read MESSAGE
		echo ">> git commit -avm \"$MESSAGE\""
		git commit -avm "$MESSAGE"
    elif [ "$COMMAND" = "p" ] ; then
		echo ">> git push -v"
    	git push origin master
    elif [ "$COMMAND" = "gh" ] ; then
		echo ">> git push hg-pages -v"
    	git push origin gh-pages
    elif [ "$COMMAND" = "u" ] ; then
		echo ">> git pull -v"
    	git pull -v
	elif [ "$COMMAND" = "v" ] ; then
		echo ">> git archive master | bzip2 > source-tree.tar.bz2"
		git archive master | bzip2 > ../source-tree.tar.bz2
	elif [ "$COMMAND" = "q" ] ; then
	    exit 0
	else
		continue
	fi
done


