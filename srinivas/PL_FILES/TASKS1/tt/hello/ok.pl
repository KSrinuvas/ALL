#!/usr/bin/perl -w
use strict;

## scalar defult varible $_


$_ = "this is srinu 123";
print"$_\n";

if (/\w+$/) { print"$&\n"; }

my ($a,$b) = /(sr.*)\s+(\d+)/i;

print"name is :$a\n";
print"no is : $b\n";

print "new line \$/  : $/$/";
## pattern searchig spaces   $ARG


## NEW LINE IS \n    the input line separator new line defult $/

print"the pid of the perl process runing this script : $$\n"; 


print"REAL USER ID          : $<\n";

print"THE EFECTIVE USER ID  : $>\n";

print"THE REAL GROUP id OF PROCESS      : $(\n";
print"THE EFECTIVE  GROUP id OF PROCESS : $)\n";

print"the os is : $^O\n";

print"the script name is :  $0\n";
print"the script name is :  " . __FILE__ . "\n";


my @arr = (1..9);

$[ = 2;
print"first element in an array is : $arr[2]\n";
print"last element in an array is  : $arr[-1]\n";
#print"last element in an array is  : $arr[$#arr]\n";

#print" $] \n";

print"$[ \n";


#print"current value of the debugging flag : $^D\n";

#print"Extnded error message on some platforms : $^E\n";

print"the max sys file descriptor : $^F\n";

print"$^T\n";

my $at = time();
print"$at\n";

print"$^W\n";

print"$^X\n";
