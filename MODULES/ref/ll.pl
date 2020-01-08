#!/usr/bin/perl -w
use strict;


##----------------------------------------------------##
##-- Write a simple program on begin and end blocks --##
##----------------------------------------------------##



END {
		print "\nSUCCESSFULLY ADD\n";
}



print "$_\n" for (@INC);



BEGIN { 
		print "TO START THE SCRIPT\n\n";
		unshift (@INC,"hello/world");
} 

