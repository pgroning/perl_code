#!/usr/bin/perl -w

use strict;
use warnings;

my @matrix;
my ($i,$j);
my $n = 5;  # Number of positions
my $k = 5;  # Number of colors

my $nc = $k**$n; # Number of combinations
print "The number of combinations is $nc\n";
my @zeros = (0) x $n; # Create an array with n zero elements

for $i (0..($nc-1)) { # Initiate matrix with zeros
  for $j (0..($n-1)) {
    $matrix[$i][$j] = 0;
  }
}


for $i (1..($nc-1)) {

  for $j (0..($n-1)) { # Copy previous combination
    $matrix[$i][$j] = $matrix[$i-1][$j];
  }

  for $j (0..($n-1)) {
    if ($matrix[$i][$j] < ($k-1)) {
      $matrix[$i][$j]++;
      last;
    }
    else {
      $matrix[$i][$j] = 0;
    }
  }
}

for ($i=0;$i<$nc;$i++) {
  my $r = $matrix[$i];
  print "@$r\n";
}
