#!/usr/bin/env perl

use strict;
use warnings;

my $sum = 0;

open my $input, "input.txt";
while (my $line = <$input>) {
    my ($n1) = ($line =~ m/^[^\d]*(\d).*$/);
    my ($n2) = ($line =~ m/^.*(\d).*$/);
    $sum += $n1 * 10 + $n2;
}
close $input;

print("${sum}\n");
