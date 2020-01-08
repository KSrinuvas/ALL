use strict;
use warnings;
use Data::Dumper;
use Text::CSV;

my %MacroA = ('Type' => {}, 'Fruit' => {}, 'Description' => {}, 'Quantity' =>  {});         

open (my $file, '<', 'FRUITIES.txt') or die $!;     

while (my $line = <$file>)                                                             {                                        

if ($line =~ /\b(tropical)\b,/) {                                   
$MacroA{Type}->{$1}++;
}

if ($line =~ /,\b(banana|grapefruit)\b,/) {                             
$MacroA{Fruit}->{$1}++;
}

if ($line =~ /,([\w\s]+?),/) {                                  
$MacroA{Description}->{$1}++;
}

if ($line =~ /,([\d]+?)/) {                             
$MacroA{Quantity}->{$1}++;
}
        }

close $file;     
