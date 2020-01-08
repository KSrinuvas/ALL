#!/usr/bin/perl

## globalscalar special varibles

foreach ('a'..'d') {
		print"$ARG                                     ";
		print"$_\n";
}


$a = "srinu";

print"$ARG                     ";
print"$a\n";

### $_    scalar defult varible 
### $ARG  Pattern searching space 


open(IN,'ok.txt') || die "Not able to open $!";

=c
print"$.\n";
@ll = <IN>;
chomp(@ll);
print"$.\n";
=cut

while ($line = <IN>)	{
		next if ($line =~ /^\#/);   ## skip the start of # lines
#		next if ($line =~ /^$/);    ## skip the emety lines
		$line = join ' ',split(' ',$line); ## remove the 2 or more white space bitween the words set to single space
		next if ($line =~ /^$/);    ## skip the emety lines
		chomp($line);
		print"$line\n";
#		print"$.\n";         ## the current input line number last filehandler that was read
}
close(IN);


#print"what is your name? ";
#@abc = @ARGV;
#chomp(@abc);
#print"hello @abc\n";



while($L = <>)	{
		chomp($L);
		print"$L\n";
}
