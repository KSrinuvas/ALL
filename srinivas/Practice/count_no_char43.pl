#!/usr/bin/perl -w
use strict;

##----------------------------------------------------------
## Count the no of charaters in a file 
##----------------------------------------------------------


open(my $fh,"ref.txt") || die "Not able to open 'ref.txt' $!";


sub Count_ch {
		my $fh = shift;
		my $count = 0;
		while (my $line = <$fh>)	{
				chomp($line);
        print "$line\n";
				$line = join" ",split(/ /,$line);
        print "$line\n";
				foreach (split('',$line))	{
						$count++;
				}
		}
		return $count;
}

my $no_char = Count_ch($fh);

print "no of characters in a file is : $no_char\n";

close($fh);
