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

$i = 0;
for $j (0..($n-1)) {
    $matrix[$i][$j] = 0; # First combination
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
    print "$_ " foreach(@{$matrix[$i]});
    print "\n";
}

print "\n";
my $rnum = int(rand($nc));
my $guess_comb = $matrix[$rnum];
print "$_ " foreach(@{$guess_comb});
print "\n";

$i = -200;
print "$_ " foreach(@{$matrix[$i]});
print "\n";
matches($guess_comb,$matrix[$i]);

sub matches {

    my ($a,$b) = @_;

    my $match_ieqj = 0;
    my $match_inej = 0;
    
    for $i (0..($n-1)) {

	if (@$a[$i] == @$b[$i]) {
	    $match_ieqj++;
	}
	else {
	    for $j (0..($n-1)) {
		if (@$a[$i] == @$b[$j]) {
		    $match_inej++;
		    last;
		}
	    }
	}
    }

    print $match_ieqj . " " . $match_inej . "\n";
    #print @$a[0];
    
}
