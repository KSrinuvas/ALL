#!/usr/bin/perl -w
use strict;
#Listing 2.7. A program that uses the until statement.
 
print "the sum of 19 and 21 is 40\n";
my $cor = 40;
my $input = <STDIN>;
chomp($input);
until ($input == $cor)	{
		print "the answer is not corret ,tryagain!\n";
		$input = <STDIN>;
		chomp($input);
}
print"yes i got it output\n";


#Listing 2.7. A program that uses the until statement.

print "the sum of 20 and 40?\n";

my $correct = 60;
my $check = <STDIN>;
chomp($check);

while ($check != $correct)	{
		print"the answer $check is not corect , please try angain!\n";
		$check = <STDIN>;
		chomp($check);
}
print"YES I GOT IT A OUTPUT BY USING WHILE LOOP\n";
  
