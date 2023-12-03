#!/usr/bin/env perl

use strict;
use warnings;

my %numbers = (
    "one",   1, "1", 1,
    "two",   2, "2", 2,
    "three", 3, "3", 3,
    "four",  4, "4", 4,
    "five",  5, "5", 5,
    "six",   6, "6", 6,
    "seven", 7, "7", 7,
    "eight", 8, "8", 8,
    "nine",  9, "9", 9
);

my $sum = 0;

open my $input, "input.txt";
while (my $line = <$input>) {
    my $i1 = 999;
    my $i2 = -999;
    my $k1 = "";
    my $k2 = "";
    foreach my $key (keys %numbers){
        my $i = index($line, $key);
        if ($i >= 0 and $i < $i1) { $i1 = $i; $k1 = $key; }
        $i = rindex($line, $key);
        if ($i >= 0 and $i > $i2) { $i2 = $i; $k2 = $key; }
    }
    $sum += $numbers{$k1}*10 + $numbers{$k2};
}
close $input;

print("${sum}\n");
