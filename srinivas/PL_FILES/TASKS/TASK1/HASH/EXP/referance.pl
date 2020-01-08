#!/usr/bin/perl -w
use strict;

my $ss = 10;
my $cercular_ref = \$ss;
#print"circular ref  $cercular_ref\n";
#print"dereferance of cir_ref : ${$cercular_ref}\n";

my $arr = [ qw(hello hi good 1 2 3 4 ok) ];

#print "array referance : $arr\n";
#print" dereferance of array : @{$arr}\n";

##hash

my $hash_ref = { qw(a 10 b 20 c 30 d 40 e 50) };

#print"hash referance : $hash_ref\n";

#print"dereferance of hash ",%{$hash_ref},"\n";





## 

my @arr = ($ss,['hello','hi','good',1,2,3,4,'ok',{a => 10, b => 20 ,c => 30,d => 40, e => 50}]);


use Data::Dumper;


push(@arr,11,12);


## add the elements to the 1 array referance end add 100,200,300


push(@{$arr[1]},100,200,300);






## update the key e value is 500


$arr[1]->[8]->{e} = 500;

## delete the d key 
delete $arr[1]->[8]->{d};





## i want to add hash referance add new key and array referance 

$arr[1]->[8]->{colors} = [ qw(red black blue green orange) ];



#print Dumper \@arr;



## accessing the array 

foreach my $kk (@arr)	{
		if (ref($kk) eq 'ARRAY')	{
				foreach my $kk1 (@{$kk})	{
						if (ref($kk1) eq 'HASH')	{
								while(my ($k,$v) = each (%{$kk1})) {
										if (ref($v) eq 'ARRAY')	{
												print"         $k => [\n";
												foreach my $kk2 (@{$v})	{
														print"                $kk2\n";
												}
												print"                ]\n";
										} else {	
												print"         $k => $v\n";
										}
								}
						} else {
								print"    $kk1\n";
						}
				}
		} else {
				print"$kk\n";
		}
}





####


#my @arr = ($ss,['hello','hi','good',1,2,3,4,'ok',{a => 10, b => 20 ,c => 30,d => 40, e => 50,
										{colors => ['red', 'black', 'blue', 'green', 'orange']},100,200,300])


## to build the dynamic way of @arr 

my @arr_dy;


$arr_dy[0] = $ss;
$arr_dy[1] = "hello";
$arr_dy[2] = "hi";
$arr_dy[3] = "good";
$arr_dy[4] = 1;
$arr_dy[5] = 2;
$arr_dy[6] = 3;
$arr_dy[7] = "ok";
$arr_dy[8]->{'a'} = 10;
$arr_dy[8]->{'b'} = 20;
$arr_dy[8]->{'c'} = 30;
$arr_dy[8]->{'d'} = 40;
$arr_dy[8]->{'e'} = 50;
$arr_dy[8]->{'colors'} = ['red','black','green','orange'];




print Dumper \%arr_dy;














