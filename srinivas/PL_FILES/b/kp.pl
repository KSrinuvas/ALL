#!/usr/bin/perl
use strcit;
use warnings;
my $self = `pwd`;
chomp $self;
$self .='/'.$1 if $0 =~/([^\/]*)$/;
print"self=$self\n";

