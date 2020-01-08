#!/usr/bin/perl
use strict;
use warnings;

package Person;

sub new {
   my $class = shift;
   my $self = {
      _firstName => shift,
      _lastName  => shift,
      _ssn       => shift,
   };
   # Print all the values just for clarification.
   print "First Name is $self->{_firstName}\n";
   print "Last Name is $self->{_lastName}\n";
   print "SSN is $self->{_ssn}\n";
   bless $self, $class;
   return $self;
}



sub Set_F_name {
	my ($self, $name) = @_;
	$self->{_firstName} = $name if (defined $name);
	return $self->{_firstName};
}

sub Get_Last_name {
	my ($self) = @_;
	return $self->{_lastName};
}




sub Avg {
	my ($self , $ref_arr) = @_;
	my $avg = 0;
	my $sum = 0;
	my $len = 0;
	foreach my $k (@{$ref_arr})	{
		$sum += $k;
		$len += 1;
	}
	$avg = $sum/$len;
	return $avg;
}





sub Add {
	my ($self,$a,$b) = @_;
	my $sum = $a + $b;
	return $sum;
}


sub Fact {
	my ($self,$num) = @_;
	my $fac = 1;
	my $i = 1;
	while ($i <= $num) {
		$fac *= $i;
		$i++;
	}
	return $fac;
}















			

	






1;
