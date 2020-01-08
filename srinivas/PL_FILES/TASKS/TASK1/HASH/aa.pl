
open(IN,'a.txt');

while (my $line = <IN>)	{
		chomp($line);
		print "$. $line\n";
}
