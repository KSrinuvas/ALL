#!/usr/bin/perl -w
use strict;
use Env;


use lib '/home/srm/srinivas/part/ok';

use lib '/home/srm/MODULES/';

#use lib $LIB_PATH;

#unshift(@INC,$LIB_PATH);

use Name;

use Uu;

Name::hello(10,20);




print "$_\n" foreach (@INC);


print "$_\n" foreach (values (%INC));
