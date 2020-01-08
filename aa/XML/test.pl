#!/usr/bin/perl
use strict;
use warnings;

use XML::LibXML;

# load
open my $fh, '<', 'file.xml';
binmode $fh; # drop all PerlIO layers possibly created by a use open pragma
my $doc = XML::LibXML->load_xml(IO => $fh);


=c
my $dom;
foreach my $movie ($dom->findnodes('//movie')) {
    print "Title: ', $movie->findvalue('./title')\n";
}
=cut

print"$doc\n";

