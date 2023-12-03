#!/usr/bin/env bash

sum=0

while read -r line; do
    line=${line:5}
    game=${line%%:*}
    IFS=';'
    min_r=0
    min_g=0
    min_b=0
    for round in ${line#$game: }; do
        IFS=' '
        words=( $round )
        for (( i=0; i<${#words[@]}; i+=2 )); do
            n=${words[$i]}
            color=${words[(($i+1))]}
            [[ "$color" == *"red"*   && $n -gt $min_r ]] && min_r=$n
            [[ "$color" == *"green"* && $n -gt $min_g ]] && min_g=$n
            [[ "$color" == *"blue"*  && $n -gt $min_b ]] && min_b=$n
        done
    done
    let sum+=$min_r*$min_g*$min_b
done < input.txt

echo $sum
