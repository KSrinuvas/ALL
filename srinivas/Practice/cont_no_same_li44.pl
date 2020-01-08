#!/usr/bin/perl -w
use strict;

##------------------------------------------------------
##  count the duplicate lines in a file 
##------------------------------------------------------

my %hash = ();
while (my $line = <DATA>)	{
		chomp($line);
		#print"$line\n";
    next if ($line =~ /^$/);  ## to skip empty lines
		$line = join' ',split(/ /,$line); ## to skip the end of the back spaces
		$hash{$line}++;
}

my @keys = keys %hash;

my $count = 0; ## count the no of duplicate lines in a file 
foreach my $item (@keys)	{
		if ($hash{$item} > 1)	{
				print"$item =>  $hash{$item}\n";
				$count++;
		}
}

print "no of duplicate lines in a file : $count\n";














__END__
tcl is a tool comand language 
tcl is a tool comand language 
tcl is a tool comand language 
tcl is a tool comand language
python is a programings language 
python is a programings language 
python is a programings language 
perl is scripting language 
python is a programings language 
hello
hi
hello
hello
ok
ok                                     
ppppp                                      
ppppp                                                                         



