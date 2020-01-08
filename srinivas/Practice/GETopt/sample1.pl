#!/usr/bin/perl -w
use strict;
use Getopt::Long;
my $head;
GetOptions ('opt=o{3}' => \&handler, 'head' => \$head);
    sub handler {
        my ($opt_name, $opt_value) = @_;
        print("Option name is $opt_name and value is $opt_value\n");
    }

