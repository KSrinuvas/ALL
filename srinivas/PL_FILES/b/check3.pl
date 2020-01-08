#!/usr/bin/perl

sub a {
		local @aa = @_;
		cc();
		abc();
		print"@aa\n";
		aaa();
		print"@aa\n";
		aaa();
}
a(10,20,30);

### add 2 each element in an array
sub abc {
		foreach (@aa)	{
				$_ +=2;
		}
}

### mult 2 each element in an array
sub aaa {
		foreach (@aa)	{
				$_ *=2;
		}
}

		






















