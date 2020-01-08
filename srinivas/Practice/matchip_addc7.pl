#!/usr/bin/perl -w
use strict;

### match the ip address in a ifconfig 

my $f = `ifconfig >new_conf.txt`;

open(my $fh_re,"new_conf.txt") || die "Not able to open file $!";

open(OUT,">collect_ipaddress.txt") || die "Not able to create file $!";

my $no_ip = Read_File($fh_re); ## call to the function 

print "no of ipaddress in a ifconfig is : $no_ip\n";

sub Read_File {
		my $fh = shift;
		my @arr = ();
		my $ip_count = 0;
		while (my $line = <$fh>)	{
				chomp($line);	
				Replace($line); ## sub function call
				my @arr = split(/ /,$line);
				foreach my $m (@arr)	{
						if ($m =~ /\d+\.\d+\.\d+\.\d+/)	{
									print OUT "$&\n";
									$ip_count++;		
						}
				}
		}
		return $ip_count;
}		
				






## search and replace the all ip address are replaced to the gemails 




sub Replace {
			my $l1 = shift;
			$l1 =~ s/\d+\.\d+\.\d+\.\d+/SRINU/;
			$l1 =~ s/Bcast\:\d+\.\d+\.\d+\.\d+/Bcast\:CHANDU/;
			$l1 =~ s/Mask\:\d+\.\d+\.\d+\.\d+/Mask\:SUNIL/;
			
			print"$l1\n";
}
				
	


				
