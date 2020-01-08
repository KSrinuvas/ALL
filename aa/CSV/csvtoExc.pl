#!/usr/bin/perl
use strict;
use warnings;
use Text::CSV;

## read csv file and build the hash

my $csv = Text::CSV->new({ sep_char => ','});

open(IN,'Emp.csv') || die "Not able to open file $!";


my $Hd = <IN>;
chomp($Hd);
print "$Hd\n";
my @head;
if ($csv->parse($Hd)) {
		@head = $csv->fields();
} else {
		warn "line is not parse\n";
}

my $dd = shift(@head);

print "@head\n";

my $hash;
while (my $line = <IN>) {
		chomp($line);
		if ($csv->parse($line)) {
				my @data = $csv->fields();
				my $pri_key = shift(@data);
				if (@head == @data) {
						for(my $i = 0; $i < @head; $i++)	{
								$$hash{$pri_key}{$head[$i]} = $data[$i];
						}
				}
		} else {
				warn "line is not parse\n";
		}
}


use Data::Dumper;

print Dumper($hash);



## write a excel format 


use Excel::Writer::XLSX;

my $wb = Excel::Writer::XLSX->new('abc.xlsx');
my $ws = $wb->add_worksheet('DATA');

$ws->set_column(0,10,20);

my $format = $wb->add_format( color => 'red', size => 14, align => 'center');
my $format1 = $wb->add_format( color => 'blue', size => 12);

my $rr;
my $row = 0;
$ws->write(0,0,"Emp_id",$format);

while (my ($k,$v) = each (%{$hash}) ) {
#		print "$k => $v\n";
		if (ref($v) eq 'HASH') {
		#		print "$k\n";
				my $col = 1;
				foreach my $k1 (sort(keys %{$v})) {
#						print "$$v{$k1}\n";
						if ($row == 0)	{
								$ws->write($row,$col,$k1,$format);
						  	$ws->write(1,$col,$$v{$k1},$format1);
								$ws->write(1,0,$k);
								$col++;
								next;
						}
						$ws->write($row+1,$col,$$v{$k1},$format1);
						$ws->write($row+1,0,$k);
						$col++;
				}
				$row++;
		}
}


