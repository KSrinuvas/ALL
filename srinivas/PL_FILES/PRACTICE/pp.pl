#!/usr/bin/perl -w
use strict;

my @t = ("%s\n","foo");


#printf @t;

print sprintf ("%d\n","123");
print sprintf ("%s$/","ok");
#printf ("%s\n","hello");

#printf ("%s\n","this is srinu");

#printf ("%d\n","123456789");
#printf ("%D\n","100");


while (my $line = <DATA>)	{
		chomp($line);
		next if ($line =~ /^$/);
		if ($line =~ /\d.*/)	{
		#		printf ("%d\n",$line);
				#print($line,"\n");
		}
}




my $res = sprintf("the %s is %d", 'answer', 20);

print"$res\n";

printf("the %s is %d\n","answer",120);



my $res1 = sprintf("i have a %d %s\n", 100,"rupes");

print"$res1";

printf("i have a %d %s\n", 500, "rupes");





__END__

this is srinu
hello 
hi 
good morning 
12345
888

557
55
345543
ok
bye

