#!/usr/bin/perl -w
use strict;
use Getopt::Long;
use Data::Dumper;
use DBI;


##---------------------------------------------------------------
## Read the No_files and parse it. To get the all data Recursively. 
## Like pyton and perl and tcl files.
## Write the output to the Mysql data base format. 
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
		dir <Enter the No_files><Mandatory>
		Ex : $0 -dir /home/srm/\n";
		exit;
}

## function call, No_files is passed to the bb function. 
bb($dir);


my (@a1,@a2,@a3);
sub bb {
		my $pp;
		my $No_files = shift;
		return if (not -d $No_files);   ## the No_files is not a directorty it will returns
		opendir(DIR,$No_files) || die "NOt able to open dir '$No_files' $!";
		$No_files = ($No_files =~ /\/$/ ? "$No_files" : "$No_files/");
	#	print"$No_files\n";
		foreach my $aa (readdir DIR)	{
				next if ($aa =~ /\.\.?$/ or $aa =~ /^\.\w+/);
			#	print"$aa\n";
				$pp = "$No_files$aa";
				if (-d $pp)	{
						bb($pp);   ## Recursive function
				} elsif (-f $pp and $pp =~ /\.pl$/) {
					#	print"$pp\n";
						push(@a1,$pp);
						$hash->{'PERL'} = \@a1;
				} elsif (-f $pp and $pp =~ /\.py$/)	{
					#	print"$pp\n";
						push(@a2,$pp);
						$hash->{'PYTHON'} = \@a2;
				} elsif (-f $pp and $pp =~ /\.tcl$/)	{
				#		print"$pp\n";
						push(@a3,$pp);
						$hash->{'TCL'} = \@a3;
				} else {
					#	print"$pp\n";
				}
		}
}


print Dumper($hash);



## 










my $dsn = "DBI:mysql:FTOS";

my $user = "root";
my $pw = "srm";


my %attr = (PrintError => 0,
						RaiseError => 1);

my $dbh = DBI->connect($dsn,$user,$pw,\%attr);

#print"success\n";

## create table 

my @ddl = ( 
				"CREATE TABLE DATA1 (SNO int(250) NOT NULL AUTO_INCREMENT PRIMARY KEY,
														LANGUAGES VARCHAR(255) NOT NULL,
														PATHS VARCHAR(255) NOT NULL
				)" );

##

foreach my $aa (@ddl)	{
		$dbh->do($aa);
}



## 

my $sth = $dbh->prepare("INSERT INTO DATA1
                       (LANGUAGES,PATHS)
                        values
                       (?,?)");

while (my ($k,$v) = each(%{$hash}))	{
		if (ref($v) eq 'ARRAY')	{
				foreach my $bb (@{$v})	{
						$sth->execute($k,$bb) 
    	      		or die $DBI::errstr;
				}
		}
}


$sth->finish();


$dbh->disconnect(); 

























