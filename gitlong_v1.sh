#!/bin/bash
#This bash is wirtten for git client .
#Define paramtter for git.



case $1 in

        "a")
        git_add()
        ;;
        
        "c")
        git_commit()
        ;;

        "p")
        git_push()
        ;;
         
        "u")
        git_pull()
        ;;
        


