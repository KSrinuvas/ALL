#!/usr/bin/perl 
use strict;
use warnings;

use Fg;
import AA qw(mul);
#import AA;

my $rr = &main::div(10,20);
print "$rr\n";


my $ee = &AA::mul(2,4); ## dont required main package
print "$ee\n";




my $dd = div(50,2);

print "$dd\n";




my $gg = mul(50,2);

print "$gg\n";




