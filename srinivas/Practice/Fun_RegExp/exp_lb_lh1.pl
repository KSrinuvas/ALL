#!/usr/bin/perl 
use strict; use warnings; 
use Test::More qw' no_plan ';
Main(@ARGV);
exit(0);
sub Main {
    my @yesWant = (
        'equity, private equity',
        'equity',
        'private equity,equity',
        'private equity, equity',
        'equity,private equity',
    );
    my @notWant = (
        'private equity',
        'private equity',
        'mutual funds',
        'cds',
    );
    for my $not ( @notWant ){
        ok(  (not TestEquity($not)), "not '$not'" );
    }
    for my $yes ( @yesWant ){
        ok(  TestEquity($yes), "yes '$yes'" );
    }
}
sub TestEquity {
    return 1 if $_[0] =~ m/(?<!private\s)equity/;
    return 0;
}

__END__
$ prove -v pm911357.lookbehind.pl
pm911357.lookbehind.pl ..
ok 1 - not 'private equity'
ok 2 - not 'private equity'
ok 3 - not 'mutual funds'
ok 4 - not 'cds'
ok 5 - yes 'equity, private equity'
ok 6 - yes 'equity'
ok 7 - yes 'private equity,equity'
ok 8 - yes 'private equity, equity'
ok 9 - yes 'equity,private equity'
1..9
ok
All tests successful.
Files=1, Tests=9,  0 wallclock secs ( 0.06 usr +  0.01 sys =  0.08 CPU)
Result: PASS
