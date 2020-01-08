#!/usr/bin/perl -w
use strcit

## word search and count program

my $str = $ARGV[0];

print "the word search for : $str\n";

my $filecount = 1;

my $t_c = 0;

while ($filecount <= @ARGV-1)	{
			unless (open (IN,$ARGV[$filecount]))	{
						die ("can't open input file $ARGV[$filecount\n");
			}
			my $w_c = 0;
			while (my $line = <IN>)	{
						chomp($line);
					  my @words = split(/ /,$line);
						my $w = 1;
						while ($w <= @words)	{
									if ($words[$w] eq $str) {
												$w_c++;
									}
									$w++;
						}
			}
			print "occurances in a file : $ARGV[$filecount]\n";
			print"$w_c\n";
			$t_c +=w_c;
			$w_c = 0;
			$filename = $ARGV[0];
}
