#!/usr/bin/perl -w
use strict;
use Data::Dumper;
#References to Anonymous Hashes

my $hash_ref = {a=>1,'b'=>2};

$$hash_ref{hello} = 3;

#print Dumper $hash_ref;


## 

my $ref;
$ref = make_ref('Franch');
#$ref = make_ref('German');

print " Sunday $$ref{Sunday}\n";
print " Monday $$ref{Monday}\n";

my $referance = { Sunday    => 'Sonntag',  Monday   => 'Montag', Tuesday => 'Dienstag',
      Wednesday => 'Mittwoch', Thursday => 'Donnerstag',
      Friday    => 'Freitag',  Saturday => 'Samstag' };



sub make_ref {
		my $langauge = shift;
		if ($langauge eq 'Franch')	{
				{ Sunday    => 'dimanche', Monday   => 'lundi', Tuesday => 'mardi',
      Wednesday => 'mercredi', Thursday => 'jeudi',
      Friday    => 'vendredi', Saturday => 'samedi' }; 
  	} elsif ($langauge eq 'German')	{
				$referance;
			
=c
				{ Sunday    => 'Sonntag',  Monday   => 'Montag', Tuesday => 'Dienstag',
      Wednesday => 'Mittwoch', Thursday => 'Donnerstag',
      Friday    => 'Freitag',  Saturday => 'Samstag' };
=cut

		} else {
				die "Unkwon language $langauge";
		}
}

