#!/usr/bin/env bash

sum=0

while read -r line; do
    line=${line:5}
    game=${line%%:*}
    words=( ${line#$game: } )
    success=1
    for (( i=0; i<${#words[@]}; i+=2 )); do
        n=${words[$i]}
        color=${words[(($i+1))]}
        [[ "$color" == *"red"*   && $n -gt 12 ]] && success=0
        [[ "$color" == *"green"* && $n -gt 13 ]] && success=0
        [[ "$color" == *"blue"*  && $n -gt 14 ]] && success=0
    done
    [[ $success -eq 1 ]] && let sum+=$game
done < input.txt

echo $sum
