#!/usr/bin/perl -w
use strict;

##------------------------------------------
## To usig the look head and look behand
##------------------------------------------

## i want find look a head  [ (?= cake) ] 

#i want to change cool offer to hot offers 

while (<DATA>)	{

		chomp();  ## remove the new line charaters 
		next if /^$/; ## skip the empty lines in a file 
		#print"$_\n";
		
		if (/cool\s+offers/)	{
				#print"lookaheads\n";
				#$_ =~ s/cool(?= offers)/hot/g;
				#print"$_\n";
				print"look behind\n";	
				$_ =~ s/(?<=cool )offers/hot/g;
				print"$_\n";
		}
}


__END__
cream cake and fish pie
cool cake and cool summar and cool winter
cool sale and cool offers and cool discount offers cool offers cool offers
cool ice and hot rice and cool climate

cool sale and cool offers and cool discount offers 

lookaheads
cool sale and hot offers and cool discount offers 


look behind
cool sale and cool hot and cool discount offers 
