#!/usr/bin/perl
use strict;
use warnings;


=c
Write a program that computes the net amount of a bank account based a transaction log from console input. The transaction log format is shown as following:
D 100
W 200

D means deposit while W means withdrawal.
Suppose the following input is supplied to the program:
D 300
D 300
W 200
D 100
=cut


sub Bank_balance {
    my @aa = ();
    my $with = 0;
    my $deop = 0;
    my $bal = 0;
    while (my $line = <DATA>) {
        chomp($line);
        @aa = split(' ',$line);
        if ($line =~ /^D/i) {
            $deop += $aa[1];    
        } elsif ($line =~ /^W/i) {
            $with += $aa[1];
        }
    }
    $bal = $deop - $with;
    return $bal;
}

my $bb = Bank_balance();
print "Remaing bank balance is : $bb\n";


__END__
D 200
W 500
D 100
W 500
D 600
D 1000
W 440
D 500
W 40000
D 10000
W 560
D 500
W 600
D 700
D 100500





