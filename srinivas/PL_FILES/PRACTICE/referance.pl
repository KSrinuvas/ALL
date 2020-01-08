#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
### circular referance 

my $ref = "hello";

my $foo = \$ref;

print "$foo\n";
print Dumper($foo),"\n";


## referance to function 

sub hi {
 			my @arr = @_;
			foreach (@arr)	{
		 			print"$_\n";
			}
			perl();
}


sub perl {
			my %hash = @_;
			while (my($k,$v) = each(%hash))	{
							print "$k ==> $v\n";
			}
}


my $arrr = [1..10];

hi(@{$arrr});




my @arr11 = qw\srinu vas raju good\;

my $reee = \@arr11;

hi(@{$reee});


my %ha =('perl'=>10,'python'=>20,'tcl'=>30);


perl(%ha);



print "\n\n\n";


## referance hash 

my $ref_hash = {'name'=>'srinu','city'=>'kkd'};

perl(%{$ref_hash});

