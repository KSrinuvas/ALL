#!/usr/bin/perl

$ip = "my ip address is 172.168.02.01";

$ip =~ s/(\d+)(\.\d+\.\d+\.\d+)/182$2/;

print "$ip\n";

$ip = "my ip address is 172.168.02.01";


$ip =~ s/(\d+\.\d+\.\d+)(\.\d+)/$1.153/;
print "$ip\n"; 


