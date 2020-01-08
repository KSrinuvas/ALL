#!/usr/bin/perl
use strict;
use warnings;

use XML::CSV;

##-----------------------------------------------------##
##           convert the csv to xml                    ##
##-----------------------------------------------------##


#my $file = 'addresses.csv';
my $file = $ARGV[0];

open(my $fh,"$file");

my $a = <$fh>;
chomp($a);


my @columns = ('first-name', 'last-name', 'email');

my $csv = XML::CSV->new({column_headings => $a});

$csv->parse_doc(<$fh>);

$csv->declare_xml({version => '1.0',

                   standalone => 'yes'});


$csv->print_xml('address.xml',

                {file_tag    => 'address-book',

                 parent_tag  => 'entry'}

               );

close($fh);
