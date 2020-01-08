#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $a = [[1,2,3,4],[5,6,7,8],[9,10,11,12]];
my (@xx,@yy,@even,@odd,@f_l,@l_l,$e,$b);
foreach (@{$a})	{
		foreach my $c (@{$_})	{
					if ($c%2==0)	{
							push(@xx,$c);
					} else	{
							push(@yy,$c);
					}
		}
}
#print Dumper(\@xx),"\n";
my $sv = join(" ",@xx);
my $sy = join(" ",@yy);
@even = split("",$sv);
@odd = split("",$sy);
print"Even no's  array of array is :  ",@even,"\n";
print"Odd no's  array of array is :  ",@odd,"\n";

foreach (@{$a})	{
		$e = shift(@{$_});
		push(@f_l,$e);
		$b = pop(@{$_});
		push(@l_l,$b);
}

print "first elements in array of array :  @f_l\n";
print "last elements in array of array  :  @l_l\n";

## dynamic way uild the array of array


## creating referance 
my $a_o_a;

$a_o_a->[0]=[1,2,3,4];
$a_o_a->[1]=[5,6,7,8];
$a_o_a->[2]=[9,10,11,12];
print Dumper($a_o_a),"\n";



## without referance create array of array
my @ar_ar;
$ar_ar[0]=[1,2,3,4];
$ar_ar[1]=[5,6,7,8];
$ar_ar[2]=[9,10,11,12];

print Dumper(\@ar_ar),"\n";














