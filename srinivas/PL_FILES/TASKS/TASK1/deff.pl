#!/usr/bin/perl -w
use strict;

my %hash;
my $key = 'hello';
$hash{$key} = undef;

=c
# various return values:
exists  $hash{$key};  # true
defined $hash{$key};  # false
$hash{$key};          # false

$hash{$key} = 0;
# various return values:
exists  $hash{$key};  # true
defined $hash{$key};  # true
$hash{$key};          # false
exists $hash{$foo};   # false
=cut


if (exists $hash{$key})	{
		print"true\n";
} else {
		print"false\n";
}


if (defined $hash{$key}) {
		print"true\n";
} else {
		print"false\n";
}


$hash{$key} = 0;


if (exists $hash{$key}) {
		print"true\n";
} else {
		print"False\n";
}


if (defined $hash{$key})	{
		print"true\n";
} else {
		print"false\n";
}
print "$hash{$key}\n";




my %hash1 =("1"=>undef);
print "exists:".exists($hash1{"1"})."\n";
print "defined:".defined($hash1{"1"})."\n";







