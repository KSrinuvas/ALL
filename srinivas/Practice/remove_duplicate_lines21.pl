#!/usr/bin/perl -w
use strict;


## remove the duplicate lines in a file and 

my %hash = ();
while (my $line = <DATA>)	{
		chomp($line);
		next if ($line =~ /^$/);
	#	print"$line\n";
		#unless (!defined $hash{$line})	{
#				next;
#		}
#		next if ($hash{$line});
		next if (defined $hash{$line});
		print"$line\n";
		$hash{$line}++;
}





__END__
hello this is srinu

how are you
good morning

good morning
good morning

good morning
good morning
ok bye 

good evening
good evening

good evening


good evening
ok bye 

