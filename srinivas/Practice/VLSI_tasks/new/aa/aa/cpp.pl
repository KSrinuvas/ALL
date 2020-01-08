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






my $workbook = Spreadsheet::WriteExcel->new('t.xls');
my $worksheet = $workbook->add_worksheet('hash');
$worksheet->set_column(4,5,20);
# Row and column are zero indexed
my $format = $workbook->add_format();
$format->set_color('red');
$format->set_bold();
$format->set_align('center');












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

#print Dumper($hash);


$worksheet->set_column(0,1,18);

$worksheet->write(0,0,"LANGUAGE",$format);
$worksheet->write(0,1,"NO_FILES",$format);





my $row = 1;


while (my ($k,$v) = each (%{$hash}) )	{
		#print"$k => $v\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}) )	{
						print"$k=>$k1=>$v1\n";
						#print"$k\n";
						my $col = 0;
						my @array = ();
						push(@array,$k,$v1);
						foreach my $pp (@array)	{
							#	if ($row == 0)	{
							#			$worksheet->write($row,$col,$pp,$format);
							#			$col++;
							#			next;
							#	}
								$worksheet->write($row,$col,$pp);
								$col++;
					  }
						$row++;
				}
		}
}






