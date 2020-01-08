

#=c

##----------------------------------------------------------------------
## Read the below test file and parse it. Build the hash appropriately
##----------------------------------------------------------------------

set file "/home/srm/srinivas/Practice/VLSI_tasks/jj.txt";

## read file 

set fh [open "$file" r]

#array set hash {}

while { [gets $fh line] >=0 } {
		#puts $line
		if { [regexp -nocase {([a-z].+)\=(.?[a-z].*)} $line a b c] }	{
			#	puts "$b => $c";
				set hash($b) $c;
		} elseif { [regexp -nocase {([a-z].*)} $line dd] } { 
			#	puts "$line"
				set hash($b) [concat $hash($b) $line];
		} else {
				lappend hash($b) $line
				#set hash($b) [concat $hash($b) $line];
				#puts "$line"
		}
}



foreach name [array names hash]	{
		puts "$name => $hash($name)"
}





close $fh;


#=cut







if 0 {

use strict;
use warnings;


my $file =  "/home/srm/srinivas/Practice/VLSI_tasks/jj.txt";


my %hash;
open(IN,"$file") || die "Not able to open '$file' $!";

my $key;
while (my $line = <IN>)	{
	#	chomp($line);
	#	print"$line\n";
		if ($line =~ /(\w.+)\=(.?\w.+)/)	{
				$key = $1;
				$hash{$key} = $2;
		} elsif ($line =~ /(^ *$)/)	{
				#print"$&\n";
				$hash{$key} .= $line;
		} else {
			#	print"$line\n";
				$hash{$key} .= $line;
		} 
}

use Data::Dumper;


if (exists $hash{description}) {
		chomp($hash{description});
}


print Dumper(\%hash);
close(IN);


}
