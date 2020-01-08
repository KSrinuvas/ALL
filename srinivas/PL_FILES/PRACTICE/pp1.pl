#!/usr/bin/perl -w
use strict;

sub log_with_timestamp {
   my $timestamp = get_timestamp();
   print $timestamp, ' ', @_, "\n";
#	 print $timestamp;
}




sub get_timestamp {
		my $time = localtime();
		return $time; 
}

log_with_timestamp(10,20,30,40);


printf ("this is %3f\n", 3);

