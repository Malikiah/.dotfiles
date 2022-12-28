if pgrep gammy
    then
        pkill gammy
    else 
        gammy &
fi
