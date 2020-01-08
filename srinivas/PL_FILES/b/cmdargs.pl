use Getopt::Long;
  my $data   = "file.dat";
  my $length = 24;
  my $verbose;
  GetOptions ("length=i" => \$length,    # numeric
              "file=s"   => \$data,      # string
              "verbose"  => \$verbose)   # flag
  or &Help(); 


print "lengthi:$length\n";
###########################################################
#Description: This function is used to 
#
###########################################################
sub Help {
	print "$0 -- help options\n";
	print "\tlength = <input integer>\n";
	print "\tfile	 = <input file path>\n";
	print "Ex: $0 -length 10 -file /home/test.txt\n";
	exit;
}
