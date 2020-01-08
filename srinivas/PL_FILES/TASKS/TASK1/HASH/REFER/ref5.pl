#!/usr/bin/perl -w
use strict;
use Data::Dumper;

my $supplied_ref = { @ARGV };
my $default_ref = { pants => 3, shirts => 6, ties => 10 };
my $merged_ref = { %$default_ref, %$supplied_ref };
print Dumper $merged_ref;







=c
#### cold:~/perl3$ ./default.pl
$VAR1 = {
          'pants' => 3,
          'ties' => 10,
          'shirts' => 6
        };
cold:~/perl3$ ./default.pl socks 4 ties 6 tshirts 5   ## add tshirts 5 
$VAR1 = {
          'socks' => '4',
          'pants' => 3,
          'ties' => '6',
          'shirts' => 6
          'tshirts' => 5
					
        };
=cut
