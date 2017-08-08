#!/usr/bin/perl -w

use strict;
use warnings;

open(FILE,"<test.txt") or die "Could not open file $!";

print tell(FILE)."\n";
my $c = getc(FILE);
getc(FILE);
print tell(FILE)."\n";


close(FILE);
