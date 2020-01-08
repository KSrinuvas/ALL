#!/usr/bin/perl -w
use strict;




while (<DATA>)	{
		chomp();
		hello($_);
}




sub hello {
		my $line = shift;
		if ($line =~ /(\w+\@\w+\.\w+)/)	{
				print"my mail id is : $1\n";
		} elsif ($line =~ /(\d+)/)	{
				print"my mobile no is : $1\n";
		} elsif ($line =~ /at\s+(\w+)/)	{
				print"i am working at : $1\n";
		} elsif ($line =~ /in\s+(\w+)/)	{
				print"company name is : $1\n";
		}
} 





















__END__
this is srinu 
and my mail id is ss123@gmail.com
and my phone no is 123456
and i am working in ftos designs 
at banglour
