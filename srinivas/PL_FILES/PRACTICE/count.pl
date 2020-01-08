#!/usr/bin/perl -w
use strict;
use Data::Dumper;

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
						single($mat);
				}
		}
}
sub count_rabbit {
		my $rr = shift;
		if ($rr =~ /rabbit/i) {
				$hash_b{$&}++;
		}
}

sub count_man {
		my $rr1 = shift;
		if ($rr1 =~ /man/i) {
				$hash_b{$&}++;
		}
}

sub count_cat {
		my $rr2 = shift;
		if ($rr2 =~ /cat/i) {
				$hash_b{$&}++;
		}
}

my %hh;
sub single {
		my $check = shift;
		my ($a,$b,$c) = ('rabbit','cat','man');
		$hh{$a}++ if ($check =~ /$a/);	 
		$hh{$b}++ if ($check =~ /$b/);
		$hh{$c}++ if ($check =~ /$c/);
}

print Dumper(\%hh);

print Dumper(\%hash_b);




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
