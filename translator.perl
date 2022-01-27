#!/usr/bin/perl
use strict; 
use warnings;

my $file = 'ExampleFiles/ExampleFile.mr';#'$ARGV[0]';
 
open(FH , $file) or die $!;

# $line =~ s/regex/substition/g # title
    
close(FH);
