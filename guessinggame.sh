fnum=$(eval "ls -p | grep -v / | wc -l")
#echo "$fnum"

while true
do
    echo "Guess how many files in current directory?"
    read guess
    if [[ $guess -eq $fnum ]]
    then
	echo "Congrats! Have a nice day, bye!"
	break
    elif [[ $guess -gt $fnum ]]
    then
        echo "Too high! Try again..."
    elif [[ $guess -lt $fnum ]]
    then
        echo "Too low! Try again..."
    else
	echo "Illegal input! Try again..."
    fi
done
