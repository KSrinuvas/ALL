#!/usr/bin/perl -w
use strict;
# a simple example of a program that defines and uses a global alias.
my($name1,$name2);
$name2 = $name1;

$name1 = 14;
$name2 = $name1;
print"$name2\n";

