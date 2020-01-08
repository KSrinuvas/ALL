#!/usr/bin/perl -s

foreach (1..$ARGV[0])	{
		if ($_%2 == 0)	{
				if ($even)	{
						print"$_\n";
				}
		} else {
				if ($odd)	{
					 print"$_\n";
				}
		}
}

				
