#!/usr/bin/perl
use strict;
use warnings;
$_ = "Nobody wants to hurt you...'cept, I do hurt people sometimes, Case.";
my $so = "people";
foreach (split) {
		if ($_ eq $so)	{
				my $found = 0;
				$found = 1;
				ok($found);	
		}
}
sub ok {
		my $a = shift;
		if ($a) {
				print" Hoory! Found word 'people' \n";
		}
}
if ($_ =~ /people/)	{
		print" Hoory! Found word 'people' \n";
}
if (/people/) {
		print" Hoory! Found word 'people' \n";
}
my @arr = qw/this is srinu/;
foreach (@arr) {
		if ($_ eq 'srinu') {
				print"$_\n";	
		}	
	  if ($_ =~ /srinu/)	{
			  print"$_\n";
		}
		if (/srinu/)	{
			 print"$_\n";
		}
}
my $str = "this is srinu from bangalour";
if ($str =~ /is/)	{
		print"$&\n";
}
unless ($str !~ /is/) {
		print"$&\n";
}
if ($str !~ /is/)	{
		print"$&\n";
}
unless ($str =~ /is/) {
		print"$&\n"; 
}
unless ($str =~ /ok/) {
		print"\$str is there is no 'ok' word\n";
}
if ($str !~ /ok/) {
		print"\$str is there is no 'ok' word\n";
}




if (/i DO/i) {
		print" i do is in that string\n";
}

if (/hurt you/) {
		print"'hurt you' is matched\n";
}



my $str1 = "that is a dog";

if ($str1 =~ / dog/) {
		print" match the dog\n";
}

my $str2 = "that is a baddog";

if ($str2 =~ / dog/) {
		print"not matched\n";
}





my $ss = q("this is" 'srinivas');

print" enter the some text to find : ";
my $ss1 = <STDIN>;
chomp($ss1);

if ($ss =~ /$ss1/i)	{
		print"the text matches the pattern : $ss1\n";
} else {
		print"$ss1 was not found\n";
}


if (/\s+you/) {
		print" you is matched\n";
}






my $sym = "link";



open(A,'/home/srm/srinivas/PL_FILES/TASKS1/l2.txt');
my $rabbit = 'rabbit';
my $boy = 'boy';
my ($rr,$bb) = (0,0);
while (my $line = <A>)	{	
		next if ($line =~ /^\#/);
		next unless ($line =~ /\S/); 
		chomp($line);
		$rr++ if ($line =~ /$rabbit/i);
		$bb++ if ($line =~ /boy/i);
}
close(A);

print"count the no of rabbits in a file :$rr\n";
print"count the no of boy in a file : $bb\n";







