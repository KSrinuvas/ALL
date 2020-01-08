#!/usr/bin/perl
use strict;
use warnings;
#print "$ENV{$_}\n" for(keys %ENV);

#print"$_$/" for(keys %SIG);


# set the perl environment variable PATH
$ENV{'PATH'} = 'home/srinivas/PY_FILES';
print $ENV{'PATH'},"$/";


$ENV{'PATH'} = '/bin:/usr/bin:/usr/ucb';
print $ENV{'PATH'},"$/";



## printing of all env varibles in a perl

foreach (sort keys %ENV)	{
#		print"$_  = $ENV{$_}\n";
}

$ENV{'LOGNAME'} = "SRINIVAS";
print $ENV{'LOGNAME'},"$/";


my $a = $ENV{'LOGNAME'} = "VAS";

print"$a\n";

print $ENV{'HOME'},"$/";

print $ENV{'SHELL'},"$/";

my $b = $ENV{'EDITOR'} = "vi";

print"$b\n";




