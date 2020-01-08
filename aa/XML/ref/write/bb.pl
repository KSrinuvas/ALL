#!/usr/bin/perl
use strict;
use warnings;
use XML::Writer;
use Data::Dumper;

my $hash_ref ={ Emp_data => {'name'=> 'ss','age' => 20,'salary' => '25k'} };
 
#my $wr = new XML::Writer( DATA_MODE => 'true', DATA_INDENT => 2 ); 
&as_xml($hash_ref); #$wr->end; 
# recursively map directory information into XML # 




sub as_xml {
		my $ref = shift;
		print Dumper($ref);

}



