#!/usr/bin/perl
use strict;
use warnings;

my (%hash,@arr,@aa);
sub hello {
		@arr = @_;
		foreach (@arr)	{
				if (!$hash{$_}++)	{
							push(@aa,$_);
				}
		}
		return @aa;
}
@aa = hello(@ARGV);

print"@aa\n";








