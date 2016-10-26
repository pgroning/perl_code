#!/usr/bin/perl -w

use strict;
use warnings;

my ($sec,$min,$hour) = localtime();

printf("%02d:%02d:%02d\n",$hour,$min,$sec);
