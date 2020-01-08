#!/usr/bin/perl -w
use strict;

my @arr = (1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4);
print "@arr\n";
my %hash = ();
foreach (@arr)	{
		if ($hash{$_})	{
				next;
		} 
		print"$_\n";
		$hash{$_}++;	
}
@arr = sort(keys %hash);
print"@arr\n";



my @alp = qw(a b a b a b a b c a d a v a a a b);
print"@alp\n";


my %hash1;
@hash1{@alp} = ();
@alp = sort(keys %hash1);
print"@alp\n";




## another method using grep
sub uniq {
    my %seen;
    grep !$seen{$_}++, @_;
}

my @array = qw(one two three two three);
my @filtered = uniq(@array);

print "@filtered\n";




## another method 

my @myarray = (1,2,3,1,2,3,1,2,3);
my %unique = ();
foreach my $item (@myarray)
{
    $unique{$item} ++;
}
my @myuniquearray = sort(keys %unique);
print "@myuniquearray\n";





