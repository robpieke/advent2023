BEGIN {
    total = 0
}

{
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NF-i; j++) {
            $j = $(j+1) - $j
        }
        total += $(NF-i+1)
    }
}

END {
    print total
}
