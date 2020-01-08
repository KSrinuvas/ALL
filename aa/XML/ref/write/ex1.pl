#!/usr/bin/perl
use strict;
use warnings;

use XML::Writer;
use IO::File;
 
my $output = IO::File->new(">output.xml");
 
my $writer = XML::Writer->new(OUTPUT => $output);
$writer->startTag("greeting",
                  "class" => "simple");
foreach ('A'..'Z') {
				$writer->characters("$_\n");
}
$writer->endTag("greeting");
$writer->end();
$output->close();
