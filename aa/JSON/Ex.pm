#!/usr/bin/perl
use strict;
use warnings;

package Ex;
sub new {
   my $class = shift;
	
   my $self = {
      name => shift,
      hobbies  => shift,
      birthdate  => shift,
   };
	
   bless $self, $class;
   return $self;
}

sub TO_JSON { return { %{ shift() } }; }

1;
