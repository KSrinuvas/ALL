#!/usr/bin/perl -w
## hash_referances 

## hash referance 
my $hash_ref = {'a'=>10,'b'=>20};

## hash 
my %hash = ('bb' =>40,'dd'=>60);

## i will convert the hash_ref to hash this is called dereferance quantifier

my %hash_deref = %{$hash_ref};

## i will convert the hash to hash referance 

my $hash_referance = \%hash;


while (my ($k,$v) = each(%hash_deref)) {
#		print"$k => $v\n";
}

while (my ($k1,$v1) = each(%{$hash_referance}))	{
#		print"$k1 => $v1\n";
}



### add the keys and values to the hash referance 

$$hash_referance{'cc'} = 70;
$$hash_referance{'aa'} = 30;



### add the keys and values to the hash_deref

$hash_deref{'c'} = 25;
$hash_deref{'d'} = 28;


## use foreach loop to perint the keys and values pairs 

### hash_dereferances

foreach my $kk (keys %hash_deref) {
		print"$kk => $hash_deref{$kk}\n";
}

print"\n\n\n";
### hash_referance

foreach my $kkk (keys %{$hash_referance}) {
			print"   $kkk => $$hash_referance{$kkk}\n";
}


