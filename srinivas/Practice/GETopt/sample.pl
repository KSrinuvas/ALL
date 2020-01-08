#!/usr/bin/perl -w
use strict;
use Getopt::Long;

##--------------------------------------------
## parsers 
##--------------------------------------------

my $name;
my @habbits;
#my $habbits;
my %life;
my $help;
GetOptions ('name=s' => \$name,
						'habbits=s{2,7}' => \@habbits,
					#	'habbits=s' => \@habbits,
					#	'life=s' => \%life,
						'life=s{2,7}' => \%life,
						'help|h' => \$help
						) or Die ("Error in command line argumrent");

if (defined $help)	{
		&help();
}

if (defined $name)	{
		print "name is $name\n";
}

sub help {
		print"$0 is the script name\n";
		print"
		name <enter name><single word>
		habbits <enter habbits><multiple>
		life <enter life><key value>\n";
}


foreach (@habbits)	{
		print"$_\n";
}



## -------------------------------------------------------------------
=c
#Example	
perl sample.pl -name srinu -habbits hi -habbits hello -habbits good
name is srinu
hi
hello
good


=cut
##--------------------------------------------------------------------


## Take multiple values at once
## -------------------------------------------------------------------
=c
## 'habbits=s{1,7}' => \@habbits

#Example	
perl sample.pl -name srinu -habbits hi hello good
name is srinu
hi
hello
good


=cut
##--------------------------------------------------------------------




## options with hash values 

##---------------------------------------------------------------------
=c
## GetOptions ('life=s' => \%life)

perl filename -life br=idely -life drnk=cofe

## Result is 

$VAR1 = {
          'drnk' => 'cofe',
          'br' => 'idely'
        };

=cut
##---------------------------------------------------------------------
## takes the multiple keys and values at once
##---------------------------------------------------------------------
=c
## GetOptions ('life=s{2,7}' => \%life)   ## {2,7} min 2 and max 7 pairs 

perl filename -life br=idely drnk=cofe 

## Result is 

$VAR1 = {
          'drnk' => 'cofe',
          'br' => 'idely'
        };

=cut
##---------------------------------------------------------------------









use Data::Dumper;

print Dumper(\%life);
