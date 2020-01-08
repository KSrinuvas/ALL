#!/usr/bin/perl -w
use strict;

## read a file Emp.txt
open(my $fh,"Emp.txt") || die "Not able to open 'Emp.txt' $!";

## call function 
my $hash_re = Read_File($fh);


sub Read_File {
			my $hash_ref;
			my $fh = shift;
			my $Head = <$fh>;
			chomp($Head);
			#print"$Head\n";
			my @Header = split(/ /,$Head);
			print"@Header\n";
			shift(@Header);
			while (my $line = <$fh>)	{
					chomp($line);
					next if ($line =~ /^$/);
					my @Data = split(/ /,$line);
					my $Pri_key = shift(@Data);
					if (@Header == @Data) {
							for(my $i =0;$i < @Header;$i++)	{
									$hash_ref->{$Pri_key}->{$Header[$i]} = $Data[$i];
							}
					}
			}
			return $hash_ref;
}

use Data::Dumper;

print Dumper($hash_re);
