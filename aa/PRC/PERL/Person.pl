#!/usr/bin/perl
use strict;
use warnings;

use Person;


my $a = new Person('ss','pp',22);

my $se = $a->Set_F_name("Robo");


print "first name is : $se\n";


my $ls = $a->Get_Last_name();

print "last name is : $ls\n";



my @aa = (10,20,30,40,50,60);


my $avg = $a->Avg(\@aa);

print "avg value is : $avg\n";



my $sum = $a->Add(10,20);
print "sum of two values is : $sum\n";



print "Enter the factorial of x value is : ";

my $num = <STDIN>;
chomp($num);

my $ff = $a->Fact($num);


print "factorial of $num is : $ff\n";






