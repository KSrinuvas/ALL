#!/usr/bin/perl -w
use strict;
use Getopt::Long;

##-------------------------------------------------------------------
## Read the below path and parse it. To get the all data Recursively. 
##-------------------------------------------------------------------

my $dir;
my $help;

GetOptions ("dir=s" => \$dir,
						"help|h" => \$help)
						 or die ("Error in command line arguments\n");

if (defined $help)	{
		help();
}

sub help {
		print"$0 is the file name\n";
		print"
        TO get the all data in a path Recursively\n
		dir <Enter the dir path><Mandatory>
		Ex : $0 -dir /home/srm/\n";
		exit;
}

## call function gg
gg($dir);

sub gg {
		my $dd = shift;
		opendir(my $dh,$dd) || die "Not able to open dir '$dd' $!";
		while (my $ff = readdir $dh)	{
					fun($ff,$dd);  ## function call
		}
		closedir($dh);   ## close dir
}

my $hash;
my (@a1,@a2,@a3);
sub fun {
		my $drf = shift;
		my $path = shift;
		my $p;
		$p = ($path =~ /\/$/ ? "$path$drf" : "$path/$drf");
		if ($p =~ /\.\.?$/)	{
			#	print"$p\n";
		} else { 
				if (-d $p)	{
						unless ($p =~ /\.\w+$/)	{
					    	gg($p);
						}
				} elsif (-f $p) {
						if ($p =~ /\w+\.pl$/)	{
								push(@a1,$&);
								$hash->{'perl'}->{'no_files'}++;
						} elsif ($p =~ /\w+\.py/)	{
								push(@a2,$&);
								$hash->{'python'}->{'no_files'}++;
						} elsif ($p =~ /\w+\.tcl/)	{
								push(@a3,$&);
								$hash->{'tcl'}->{'no_files'}++;
						}
				}
		}
}
use Data::Dumper;


$hash->{'perl'}->{'list_of_files'} = \@a1;
$hash->{'python'}->{'list_of_files'} = \@a2;
$hash->{'tcl'}->{'list_of_files'} = \@a3;


print Dumper($hash);

