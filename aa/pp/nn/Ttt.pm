#!/usr/bin/perl
## define a pakage name Ttt;
package Ttt;


sub new {
	my $class = shift;
	my $self = {};
	bless($self,$class);
  return $self;
}


sub Add {
		my $self = shift;
		my $sum = 0;
		foreach my $var (@_) {
				$sum += $var;
		}
		return $sum;
}
1;

