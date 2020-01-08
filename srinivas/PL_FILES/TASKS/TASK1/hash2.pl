#!/usr/bin/perl -w
use strict;

=c
my %countries = qw(England English 
                   France French 
                   Spain Spanish 
                   China Chinese 
                   Germany German);
=cut
my %countries =  ( England => 'English',
            France => 'French', 
    	           Spain => 'Spanish', 
    	           China => 'Chinese', 
            Germany => 'German');

#Look-up Perl hash values

my %hash1 = %countries;
print "$hash1{France}\n";



while (my ($k,$v) = each (%countries))	{
		print"$k => $v\n";
}

## hash decalaration 

my %hash; 

## add the new elements to the hash1

$hash1{'India'} = 'Hindi';


if (exists $hash1{'India'}) {
		print"yes it is exsits\n";
} else {
		print"not exists\n";
}




## remove the single key and value pair 

delete $hash1{'India'};
if (exists $hash1{'India'}) {
		print"yes it is exsits\n";
} else {
		print"not exists\n";
}

$hash{'India'} = 'Telugu';

print "$hash{'India'}\n";
## modify the elements 

$hash{'India'} = 'Hindi';

print "$hash{'India'}\n";






## loop over perl hashelements


foreach my $key (keys %hash)	{
		print"$key => $hash{$key}\n";
}







