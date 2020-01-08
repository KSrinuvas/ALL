#!/usr/bin/perl -w
use strict;

unless (defined open(IN,'details.txt'))		{
		die "Not able to open file $!";
}

my %hash = ();
my $line = <IN>;
chomp($line);
my @header = split(/,/,$line);
shift(@header);
my $size_head = @header;
while (my $line1 = <IN>)	{
		 chomp($line1);
		 next unless ($line1 =~ /\S/);
		 my @data = split(/,/,$line1);
		 my $pri_key = shift(@data);
		 my $size_data = @data;
		 if ($size_head == $size_data)	{
				 my $i = 0;
				 while ($i < $size_data)	{
							$hash{$pri_key}{$header[$i]} = $data[$i];
							$i++;
				}
		 }
}


use Data::Dumper;

print Dumper(\%hash);

close(IN);
