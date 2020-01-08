#!/usr/bin/perl -w


## check wheter no is prime or not 

my @arr = @ARGV;
my @aa = ();
foreach my $i (@arr)	{
		foreach my $j (2..$i)	{
					if ($i%$j==0)	{
						#	print " $i , $j\n";
							last;
					}
					#print " $i , $j\n";
					push(@aa,$i);
		}
}

my %hash = ();
#print"@aa\n";
@hash{@aa} = ();
@aa = sort(keys %hash);
print " primay no's in an array : @aa\n";







