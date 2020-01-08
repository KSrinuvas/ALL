#!/usr/bin/perl
use strict;
use warnings;
my $g = "main package";
foreach (1,2,3) {
#if (1) {
#		my $c = 200;
		local $b= 100;
#		print"$c\n";
		aa();
		print "inside the forloop : $g\n";
}
sub aa {
		print"$b\n";
#		print"$c\n";
		print "inside the function : $g\n";
		print "srinu\n";	
}
#print"$c\n";
print "outside of the function : $g\n";


=c
my @aa = @ARGV;
#print"@aa\n";
my $x = $ARGV[0];
my $y = $ARGV[1];
my $z = $ARGV[4];
print"last element : $z\n";
my $sum = $x+$y;
print"$sum\n";
print "file name is :$0\n";

my $size = @aa;
print"$size\n";

#my $ss = <STDIN>;
#chomp($ss);
#print"$ss\n";



open(my $FH,'k') || die "Not able to open file k $!";

foreach (<$FH>)	{
		chomp($_);
		print"$_\n";
}


=cut
