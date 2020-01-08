#!/usr/bin/perl -w
use strict;

my $ip = "my ip address is 178.123.153.02";

if ($ip =~ /\d+\.\d+\.\d+\.\d+/)	{
		print"$&\n";
}
