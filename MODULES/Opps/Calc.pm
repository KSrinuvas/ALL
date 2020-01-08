#!/usr/bin/perl

use strict; 
use warnings; 
  
# class with the name Employee 

package Calc; 

#package Test;  
# constructor with the name new 
sub new  
{             
    # shift will take package name  
    # and assign it to variable 'class' 
    my $class = shift;     
      
    # defining the hash reference 
    my $self = {                          
               }; 
      
    # Attaching object with class 
    bless $self, $class; 
      
    # returning the instance of class Employee 
    return $self;                          
}

sub Add { 
		my $self = shift;
		my $sum = 0;
		foreach my $var (@_)	{
					$sum += $var;
		}
		$self->{'aa'} =$sum;
		return $self->{'aa'};
}
 


package Ok;


sub new {
		my $class = shift;
		my $self = {};
		bless $self,$class;
		return $self;
}

sub Add {
		my $self = shift;
		my $sum = $_[0] + $_[1];
		return $sum;
}

1;

