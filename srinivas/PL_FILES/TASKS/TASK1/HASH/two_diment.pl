#!/usr/bin/perl -w
use strict;

#!/usr/bin/perl
use strict;
use warnings;
 
use Data::Dumper;
 
my %grades;
$grades{"Foo Bar"}{Mathematics}   = 97;
$grades{"Foo Bar"}{Literature}    = 67;
$grades{"Peti Bar"}{Literature}   = 88;
$grades{"Peti Bar"}{Mathematics}  = 82;
$grades{"Peti Bar"}{Art}          = 99;
 
print Dumper \%grades;
print "----------------\n";

my %hash = ('Foo Bar' => {Mathematics=>97,Literature=>67},'Peti Bar'=>{Mathematics=>82,Literature=>88,Art=>99});

print Dumper(\%hash);

my $aa;

$$aa{'a'} = 10;
$$aa{'b'} = 20;

print Dumper $aa;

my $hash_ref;

$$hash_ref{"Foo Bar"}{Mathematics}   = 97;
$$hash_ref{"Foo Bar"}{Literature}    = 67;
$$hash_ref{"Peti Bar"}{Literature}   = 88;
$$hash_ref{"Peti Bar"}{Mathematics}  = 82;
$$hash_ref{"Peti Bar"}{Art}          = 99;



print Dumper $hash_ref;


### dereferance of hash_ref

my %hash = %{$hash_ref};


while (my ($k,$v) = each (%hash))	{
		print "$k => {\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						print"              $k1 => $v1\n";
				}
				print"           }\n";
		}
}




