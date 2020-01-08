#!/usr/bin/perl -w
use strict;

##------------------------------------------------------
##   Count the no of lines in a file 
##------------------------------------------------------
open(my $fh,'ovels.txt') || die "Not able to open 'ovel.txt' $!";
sub Count {
		my $fh = shift;
		my $count = 0;
		while (my $line = <$fh>)	{
				chomp($line);
				$count++;
		} ## count the no of lines in a file 
		return $count;
}
my $no_lines = Count($fh);
print "No of lines in a file is : $no_lines\n";
close($fh);
			
