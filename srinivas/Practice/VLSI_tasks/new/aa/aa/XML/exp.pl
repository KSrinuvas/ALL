#!/usr/bin/perl -w
use strict;

use XML::HASH;












my $xml_converter = XML::Hash->new();
 
# Convertion from a XML String to a Hash
my $xml_hash = $xml_converter->fromXMLStringtoHash($xml);
 
# Convertion from a Hash back into a XML String
my $xml_str = $xml_converter->fromHashtoXMLString($xml_hash);
 
#  Convertion from a XML::DOM::Document into a HASH
$xml_hash = $xml_converter->fromDOMtoHash($xml_doc);
 
# Convertion from a HASH back info a XML::DOM::Document
my $xml_doc = $xml_converter->fromHashtoDOM($xml_hash);

