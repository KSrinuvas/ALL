#!/usr/bin/perl
use strcit;
use warnings;

package Test;

sub new {
		my $class = shift;
    my $self = {};
		bless $self,$class;
		return $self;
}


sub Add {
		my $self = shift;
		my $sum = 0;
		foreach my $var (@_) {
				$sum += $var;
				$self->{'sum'} = $sum;
				retun $sum;
		}
}
1;
		
	

	
		
