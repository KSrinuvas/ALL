#!/usr/bin/perl -w
use strict;

use Data::Dumper;
my %hash = ('a' => {'bb' => {'cc' => 100},'dd' => 550});


#print Dumper(\%hash);

## bulid the same hash is dyanamicaly 

my %hash1 = ();

$hash1{'a'} = {'bb' => {'cc' => 100},'dd' => 550}; ## = asign used once only 



$hash1{'a'}{'zz'} = 200;

#$hash1{'a'} = 246;  ## do you want use like this = asign again it will updated 246

#print Dumper(\%hash1);




## hash referances 

## to create a hash referance 

my $hash_ref  = {'a' => 1,'b' => 2,'c' => 3};

#print Dumper($hash_ref);


## above hash_ref to create a dynamic way 


my $hash_ref1;

$hash_ref1->{'a'} = 1;
$hash_ref1->{'b'} = 2;
$hash_ref1->{'c'} = 3;

#print Dumper($hash_ref1);




## using array functions to bulid the hash

my %hash_2 = ('list' => {'a' => [1,2,3],'list' => {'b' => [5,6,7]}});

print Dumper(\%hash_2);





## i want to added to the 4,5,6,7 in a 'a' key 

my @end = (4,5,6,7);
push(@{$hash_2{'list'}{'a'}},@end);

## i want to added to the 1,2,3,4 in a 'b' key

my @str = (1,2,3,4);
unshift(@{$hash_2{'list'}{'list'}{'b'}},@str);

print "updated hash_2 is :\n";

print Dumper(\%hash_2);



## i dont required 3 element in a 'a' key

splice(@{$hash_2{'list'}{'a'}},2,1);

## i dont required 4 element in a 'b' key

splice(@{$hash_2{'list'}{'list'}{'b'}},3,1);

print Dumper(\%hash_2);



## i dont required first element in a 'a' key

my $fir_ele = shift(@{$hash_2{list}{a}});

## i dont required last element in a 'b' key

my $las_ele = pop(@{$hash_2{list}{list}{b}});

print "first element in 'a' key is removed : $fir_ele\n";

print "last element in 'b' key is removed : $las_ele\n";


print Dumper(\%hash_2);



## i want to replace the 2 in 'srinu' in both 'a' key and 'b' key 

splice(@{$hash_2{list}{a}},0,1,'srinu');

splice(@{$hash_2{list}{list}{b}},1,1,'srinu');



print Dumper(\%hash_2);



## defined and exists functions 




if (exists $hash_2{'dd'})	{
		print"the key is exists\n";
} else {
		print"the key is not exists\n";
}





if (defined $hash_2{list})	{
		print" the value is defined\n";
} else {
		print" the value is not defined\n";
}





