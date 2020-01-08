#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use XML::LibXML;


my $dom = XML::LibXML->load_xml(location => 'https://grantm.github.io/perl-libxml-by-example/basics.html');

say $dom;

