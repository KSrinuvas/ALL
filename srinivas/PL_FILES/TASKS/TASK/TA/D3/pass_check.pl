#!/usr/bin/perl -w 
use strict;

=c
## A very simple password checker
print "please enter the secret password it will check : ";
my $pass = <STDIN>;
chomp($pass);

my $check = $pass eq "srinu"?
			"yes, that is the correct password!\n" :
			"NO, that is not the correct password.\n";
print"$check";
=cut



=c
### traying to cheeck thepassword is corroct
print"\Uenter the system password it will check the correct or not : ";
my $password = <STDIN>;
chomp($password);
while ($password ne "srm") {
			print "the password is wrong please try agin!\n";
			print"\Uenter the password again : ";
			$password = <STDIN>;
			chomp($password);
}

print"THE PASSWORD IS CORRECT YOU GOT IT FINALLY\n";
=cut



print"Enter the check passwd: ";
my $paa = <STDIN>;
chomp($paa);
my $out;
if ($paa eq 'srm')	{
		$out = "yes the password is correct";
} else {
		$out = "not the password is not correct";
}
print"$out\n";








