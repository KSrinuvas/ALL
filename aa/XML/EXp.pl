#!/usr/bin/perl
use strict;
use warnings;

my $filename = '/home/srm/aa/XML/aa.xml';


use 5.010;

use XML::LibXML;


=c

my $dom = XML::LibXML->load_xml(location => $filename);


#print "$dom\n";


foreach my $title ($dom->findnodes('/playlist/movie/title')) {
#    say $title->to_literal();
}


foreach my $movie ($dom->findnodes('//movie') ) {
#		say $movie->findvalue('./title');
}


foreach my $movie ($dom->findnodes('//title') ) {
		say $movie->to_literal();
}

=cut 



open (my $fh,"$filename") || die "Not able to open '$filename' $!";




my $dom = XML::LibXML->load_xml(IO => $fh);

say $dom;






