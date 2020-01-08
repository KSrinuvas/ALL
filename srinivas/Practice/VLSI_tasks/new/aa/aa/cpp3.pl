#!/usr/bin/perl -w
use strict;
use Getopt::Long;
use Data::Dumper;
use JSON;

##---------------------------------------------------------------
## Read the path and parse it. To get the all data Recursively. 
## Like pyton and perl and tcl files,
## And write a json foramt.  
##---------------------------------------------------------------


my $hash;
my ($dir,$help);
GetOptions ('dir=s' => \$dir,
						'help|h' => \$help) or die ("Error in command line arguments");

if (not $dir) {
	&help();
}


if (defined $help)	{
		help();
}

sub help {
		print "$0 is the file name\n";
		print "
		dir <Enter the path><Mandatory>
		Ex : $0 -dir /home/srm/\n";
		exit;
}

## function call, path is passed to the bb function. 
bb($dir);


my (@a1,@a2,@a3);
sub bb {
		my $pp;
		my $path = shift;
		return if (not -d $path);   ## the path is not a directorty it will returns
		opendir(DIR,$path) || die "NOt able to open dir '$path' $!";
		$path = ($path =~ /\/$/ ? "$path" : "$path/");
	#	print"$path\n";
	
		foreach my $aa (readdir DIR)	{
				next if ($aa =~ /\.\.?$/ or $aa =~ /^\.\w+/);
			#	print"$aa\n";
				$pp = "$path$aa";
				if (-d $pp)	{
						bb($pp);   ## Recursive function
				} elsif (-f $pp and $pp =~ /\.pl$/) {
						$hash->{'PERL'}->{'No_files'}++;
				} elsif (-f $pp and $pp =~ /\.py$/)	{
						$hash->{'PYTHON'}->{'No_Files'}++;
				} elsif (-f $pp and $pp =~ /\.tcl$/)	{
						$hash->{'TCL'}->{'No_Files'}++;
				} else {
					#	print"$pp\n";
				}
		}
}

#print Dumper($hash);



## write a json file 

open(my $fh,">aa1.json") || die "Not able to write a 'aa.json' file $!";



my $json_data = encode_json ($hash);

print "$json_data\n";


print $fh "$json_data\n";


## close file

close($fh);




