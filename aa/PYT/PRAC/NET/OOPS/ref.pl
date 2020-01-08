#!/usr/bin/perl

sub aa($)	{
	my ($ff) = @_;
	print "$ff\n";
}


my @aa = (1,2,3,4,5);

aa(\@aa);
