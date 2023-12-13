BEGIN {
    total = 0
}

{
    round = 0
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NF-i; j++) {
            $(NF-j+1) = $(NF-j+1) - $(NF-j)
        }
        round = $(i)-round
    }
    total += round
}

END {
    print total
}
