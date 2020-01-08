#!/usr/bin/perl
use strict;
use warnings;

use feature 'state';

sub ok {
		state $v = 0; ## initial value
		print "the values \$v : $v\n";
		$v++;
}
for (1..10)	{
		ok();
}


