#!/usr/bin/perl
use strict;
use warnings;

use XML::LibXML;
# load
open my $fh, '<', 'file.xml';
binmode $fh; # drop all PerlIO layers possibly created by a use open pragma
$doc = XML::LibXML->load_xml(IO => $fh);
 
# save
open my $out, '>', 'out.xml';
binmode $out; # as above
$doc->toFH($out);
# or
print {$out} $doc->toString();
