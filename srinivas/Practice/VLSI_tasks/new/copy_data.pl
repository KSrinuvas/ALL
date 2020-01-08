#!/usr/bin/perl -w
use strict;
use Data::Dumper;
##-------------------------------------------
## read the file and build the hash referance
##-------------------------------------------
my $file = '/home/srm/srinivas/Practice/VLSI_tasks/data.txt';
## read file data.txt
open(IN,"$file") || die "Not able to open '$file' $!";
my $hash;
my $key;
my $i = 1;
while (my $line = <IN>)	{
		chomp($line);
		next if ($line =~ /^$/);
		if ($line =~ /\#+(\w.+)/) { 
				$key = $1;
		} elsif ($line =~ /\=/)	{
				$hash->{$key}->{$i}->{$`} = $';
				$i++;
		}
}
print Dumper($hash);



my @array;
foreach my $aa (keys %{$hash}) {
			#print"$aa\n";
			foreach my $bb (keys %{$hash->{$aa}})	{
					#print"$bb\n";
					push(@array,$bb);
			}
}	
@array = sort { $a <=> $b } @array;
#print"@array\n";











=c

foreach my $kk (keys %{$hash})	{
		print"##$kk\n";
		while ( my ($k1,$v1) = each (%{$hash->{$kk}}))	{
					if (ref($v1) == "HASH")	{
							
					}	
		}
}





#print Dumper($hash);


my @keys = keys %{$hash};

@keys = sort { $a <=> $b } @keys;




foreach my $kk (@keys) {
		#print"$kk\n";
		while ( my ($k1,$v1) = each (%{$hash->{$kk}}))	{
				while ( my ($k2,$v2) = each (%{$v1}))	{
						print"$k2=$v2\n";
				}
		}
}

=cut





## close file handler 
close(IN);
