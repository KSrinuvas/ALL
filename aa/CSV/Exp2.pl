#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV;

my $csv = Text::CSV->new({ sep_char => ',' });

my $file = $ARGV[0] or die;

open(IN,$file) || die "Not able to open file $!";



my $hash;
my @hh;
my $head = <IN>;
chomp($head);
if ($csv->parse($head)) {
		@hh = $csv->fields();
}
#print "@hh\n";

shift(@hh);

while (my $line = <IN>)	{
		chomp($line);
#		print "$line\n";
		if ($csv->parse($line))	{
				my @array = $csv->fields();
			#	print "@array\n";
				my $pri = shift(@array);
				for (my $i = 0; $i < @array; $i++)	{
					#	print "$array[$i]  ";
					$$hash{$pri}{$hh[$i]} = $array[$i];
				}
				#print "\n";
		} else {		
				warn "Line could not be parsed : $line\n";
		}
}

close(IN);

use Data::Dumper;

print Dumper($hash);

