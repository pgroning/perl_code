#!/usr/bin/perl -w

use strict;
use warnings;

use English;

print $PERL_VERSION . "\n";
print $] . "\n";
print $^O . "\n";

print "\n";
# Examples

my $str = "  hello perl   ";
print $str."."."\n";

# remove any leading spaces
$str =~ s/^\s+//;
print $str."\n";

# remove any trailing spaces
$str =~ s/\s+$//;
print $str."\n";

$str = "  hello perl   ";
print $str."."."\n";

# remove both leading and trailing spaces
$str =~ s/^\s+|\s+$//g; # | = or
print $str."."."\n";

# Squash duplicates
$str =~ tr/a-z/a-z/s;
print $str."."."\n";

print "\n"x2;
$str = "Cats go Catatonic\nWhen given Catnip";

my ($start) = ($str =~ /\A(.*?)\s+/);
my @lines = $str =~ /^(.*?) /gm;
print $str."\n";
print $start."\n";
print "@lines\n";

print "\n";
my %h = ("Per" => 20, "Jan" => "banan", "Peter" => 0);
#print sort values %h;
print $h{'Jan'} . "\n";

print "\n";
my $res = qx(pwd);
$res =~ s/\n$//;
print "$res\n";


# <==>
# redo, last, continue, next
# goto EXPR
# tell


#Regexp symbol matches
# ^      BOL
# $      EOL
# .      any single character except newline
# [...]  any single character in brackets
# [^...] any single character not in brackets
# *      0 or more occurences of preceding expression
# +      1 or more occurences
# ?      0 or 1 occurences
# {n}    exactly n number
# {n,}   n or more
# {n,m}  at least n and at most m
# a|b    either a or b
# \w     word characters
# \W     nonword characters
# \s     whitespace
# \S     nonwhitespace
# \d     digits. Equivalent to [0-9]
# \D     nondigits
# \A     beginning of string
# \Z     end of string
# \G     point where last match finished
# \b     word boundaries. Matches backspace when inside brackets
# \B     nonword boundaries
# \n     new line
# \t     tab
