#!/usr/bin/perl -w
use strict;

#repalce the srinu into the vas
my $line = "my name is srinu";

print"$line\n";

$line =~ s/srinu/vas/;

print"$line\n";



## change the op address 2nd digits to the replace 168

my $ip = "my ip address is 172.85.69.05";

print"$ip\n";
$ip =~ s/(\d+)\.\d+\.(\d+\.\d+)/$1.168.$2/;

print"$ip\n";

