#!/usr/bin/perl -w
use strict;

my @words = qw(camel gecko alpaca);
print "What is your name? ";
my $name = <STDIN>;
chomp $name;
if ($name eq "srinu") {
    print "Hello, srinu! How good of you to be here!\n";
} else {
    print "Hello, $name!\n"; # ordinary greeting
    print "What is the secret word? ";
    my $guess = <STDIN>;
    chomp ($guess);
    my $i = 0; # try this word first
    my $correct = "maybe"; # is the guess correct or not?
    while ($correct eq "maybe") { # keep checking til we know
        if ($words[$i] eq $guess) { # right?
			        $correct = "yes"; # yes!
    		} else { # no more words, must be bad
        		print "Wrong, try again. What is the secret word?";
        		$guess = <STDIN>;
        		chomp ($guess);
        		$i = 0; # start checking at the first word again
    		}
  	} # end of while not correct
} # end of "not Erik"
