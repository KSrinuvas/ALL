#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
# @array functions 

my @array = (1,2,3,4,5);

## always array index no start with 0

print "$array[0]\n";

## array functions 

## shift , unshift ,pop, push

shift(@array);

unshift(@array,100);

pop(@array);

push(@array,6,7,8,9);

print "@array\n";




## referances    ### -> = dereferance quntifier

my $arr_ref = \@array;
print Dumper($arr_ref),"\n";


## dereferance 

my @arr = @{$arr_ref};

print "@arr\n";


## array referance 

my $arr__ref = [1,2,3,4,5];

foreach (@{$arr__ref})	{
		print "$_\n";
}


### replace the array elements by using splice function 



my @arr1 = (1,2,3,4,10,20,30,8,9,10);

splice(@arr1,4,3,5,6,7);

print "@arr1\n";



### transfer string into array by using split 

my $str = "this is srinu\n";

my @at = split(" ",$str);

print "@at\n";


print "$at[0]\n";


## transfer the array into the str by using join

my $str1 = join("___",@at);

print "$str1\n";


### array slicing 

my @aa = (1,2,3,4,10,11,12);

my @aa1 = @aa[0..3];

my @aa2 = @aa[4..$#aa];


push(@aa1,5,6,7,8,9,@aa2);

print "@aa1\n";





##### associative array 

my @ass_array = [1,2,3,4,5,6,7];


print Dumper(@ass_array),"\n";


#### $[ - 



my @arr5 = (1..10);


#$[ = 2;  ## index no start with 2

#print "first value of the array is : $arr5[2]\n";





### array of array creation

my @matrix;


$matrix[0][0] = 'zero_zero';
$matrix[1][1] = 'one_one';
$matrix[1][2] = 'one_two';
$matrix[1][3] = 'one_three';
$matrix[2][1] = 'two_one';
$matrix[2][2] = 'two_two';


print Dumper(\@matrix),"\n";




#####   array of array 

my @array_array = ([1,2,3],[4,5,6],[7,8,9,['srinu','vas',['hello','how']]]);

print "$array_array[0]->[0]\n";

## to print vasu 
#### ass the ele for referance 
print "print srinu  $array_array[2]->[3]->[0]\n";
print "print hello  $array_array[2]->[3]->[2]->[0]\n";


print Dumper(\@array_array),"\n";







## added elemts to the array of array 




$array_array[0]->[3] = 'srinu';
$array_array[1]->[3] = 'srinu';

$array_array[2]->[3]->[2]->[2] = 'srinu';

print Dumper(\@array_array),"\n";



























