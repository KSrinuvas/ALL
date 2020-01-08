#!/usr/bin/perl -w
use strict;

open(my $fh,"ref.txt") || die "Not able to open 'ref.txt' $!";

sub Count_Words  {
		my $fh = shift;
		my $count = 0;
		while (my $line = <$fh>)	{
				chomp($line);
				foreach (split(/ /,$line))	{
						$count++;
				} ## count the no words in a file 
				#print"$line\n";
		}
		return $count;
}
my $no_words = 	Count_Words($fh);
print "NO of words in a file is : $no_words\n";
close($fh);

