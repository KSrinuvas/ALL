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






my $workbook = Spreadsheet::WriteExcel->new('t1.xls');
my $worksheet = $workbook->add_worksheet('hash');
$worksheet->set_column(4,5,20);
# Row and column are zero indexed
my $format = $workbook->add_format();
$format->set_color('red');
$format->set_bold();
$format->set_align('center');


$worksheet->set_column(0,0,20);
$worksheet->set_column(1,1,80);

$worksheet->write(0,0,"LANGUAGES",$format);
$worksheet->write(0,1,"PATHS",$format);




my %hash;





my (@perl,@python,@tcl);
sub bb {
		my $pp;
		my $path = shift;
		return if (not -d $path);   ## the path is not a directorty it will returns
		opendir(DIR,$path) || die "NOt able to open dir '$path' $!";
		$path = ($path =~ /\/$/ ? "$path" : "$path/");
	#	print"$path\n";
		foreach my $aa (readdir DIR)	{
				next if ($aa =~ /\.\.?$/ or $aa =~ /^\.\w+/);
				$pp = "$path$aa";
				if (-d $pp)	{
						bb($pp);   ## Recursive function
				} elsif (-f $pp and $pp =~ /\.pl$/) {
					#	print"$pp\n";
						push(@perl,$pp);
				} elsif (-f $pp and $pp =~ /\.py$/)	{
						push(@python,$pp);
					#	print"$pp\n";
				} elsif (-f $pp and $pp =~ /\.tcl$/)	{
					#	print"$pp\n";
						push(@tcl,$pp);
				}
		}
}

$hash{'PERL'} = \@perl;
$hash{'PYTHON'} = \@python;
$hash{'TCL'} = \@tcl;

#print Dumper(\%hash);









#$worksheet->write(0,0,"LANGUAGE",$format);
#$worksheet->write(0,1,"NO_FILES",$format);




=c
my $row = 1;


while (my ($k1,$v1) = each (%hash) )	{
	  	#print"$k\n";
			if (ref($v1) eq 'ARRAY')	{
						foreach my $vv (@{$v1})	{
								my $col = 0;
								my @array = ();
								push(@array,$vv);
								foreach my $pp (@array)	{
										$worksheet->write($row,$col,$pp);
										$row++;
								}
								$col++;
						}
			}
}
=cut

my $row = 1;

while (my ($k1,$v1) = each (%hash) )	{
	  	#print"$k1\n";
			my @array1 = ();
			my $col = 1;
			push(@array1,$k1);
			if (ref($v1) eq 'ARRAY')	{
						foreach my $vv (@{$v1})	{
								push(@array1,$vv);
						}
			}
			foreach my $pp (@array1)	{
						$worksheet->write($row,$col,$pp);
						$row++;
			}
			$col++;
}
						


