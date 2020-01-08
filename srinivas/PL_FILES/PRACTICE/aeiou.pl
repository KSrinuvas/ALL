#!/usr/bin/perl -w
use strict;

## if i want to collect the aeiou and write a file return 1

## write a file ovels.txt
open(OUT,'>ovels.txt') || die "Not able to write a file $!";


while (my $line = <DATA>)	{
		chomp($line);
		next if ($line =~ /^$/);
		next if ($line =~ /^\#/); ## skip the commenting lines in a file 
	#	next unless ($line =~ /\D+/); ## skip the digits of a file 
		next if ($line =~ /\d+/);  ##skip the  digits of a file 
		next if ($line =~ /^[[:punct:]]/); # skip the puctution charaters in a file 
		print"$line\n";  
		my $ret = aa($line); 
		if ($ret == 1)	{
				print OUT "$line\n";
		}
}



sub aa {
		my $cc = shift;
		if ($cc =~ /[aeiou]/)	{
				return 1;
		} else {
				return 0;
		}
}

close(OUT);























__END__
q
w
e
r
t
y
u
i
o
p
a
s
d
f
g
h
j
k
l
z
x
c
v
b
n
m


#
1
2
5
{
}
*


&
#
!~
~

^
