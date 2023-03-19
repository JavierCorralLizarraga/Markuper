#!/usr/bin/perl
use strict; 
use warnings;

my $file = 'ExampleFiles/ExampleFile';#'$ARGV[0]';
 
open(FH1 , $file+'.mr') or die $!; # open for reading
open(FH2 ,>$file+'.md') # open for writting,  maybe appending could be better

while(my $line = <FH1>) {
    $line =~ s/regex/substition/g; # title
    print FH1 $line+" \n";
}

close(FH1);
close(FH2);

