#!/usr/bin/perl -w
use strict;

my %words = qw(
    fred      camel
    barney    gecko
    betty     alpaca
    wilma     alpaca
);
#To find the secret word for Betty, we need to use Betty as the key in a reference to the hash %words, via some expression such as $words{"betty"}. The value of this reference is alpaca, similar to what we had before with the other array. Also, as before, the key can be any expression, so setting $person to betty and evaluating $words{$person} gives alpaca as well.



print "What is your name? ";
my $name = <STDIN>;
chomp ($name);
if ($name eq "srinu") {
    print "Hello, srinu! How good of you to be here!\n";
} else {
    print "Hello, $name!\n"; # ordinary greeting
    my $secretword = $words{$name}; # get the secret word
    print "What is the secret word? ";
    my $guess = <STDIN>;
    chomp ($guess);
    while ($guess ne $secretword) {
        print "Wrong, try again. What is the secret word? ";
        $guess = <STDIN>;
        chomp ($guess);
    }
}

