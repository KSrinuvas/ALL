#!/usr/bin/perl
use strict;
use warnings;

use strict; 
use warnings; 

use Emp;

  
my $object = new Employee(1, "Geeks", "forGeeks"); 
  
# object here is a hash to a reference 
print("$object->{_firstName} \n");              
print("$object->{_serialNum} \n");
print("$$object{_lastName} \n");
