#!/usr/bin/perl 
#use strict;
# program which prints the next five numbers after the
# number typed in
$input = <STDIN>;
chomp($input);


$input = $input + 1; # start with the next number;
#print"$input\n";
$terminate = $input + 5; # we want to loop five times
#$input = $input + 1; # start with the next number;

#print"$input\n";
#print"$terminate\n";

until ($input == $terminate) {
		print ("The next number is ", $input, "\n");
		$input++;
}
