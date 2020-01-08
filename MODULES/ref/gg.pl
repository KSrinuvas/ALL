#!/usr/bin/perl -w
use strict;

use lib qw(/home/srm/srinivas/part/ok /home/srm/MODULES/);


require Uu;

require Name;





## case 1 :-
#----------

my @aa = qw(srinu vas);
Name::hello(@aa);


## case 2 : - 
#---------

Name::hello(qw(ss vv));


## case 3 : - 
#--------

Name::hello('aa','bb');



require Ok;

Ok::hh("##########################"); 
Ok::hh("    THE RESULT IS OK"); 
Ok::hh("###########################"); 




BEGIN {
		print "#########################\n";
		print "    CODE IS BEGIN\n";
		print "#########################\n";
}






