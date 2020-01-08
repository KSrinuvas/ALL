#!/usr/bin/perl
use strict;
use warnings;

use XML::LibXML;
use Data::Dumper;
my $filename = "data.xml";

my $parser = XML::LibXML->new();
my $xmldoc = $parser->parse_file($filename);


=c

for my $sample ($xmldoc->findnodes('/Statistics/Stats/Sample')) {
    for my $property ($sample->findnodes('./*')) {
        print $property->nodeName(), ": ", $property->textContent(), "\n";
    }
    print "\n";
}

=cut

my @arr = ();
my $hash_ref;
my $a = 1;
for my $sa ($xmldoc->findnodes('/Statistics/Stats/Sample')) {
		#	print $sa->nodeName(), "\n";
			my $k = $sa->nodeName();
			for my $sb ($sa->findnodes('./*')) {
		 #     print "\t",$sb->nodeName(), ": ", $sb->textContent(), "\n";
		     # $$hash_ref{"$k$a"}{$sb->nodeName()} = $sb->textContent();
		       $$hash_ref{$sb->nodeName()} = $sb->textContent();
					
			}
			$a++;
		#	print "\n";
			print Dumper($hash_ref);
}




#print Dumper(\@arr);

print Dumper($hash_ref);

