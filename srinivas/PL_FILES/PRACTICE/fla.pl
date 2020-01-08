#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = qw(a 10 b 20 c 30);
my $ab = 0; # flag 
foreach (keys %hash)	{
		if ($hash{$_} == 20) {
				$ab = 1;
				last;
		}
}
#print"$ab\n";

$hash{bb} = 100;

my $cd = 0; # flag 
while (my ($k,$v) = each (%hash))	{
		if ($k eq 'bb')	{
				$cd = 1;
				last;
		}
}

#print"$cd\n";

=c

my $t = 0; # flag
sub has_phrase {
		my $phrase = $ARGV[0];
		my @words = @_;
		foreach (@words) {
				if ($_ eq $phrase) {
						$t = 1;
						last;
				}
		}
}

has_phrase('hello','hi','good','bad','welcome','go','hello');

print"$t\n";

=cut




## scalr ,hash, array, cond ,loop,loop cont sta, regexp,file handling , funct,hashes,referances,

## to count the words and build the hash
my %hash_b;
## function call 

fun(*DATA);

sub fun {
		my $file = shift;
		while (my $line = <$file>)	{
				chomp($line);
				next if ($line =~ /^$/);
				next if ($line =~ /^\#/);
				my @raa = split(/ /,$line);
				foreach my $mat (@raa)	{
						count_rabbit($mat);
						count_man($mat);
						count_cat($mat);
				}
		}
}




my $rabbit;
sub count_rabbit {
		my $rr = shift;
		if ($rr =~ /rabbit/i) {
			#	$rabbit++ 
				$hash_b{$&}++;
		}
}

#print "count the rabbits in a file :$rabbit\n";	

my $man;
sub count_man {
		my $rr1 = shift;
		if ($rr1 =~ /man/i) {
			#	$man++;
				$hash_b{$&}++;
		}
}
#print "count the man in a file :$man\n";	

my $cat;
sub count_cat {
		my $rr2 = shift;
		if ($rr2 =~ /cat/i) {
			#	$cat++;
				$hash_b{$&}++;
		}
}
#print "count the cats in a file :$cat\n";	


print Dumper(\%hash_b);


=c
sub bb {
		my $hh = shift;	
		while (my $line = <$hh>)	{
				chomp($line);
				next if ($line =~ /^$/);
				next if ($line =~ /^\#/);
				print"$line\n";
		}
}

bb(*DATA);
=cut




__END__
rabbits are very cute
and rabbits are daily eats carrats 
the cat is on the table 
cat drinks the milk

there are differnt types of cats are there

man
## this is comment line 
man cat man





## dont consider comment line 

rabbit and the cat and man man man rabbit cat cat
the cat and rabbit are same family







































rabbit


cat

man

































