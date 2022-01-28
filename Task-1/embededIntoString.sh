#! /bin/bash

read -p "Enter the string: " data
read -p "Enter the word to fill : " filler

if [[ -z $filler ]]
then
    data=${data//" "/"    "}
else
    data=${data//" "/$filler}
fi

echo "$data"
