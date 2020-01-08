#!/usr/bin/perl -w
use strict;
my %hash;
$hash{'a'} = 10;
$hash{'b'} = 20;
while (my ($k,$v)= each (%hash))	{
#		print"$k => $v\n";
}
	


## hash referance 
my $hash_ref;

$$hash_ref{'c'} = 40;
$$hash_ref{'d'} = 80;

while (my ($k1,$v1) = each (%{$hash_ref})) {
#		print"$k1 => $v1\n";
}	



my %hash1 = ('aa'=>55,'bb'=>66);

## hash referance 

my $hash_ref1 = {'cc'=>77,'dd'=>88};


while (my ($k2,$v2) = each(%hash1)) {
#		print"$k2 => $v2\n";
}



while (my ($k3,$v3) = each(%{$hash_ref1})) {
#		print"$k3 => $v3\n";
}




## add to the key and value pair hash1

$hash1{'ss'} = 100;
$hash1{'yy'} = 200;



## add to the keys and values pair to the hash_ref1

$$hash_ref1{'ll'} = 300;
$$hash_ref1{'mm'} = 600;


while (my ($k4,$v4) = each (%hash1)) {
		print"$k4 => $v4\n";
}

print"\n\n";
while (my ($k5,$v5) = each (%{$hash_ref1})) {
		print"$k5 => $v5\n";
}





