use Getopt::Long;
#  my $data   = "file.dat";
  my $data   = "a.txt";
  my $length = 24;
  my $verbose;
  GetOptions ("length=i" => \$length,    # numeric
              "file=s"   => \$data,      # string
							"help|h" => \$help,				 # flag
              "verbose"  => \$verbose)   # flag
  or die("Error in command line arguments\n");



open(IN,"$data") || die "Not able to open file '$file' $!";


if (defined ($help))	{
		&help();
}


sub help {
		print "$0 is the script name\n";
		print "
		length <Enter the length value> <this is optional>
		file <Enter the file name > <this is also optional>
		help <Do you need help> <Enter mandatory>
		Ex:$0 -length 22 -file a.txt\n";
}





while (my $line = <IN>)	{
		chomp($line);
		print"$line\n";
}

print "length is : $length\n";
