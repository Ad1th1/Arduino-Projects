This is a fun bash script that will help me pick out a subject to study. I use it because I tend to be biased and study the subjects I like for
longer periods of time. By using a random number generator, I hope to counter this habit...

#!/bin/bash

declare -i a=$((1 + $RANDOM%7))

if [ $a == 1 ]
then
        echo "Aptitude"

elif [ $a == 2 ]
then
        echo "Mathematics"

elif [ $a == 3 ]
then
        echo "Digital Logic"

elif [ $a == 4 ]
then
        echo "Computer Organization and Architecture"

elif [ $a == 5 ]
then
        echo "Data Structures"

elif [ $a == 6 ]
then
        echo "Algorithms"

elif [ $a == 7 ]
then
        echo "Operating-Systems"

elif [ $a == 8 ]
then
        echo "Computer Networks"


else
        echo "Past-Question Papers"
fi

xdg-open https://www.geeksforgeeks.org/quiz-corner-gq/
