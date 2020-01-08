#!/usr/bin/perl
#use strict;
#use warnings;

@arr = (1..20);




$size = @arr;

print "$size\n";

$aa = scalar @arr;

print "$aa\n";

$cc = $#arr+1;

print "$cc\n";



@arr = (1..10);

print "@arr\n";

print " first element in the array : $arr[0]\n";

print " last element in the array : $#arr\n";

### array functions 

# shift unshift pop push 

print "$arr[9]\n";


## array slicing 

@arr = (1..10);

@slice_arr = @arr[4..8];

print "@slice_arr\n";


## replace elements 

## splice 

@rele = splice(@arr,4,4,10,20,30,40);

print "@arr \n";

print "@rele\n";

## trf str into arr
$str = "this is srinu";

@aa = split(" ", $str);
print "srinu is eq to $aa[2]\n";
print "@aa\n";

$ss = join("__",@aa);

print "$ss\n";




@arr = (2,3,5,6,4,1,7,9,8);

print  sort(@arr),"\n";


foreach (sort @arr) {
	print "$_\n";
}



## spical varible 
print "\n\n\n\n";


$[ = 2;

print "$arr[2]\n";



## merging of array 

@arr = (1,2,3,(4,5,6));

print "@arr\n";

@arr1 = (@arr,25,35);

print "@arr1\n";

@arr2 = (@arr,@arr1);

print "@arr2\n";


