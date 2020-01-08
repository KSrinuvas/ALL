#!/usr/bin/perl
use strict;
use warnings;
## substitution   search and replace the words 
$_ = "the clamit is cool cool cool cool";

## one time 
s/cool/\uhot/;

print"$_\n";


## g globley all cool replaces with rain

s/cool/\urain/g;


print"$_\n";
