#!/usr/bin/perl -w
use strict;
use Data::Dumper;
use Getopt::Long;

##-------------------------------------------------------------------------
##  LICENSES TASK 
##-------------------------------------------------------------------------

my $file = '/home/srm/Downloads/lic_log';

## read file handler 
open(my $fh,"$file") || die "Not able to open '$file' $!";
while (my $line = <$fh>)	{
		chomp($line);
		#print"$line\n";
		Tools_Lic($line); # function call
}

my (%hash,$b,$x,$y,$z);
sub Tools_Lic {
		my $line = shift;
		#print"$line\n";
		if ($line =~ /\w+\s+\w+\s+(\w+)\:\s+\(\w+\s+\w+\s+(\d+)\s+\w+\s+\w+\;\s+\w+\s+\w+\s+(\d+)\s+\w+\s+\w+\s+\w+/)	{
				#print "$1 => $2 => $3\n";
				 $x = $1;
				 $y = $2;
				 $z = $3;
				 $hash{$x}{'issued_total_licences'} = $y;
				 $hash{$x}{'used_total_licences'} = $z;
		 } elsif (($line =~ /(\w+)\s+\w+\s+(.*)?\(\w.+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/)	or 
							($line =~ /(\w+)\s+\w.+\w+\:\d.+\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/) ) {
				#print"$1\n";
				$b = $1;
				$hash{$x}{'users'}{$b}++;
		}
}				
#print Dumper(\%hash);


##------------------------------------------------------------------------------------
## Derscrption : WRITE A PARSER TO ENTER THE TOOL NAME ANG GET DETAILS OF THAT TOOL
##------------------------------------------------------------------------------------

my $Toolname;
my $help;
my $verbose;

GetOptions ("Toolname|T=s" => \$Toolname,   ## string
						"help|h" => \$help,             ## flag
						"verbose" => \$verbose						## flag
						) or die ("Error in command line argument\n");

						sub help {
								print"$0 the script is used to do someting\n";
								print"Toolname|T <Enter the tool name><Mandatory>;
								help|h <print script usage options>
								Ex: $0 -Toolname someting\n";
						}

if (defined ($help))	{
		&help();
}
while (my ($k,$v) = each (%hash))	{
		if (defined ($Toolname))	{
				if ($k eq $Toolname)	{
						print "\n********************************************************\n";
						print "\t\tTool name is : $k\n";
						print "********************************************************\n";
						if (ref($v) eq 'HASH')	{
								while (my ($k1,$v1) = each (%{$v}))	{
										if (ref($v1) eq 'HASH')	{
												print"---------------------------------------\n";
												print "     $k1 =>\n";
												print"---------------------------------------\n";
												while (my ($k2,$v2) = each (%{$v1}))	{
													#	print"---------------------------------------\n";
														print"\t   $k2  =>  $v2\n";
													#	print"---------------------------------------\n";
												}
												print"---------------------------------------\n\n";
										} else {
												print "___________________________________________\n";
												print "     $k1 => $v1\n";
												print "___________________________________________\n";
										}
								}
						}
				}
		}
}
close($fh);

