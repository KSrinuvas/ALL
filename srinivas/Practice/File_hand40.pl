#!/usr/bin/perl -w
use strict;

#--------------------------------------------------------------------
## file handling read and write and append 
#--------------------------------------------------------------------

## read file handling  <
## write file handling >
## appending file handling >>

open(IN,'ovels.txt') || die "Not able to open 'ovels.txt' $!";

while (my $line = <IN>)	{
		chomp($line);
		print"$line\n";
}
close(IN);

## write a file 

open(OUT,">ref.txt") || die "Not able to open 'ref.tex' $!";

print OUT "this is a cat\n";
print OUT "that is a dog\n";
print OUT "there are my friends\n";
print OUT "that is my pen\n";

close(OUT);




## append 

open(OUT1,">>ref.txt") || die "Not able to open 'ref.tex' $!";


print OUT1 "this is my appending line\n";
print OUT1 "append the data using >> mode\n";

close(OUT1);



