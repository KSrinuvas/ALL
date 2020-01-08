#!/usr/bin/perl -w
use strict;

use 5.010;
use strict;
use warnings;

use XML::LibXML;

my $filename = '/home/srm/Downloads/playlist.xml';

my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $title ($dom->findnodes('/playlist/movie/title')) {
    say $title->to_literal();
}
