#!/usr/bin/perl

use strict;
use warnings;

# Open the translation file for reading
open my $dict_fh, '<', 'dicLatex' or die "Can't open dicLatex: $!";

# Read the translations into a hash
my %translation;
while (my $line = <$dict_fh>) {
    chomp $line;
    next if $line =~ /^\s*(?:#|$)/; # skip null lines and lines starting with #
    my ($key, $value) = split / : /, $line;
    $translation{$key} = $value;
}

# Open the file to be translated for reading
# '$ARGV[0]';
open my $input_fh, '<', 'exfile.mr' or die "Can't open exfile.mr: $!";

# Open the output file for writing
open my $output_fh, '>', 'exfile.md' or die "Can't open exfile.md: $!";

# Perform the translation and write to the output file
while (my $line = <$input_fh>) {
    foreach my $key (keys %translation) {
        $line =~ s/(?<!\w)\Q$key\E(?!\w)/$translation{$key}/g;
    }
    print $output_fh $line;
}

$output_fh =~ s/\*\*\s*(\w+)\s*\*\*/**$1**/g; # bold words
$output_fh =~ s/RED\s*(\w+)\s*/<span style="color:red">$1<\/span> /g; #red
$output_fh =~ s/\\(\w+)\s*/\$\\$1\$/g;

# Close the files
close $dict_fh;
close $input_fh;
close $output_fh;

