#!/usr/bin/perl -w
use strict;


##-------------------------------------------------------------
## array function pop,push,shift,unshift,splice,slicing
##-------------------------------------------------------------


my @array = (1..5);

## shift is used for remove the first element in an array and returns the removed element 

print"array is : @array\n";
my $fe = shift(@array);

print "remove the first element in an array is : $fe\n";


## pop is used for rmove the last element in an array and returns the removed element
my $le = pop(@array);
print "remove the last element in an array is : $le\n";

## unshfit used for added to the first element in an array and return to the array length 

my $arr_le = unshift(@array,$fe);

print"array length is : $arr_le\n";

## push used for add to the last element of an array and returns to the array length

my $arr_le1  = push(@array,$le);

print "array length is : $arr_le1\n";



print "finally array is : @array\n";






###### using splice funct

my @arr = (1,2,3,10,20,30,7,8,9);

## splice fun is used for replacing an array elements and returns the removef elements 

## splice(array,index,length,list);

my @rele = splice(@arr,3,3,(4,5,6));


print"@arr\n";

print"removed elements is : @rele\n";





#### array slicing by using index no and range operator

my @aa = (1..10);

my @f_arr = @aa[0..4];
my @s_arr = @aa[5..$#aa];
print " array is        : @aa\n";
print"first slicing an array : @f_arr\n";
print"second slicing an array : @s_arr\n";










