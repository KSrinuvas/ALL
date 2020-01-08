#!/usr/bin/perl  -w
use strict;

# Write a program that counts the total number of words in the files specified on the command line. When it has counted the words, it sends a message to user ID dave indicating the total number of words.


## use id 

print"Enter the user id count the files : ";
my $usr_id = <STDIN>;
chomp($usr_id);
print"$usr_id\n";



my ($t_c,$w_c) = (0,0);

my $filename = $ARGV[0];

while (my $line = <>)	{
		chomp($line);
		my @words = split(/ /,$line);
		my $w = 0;
		while ($w < @words)	{
					if($words[$w] eq $usr_id)	{
							$w_c++;
					}
					$w++;
		}
		if (eof)	{
					print"occurances in file $filename : ";
					print"$w_c\n";
					$t_c +=$w_c;
					$w_c = 0;
					$filename = $ARGV[0];
		}
}
print"total no of occurances : $t_c\n";

					
				


