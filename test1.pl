#!/usr/bin/perl -w

use strict;
use warnings;

print "The name of the file: ".__FILE__."\n";

my @days = qw/Mon Tue Wed Thu Fri Sat Sun/;
#$[ = 1;
print $days[1]."\n";

3 >= 3 ? print "True\n" : print "False\n";


__END__
my @a = qw(hello world);
my $r = &myfun(@a);
print %$r;

#my $r = &myfun(@a);


sub myfun {

  my $x = $_[0];
  my $y = $_[1];
  print "\u$x \u$y\n";

  my $r = {$y,$x};
  return $r;
  
  #my @a = ($y,$x);
  #print join(" ",@a) . "\n";

  #return \@a;
}

#&myfun("hello");
