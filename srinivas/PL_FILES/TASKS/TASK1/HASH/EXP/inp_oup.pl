#!/usr/bin/perl -w
use strict;


## input and output file handling
my $filename ='/home/srm/srinivas/PL_FILES/TASKS/TASK1/HASH/REFER/tt'; 
open my $fh, '<', $filename or die "Can't open $filename: $!\n";

my (@old_file_lines,@new_file_lines);
while ( <$fh> ) {
  	chomp;
		print"$_\n";
}


#sorting 

my %hash = ( bb=>20,cc=>40,aa=>80,dd=>55 );


foreach my $key (sort(keys %hash))	{
		#print "$key => $hash{$key}\n";
}


#print "$_ : $hash{$_}\n" for (sort (keys %hash));

##regexp

my $line = "hello this is srinu 12345";

if ( $line =~ m/\b(\d{5})\b/ ) {
		print"$1\n";
}




