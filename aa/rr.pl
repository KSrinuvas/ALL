#!/usr/bin/perl
use strict;
use warnings;

use XML::CSV;



my $file = 'addresses.csv';

my @columns = ('first-name', 'last-name', 'email');



my $csv = XML::CSV->new({column_headings => \@columns});



$csv->parse_doc($file);

$csv->declare_xml({version => '1.0',

                   standalone => 'yes'});



$csv->print_xml('address.xml',

                {file_tag    => 'address-book',

                 parent_tag  => 'entry'}

               );

