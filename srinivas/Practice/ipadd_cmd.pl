#!/usr/bin/perl -w
use strict;


## change the ip address using command line argument
my $ip = "my ip address is 192.123.15.06";

print"$ip\n";
## i want to change 192 to the 178 through the cmd argument

$ip =~ s/\d+\.(\d+\.\d+\.\d+)/$ARGV[0].$1/;

print"$ip\n";

