#!/usr/bin/perl -w

use strict;
use warnings;

my @primes;
my $i;
my $n = $ARGV[0];

for ($i=2; $i<=$n; $i++) {
#for $i (2..$n) {
  push(@primes,$i) if (isprime($i));
}

print "$_ " foreach(@primes);
print "\n";

sub isprime {

  my $n = $_[0];

  my $i = 2;
  while ($i < $n) {
    last if ($n % $i == 0);
    $i++;
  }
  $i == $n ? return 1 : return 0;

}
