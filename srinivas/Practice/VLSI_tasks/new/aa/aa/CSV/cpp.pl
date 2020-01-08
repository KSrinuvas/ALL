#!/usr/bin/perl -w
use strict;
use Getopt::Long;
use Data::Dumper;
use Spreadsheet::WriteExcel;

##---------------------------------------------------------------
## Read the path and parse it. To get the all data Recursively. 
## Like pyton and perl and tcl files 
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
					#	print"$pp\n";
						$hash->{'PERL'}->{'No_files'}++;
				} elsif (-f $pp and $pp =~ /\.py$/)	{
					#	print"$pp\n";
						$hash->{'PYTHON'}->{'No_files'}++;
				} elsif (-f $pp and $pp =~ /\.tcl$/)	{
					#	print"$pp\n";
					#	print"$aa\n";
						$hash->{'TCL'}->{'No_files'}++;
				} else {
					#	print"$pp\n";
				}
		}
}



#print Dumper($hash)



##--------------------------
## write a csv file 
##--------------------------



sub write_csv {
		my ($hash_ref,$fh1) = @_;
		while ( my ($k,$v) = each (%{$hash_ref}) ) 	{
			#	print"$k => $v\n";
				if (ref($v) eq 'HASH')	{
						while (my ($k1,$v1) = each (%{$v}))	{
								print"$k => $k1 => $v1\n";
								print $fh1 join(',',$k,$k1,$v1),"\n";
						}
				} 
		}
}


open(my $fh,">test1.csv") || die "Not able to write 'test1.csv' $!";

## call function

write_csv($hash,$fh);




