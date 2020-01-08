#!/usr/bin/perl -w
use strict;
use Data::Dumper;
use Getopt::Long;

##---------------------------------------------------------------------------
## Description : LICENSES TASK TO MATCH THE REGULAR EXP AND BUILID THE HASH.
##---------------------------------------------------------------------------

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
				 $hash{$x}{'licenses'}{'issued_total_licences'} = $y;
				 $hash{$x}{'licenses'}{'used_total_licences'} = $z;
		 } elsif (($line =~ /(\w+)\s+\w+\s+(.*)?\(\w.+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/)	or 
							($line =~ /(\w+)\s+\w.+\w+\:\d.+\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/) ) {
				#print"$1\n";
				$b = $1;
				$hash{$x}{'users'}{$b}++;
		}
}				
#print Dumper(\%hash);


##------------------------------------------------------------------------------------
## Description : WRITE A PARSER TO ENTER THE TOOL NAME ANG GET DETAILS OF THAT TOOL.
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

##-----------------------------------------------------------------------
## Description: to accessing the hash.
##-----------------------------------------------------------------------

while (my ($k,$v) = each (%hash))	{
		if (defined ($Toolname))	{
				if ($k eq $Toolname)	{
						get_top($k);
						#print "\t\tTool name is : $k\n";
						if (ref($v) eq 'HASH')	{
								while (my ($k1,$v1) = each (%{$v}))	{
										if (ref($v1) eq 'HASH')	{
												#print "     $k1 =>\n";
												while (my ($k2,$v2) = each (%{$v1}))	{
													#	print"\t   $k2  =>  $v2\n";
														get_data($k1,$k2,$v2);
														$k1 = '';
												}
										} else {
											#	print "     $k1 => $v1\n";
										}
								}
								
						}
				}
		}
}


##------------------------------------------------------------------------
## Description : write a format to the toolname and get details. 
##------------------------------------------------------------------------

## Header

sub get_top {
			my $format = "\n\tT O G E T  A  D E T A I L S  O F  T O O L   N A M E\n\n".
									 "################################################################\n".
									 "TOOL NAME : @<<<<<<<<<<<<<\n\n" .
									 "   Main         Licences and Users          No of licnses\n".
									 "****************************************************************\n";
			$^A = ''; #Clear the accumlator
			formline($format,@_);
			print	$^A;
}

## Details 

sub get_data {
			my $format = "  @<<<<<<<<<<<< ".
									 "@<<<<<<<<<<<<<<<<<<<<<<<<<   ".
									 "  @<<<<<<<<<<<<<<<<<< \n";
									# "-----------------------------------------------------------------\n";
										
			$^A = ''; #Clear the accumlator
			formline($format,@_);
			print	$^A;
}
print"****************************************************************\n";
close($fh);

