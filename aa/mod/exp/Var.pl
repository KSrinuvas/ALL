#1/usr/bin/perl 
use strict;
use warnings;

#use Var;
use Var qw(sub1 $var1 %hash @arr);


#my $rr = &main::sub1(10,20);

my $rr = &Var::sub1(10,20);

print "$rr\n";


print "$var1\n";



foreach (@arr) {
		print "$_\n";
}


while (my ($k,$v) = each (%hash) ) {
		print "$k => $v\n";
}


