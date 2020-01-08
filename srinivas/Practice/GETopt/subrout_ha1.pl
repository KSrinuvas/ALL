#!/usr/bin/perl -w
use strict;
use Getopt::Long;
GetOptions ('opt=i' => \&handler);
    sub handler {
        my ($opt_name, $opt_value) = @_;
        print("Option name is $opt_name and value is $opt_value\n");
    }
