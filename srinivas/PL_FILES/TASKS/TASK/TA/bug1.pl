#BUG BUSTER: What is wrong with the following program? 
#!/usr/bin/perl 
# program which prints the next five numbers after the
# number typed in
print"enter the number typed in: ";
$input = <STDIN>;
chop ($input);
#print"$input\n";


print"\n\n\n";

=c
$input = $input; # start with the next number;
#print"$input\n";
chomp($input);
$terminate = 5; # we want to loop five times
#print"$input\n";

while ($input <= $terminate) {
		print"$input\n";
		$input++;
}

until ($input != $terminate) {
		print ("The next number is ", $terminate, "\n");
}
=cut


# program which prints the next five numbers after the
# number typed in

$ter = $input + 5;
$input +=1;

while ($input <= $ter)	{
			print"$input\n";
			$input++;
}




