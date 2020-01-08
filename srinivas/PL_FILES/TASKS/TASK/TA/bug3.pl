#!/usr/bin/perl -w
use strict;
## program which prints the next five numbers after the number typerd 
print "type the number : ";
my $i = <STDIN>;
chomp($i);   ## to remove the new line charater

#$i+=1;

my $terminate = $i + 5;  # we want to loop five times

print"DESENDING ORDER TO PRINT THE NEXT 5 NUMBERS AFTER TYPED NO : $i\n";
### desending order 
while ($terminate > $i)	{
			print"type no decending order no's : $terminate\n";
			$terminate--;
}
		

print"\n\n";
print"ASSNING ORDER TO PRINT THE NEXT 5 NUMBERS AFTER TYPED NO: $i\n";

$i+=1;
my $ter_assenig = $i+5;

while ($i < $ter_assenig) {
		print"type no assening order no's : $i\n";
		$i++;
}
