#!/usr/bin/perl -w
use strict;

my ($hash_ref,@arr,$key,$ll,$sum,@sum1,$diff,$avg,$pri_key);
sub Data {
		my $FH = shift;
		while (my $line = <$FH>)	{
				chomp($line);	
			#	print"$line\n";
				if ($line =~ /(\w+)\s+\{/)	{
				#		print"$1\n";
						$key = $1;
				} elsif ($line =~ /\d+/)	{
						push(@arr,split(/ /,$line));
				} elsif ($line =~ /\}/)	{
						#print"@arr\n";
						foreach (@arr) { 
								#print"$_\n";
								 $sum +=$_;
								 $ll++;
						}
			    	$avg = $sum/$ll;
		      	$avg = sprintf("%.2f",$avg);
						if ($$FH =~ /.*\:\:.(\w+)/)	{
				#				print"$1\n";
								$pri_key = $1;
						}
						$$hash_ref{$pri_key}{$key} = $avg;
						print"$avg\n";
					#	print"$ll\n";
						$ll = 0;
						$sum = 0;
						@arr = ();
						next;
				}
		}
}

open(my $Ref,$ARGV[0]) || die "Not able to open file $!"; 
open(my $Base,$ARGV[1]) || die "Not able to open file $!"; 
Data($Ref);
Data($Base);


use Data::Dumper;
#print Dumper($hash_ref);

while (my ($k,$v) = each (%{$hash_ref}))	{
		#print"$k =>$v\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						print"$k1 => $v1\n";
				}
		}
}




#print Dumper($hash_ref);

