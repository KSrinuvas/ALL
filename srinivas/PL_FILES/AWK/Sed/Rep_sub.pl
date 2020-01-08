#!/usr/bin/perl -w
use strict;

my $file = '/home/srm/srinivas/PL_FILES/AWK/geekfile.txt';

## read file greekfile.txt

open(IN,"$file") || die "Not able to open '$file' $!";

while (my $line = <IN>)	{
		chomp($line);
		#print"$line\n";
		Rep_data($line);  ## Rep_data function call
}


## using sed function 
## Repalacing and substuting string 

#$sed 's/unix/linux/' geekfile.txt

### i want to repalce the unix to the linux one time only match the line word 


sub Rep_data {
		my $line = shift;
		print"$line\n";
}

		




close(IN);

