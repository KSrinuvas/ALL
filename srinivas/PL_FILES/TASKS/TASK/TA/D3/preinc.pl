#!/usr/bin/perl -w
use strict;

#Listing 4.3. A program that uses the pre-increment operation. 
=c
my $value = 0;

while (++$value <= 5) {

        print("value is now $value\n");

}

print("all done\n");
=cut

my $i = 0; ## using pre increment 

while (++$i <= 5)	{
		print"the values 1 to 5: $i\n";
}
print"all done\n";
