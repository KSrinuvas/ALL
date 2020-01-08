#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use XML::LibXML;

my $filename = 'playlist.xml';

my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $title ($dom->findnodes('/playlist/movie')) {
 #   say $title->to_literal();
   say $title->findvalue('./title');
		say $title;
}



