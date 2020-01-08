#!/usr/bin/perl
use strict;
use warnings;


my $aa = "/etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.22.1 /usr/local/share/perl/5.22.1 /usr/lib/x86_64-linux-gnu/perl5/5.22 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.22 /usr/share/perl/5.22 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base";

my @abc = split(" ",$aa);




BEGIN {
    unshift @INC, '/home/srinivas/';
}

#print "add successfully\n";




foreach (@INC)	{
		print"$_\n";
}


foreach (@abc)	{
		print"$_\n";
}




