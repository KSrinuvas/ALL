#!/usr/bin/perl
use strict;
use warnings;



package Emp;
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

package main;
use JSON;

my $JSON = JSON->new->utf8;
$JSON->convert_blessed(1);

my $e = new Emp( "sachin", "sports", "8/5/1974 12:20:03 pm");
my $json = $JSON->encode($e);
print "$json\n";

