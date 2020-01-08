#!/usr/bin/perl -w
use strict;
use Getopt::Long;

##------------------------------------------------------------
##
##------------------------------------------------------------

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
		dir <Enter the dir path><Mandatory>
		Ex : $0 -dir /home/srm/\n";
		exit;
}

gg($dir);

sub gg {
		my $dd = shift;
		opendir(my $dh,$dd) || die "Not able to open dir '$dd' $!";
		while (my $ff = readdir $dh)	{
					fun($ff,$dd);
		}
		closedir($dh);
}

my $hash;

sub fun {
		my $drf = shift;
		my $path = shift;
		my $p;
		if ($path =~ /\/$/)	{
				$p = "$path$drf";
		} else {
				$p = "$path/$drf";
		}
		if ($p =~ /\.\.?$/)	{
			#	print"$p\n";
		} else { 
				if (-d $p)	{
						unless ($p =~ /\.\w+$/)	{
								gg($p);
						}
				} elsif (-f $p) {
						if ($p =~ /\w+\.pl$/)	{
								$hash->{'perl_files'}++;
						} elsif ($p =~ /\w+\.py/)	{
								$hash->{'python_files'}++;
						} elsif ($p =~ /\w+\.tcl/)	{
								$hash->{'tcl_files'}++;
						}
				}
		}
}
use Data::Dumper;
print Dumper($hash);
