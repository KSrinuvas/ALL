#!/usr/bin/perl -w
use strict;

my $error = 0;
my $warn = 0;
while (my $line = <DATA>)	{
		chomp($line);
		next if ($line =~ /^$/);
	#	print"$line\n";
		$error++ if ($line =~ /error\:/i);
		$warn++ if ($line =~ /warn.*\:/i);
}

print"No of Errors in a file : $error\n";
print"No of warnings in a file : $warn\n";







__END__
error: this is an error
ErroR: this is an error
ErroR: this is an error
Warning: this is warnings
ERror: this is an error
Warn: this is warnings
Warn: this is warnings
Warn: this is warnings
erROr: this is an error
Warning: this is warnings
ERROr: this is an error
error: this is an error
Warning: this is warnings
error: this is an error
ERROR: this is error message 


