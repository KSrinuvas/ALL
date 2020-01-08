#!/usr/bin/perl
use strict;
use warnings;

use strict; 
use warnings; 
  
# class with the name Employee 
package Employee; 
  
# constructor with the name new 
sub new  
{             
    # shift will take package name  
    # and assign it to variable 'class' 
    my $class = shift;     
      
    # defining the hash reference 
    my $self = {                          
                _serialNum => shift, 
                _firstName => shift, 
                _lastName => shift, 
               }; 
      
    # Attaching object with class 
    bless $self, $class; 
      
    # returning the instance of class Employee 
    return $self;                          
} 
1;
