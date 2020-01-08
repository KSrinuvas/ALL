#!/usr/bin/perl -w
use strict;

my $file = '/home/srm/srinivas/PL_FILES/TASKS1/l2.txt';

# Read file 
open(my $fh,"$file") || die "Not able to open '$file' $!";

## function call
my $cc = Count($fh);
print "No of rabits in a file is : $cc\n";

sub Count {
		my $H = shift;
		my $rabbit = 0;
		while (my $line = <$H>)	{
				chomp($line);
				next if ($line =~ /^\#/); ## skip the commenting lines in a file 
				next if ($line =~ /^$/);  ## skip the empty lines in a file 
				#$line = join' ',split(' ',$line);  ## to remove the white space in a file 
		#		print"$line\n";
				foreach (split(' ',$line))	{
					#	print"$_\n";
						$rabbit++ if ($_ =~ /rabbit/i);
				}
		}
		return ($rabbit);
}

close($fh);

		








while (my $ll = <DATA>)	{
		chomp($ll);
		$ll = join' ',split(' ',$ll);
	#	print"$ll\n";
}






__END__
   hello
									hi
		good   morning
															ok                bye
