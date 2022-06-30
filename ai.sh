#! /bin/bash



echo "Hello user."

sleep 2

echo "What is your name."
read name
if [ $name ]; then
        echo "$name looks alright to me"
else
        echo "that doesnt look like anything to me"

sleep 2

fi
echo "how are you feeling? (bad/good) "

read feeling

if [[ $feeling == "bad" ]]; then
        echo "Thats not good, would you like to play a little game to cheer you up. (yes/no)"
else
        echo "Very good, would you like to play a game. (sure/no)"
fi

read game
if [[ $game == "yes" || $game == "sure" ]]; then
        echo "Ok then, let's begin"
else
        exit 1

fi

beast=$(( $RANDOM % 2 ))

echo "Your first beast approaches."

sleep 1

echo "Pick a number between 0-1 (0/1)"

read tarnished

if [[ $beast == $tarnished ]]; then
        echo "Beast VANQUISHED"
else
        echo "You Died"
        exit 1
fi

sleep 2

echo "$name would you like to continue and battle margit or look at a little poem i've been writing"

read writing

if [[ $writing == "continue" || "yes" ]]; then
        echo "boss battle. pick a number between 0-9."

read tarnished

else
        exit 1
fi

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
        echo "Beast Vanquished"
else
        echo "You died"
fi
