#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV;

my $csv = Text::CSV->new();


open(OUT,">out.csv") || die "Not able to open file $!";

my @fields = ('name','age','salary','exp');

if ($csv->combine(@fields)) {
		my $str = $csv->string;
	#	print "$str\n";
		print OUT "$str\n";
} else {
		my $err = $csv->error_input;
		print " combine () failed on argument : ", $err, "\n";
}

open (CSV,'/home/srm/aa/CSV/Write/aa.txt') || die "Not able to open file $!";

while (<CSV>) {
		chomp($_);
    if ($csv->parse($_)) {
        my @columns = $csv->fields();
				print "@columns";
				my $name = $columns[0];
				my $age = $columns[1];
				my $salary = $columns[2];
				my $exp = $columns[3];
				
				# Now create an array containing the output data.
				my @fields = ($name,$age,$salary,$exp);
				
				if ($csv->combine(@fields)) {
						my $str = $csv->string;
					#	print "$str\n";
						print OUT "$str\n";
				} else {
						my $err = $csv->error_input;
						print " combine () failed on argument : ", $err, "\n";
				}
		
		}
#		print"\n";
}
