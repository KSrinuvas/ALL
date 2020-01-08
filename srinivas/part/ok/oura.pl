#!/usr/bin/perl -w
use strict;

#package Foo;
our $bar;  # declares $Foo::bar for rest of lexical scope
$bar = 20;
#package Bar;
our $bar = 30; # declares $Bar::bar for rest of lexical scope
print $bar;# prints 30
our $bar;  # emits warning but has no other effect
print $bar;# still prints 30
