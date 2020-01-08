#!/usr/bin/perl -w 
use strict;

my %exampleHash = ();
$exampleHash{1}{value} = 10;
$exampleHash{2}{value} = 30;
$exampleHash{3}{value} = 0;
$exampleHash{4}{value} = 20;

foreach my $key ( sort {$exampleHash{$a}{value} <=> $exampleHash{$b}{value}} keys %exampleHash )
{
    printf( "%s => %d\n", $key, $exampleHash{$key}{value} );
}



my @arr = (1..10,20,30,50,100,55,45,38,34,64);

print"@arr\n";

foreach (sort {$a <=> $b} @arr)	{
		print"$_\n";
}
