#!/usr/bin/perl -w
use strict;
use Getopt::Long;

#--------------------------------------
## option take multiple values at onces 
##-------------------------------------

=c
my $name;
GetOptions ('name=s@' => \$name) or Die ("Error in command line");
foreach (@{$name})	{
		print"$_\n";
}
=cut


my @cor;
my @col;
my @data;
GetOptions ('cor=f{2}' => \@cor, 'col=i{3}' => \@col) or Die ("Error in command line");
foreach (@cor) {
		print"$_\n";
}

print"@col\n";


