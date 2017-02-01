case "$1" in

    # Close all opened apps
    "apps:close-all")
        # To customize ignored apps, just put the keywords in $ignore
        # To test which apps you are going to kill, run:
        # ps aux | grep /Applications | grep -v $ignore | sed "s/\ *\ /\ /g" | cut -d ' ' -f 11 | xargs -I X echo X
        ignore="grep\|Alfred"
        ps aux | grep /Applications | grep -v $ignore | sed "s/\ *\ /\ /g" | cut -d ' ' -f 2 | xargs -I X kill -9 X
        echo "All opened apps are closed"
    ;;

esac
