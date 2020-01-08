#!/usr/bin/perl -w
use strict;




# Perl program to illustrate 
# the undef() function 

# a variable with initial value 10 
my $k = 10; 

# displaying its initial value 
print "The value of variable k is ${k}\n"; 


# undef the variable 
$k = undef(); 

# value after the undef function 
print "The value of variable k is ${k}\n"; 

