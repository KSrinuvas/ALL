#!/usr/bin/perl -w 
use strict;
use Env;

##-----------------------------------------------------##
##-- Run the other script in the perl program        --##
##-----------------------------------------------------##


## using system command 

## system returns 0 it will succeds, return 1 then it's failurs 


## python script 

my $py_re = system("python3 /home/srm/srinivas/PY_FILES/TASKS/ref/ok/hello.py");


print "return status : $py_re\n";


## perl scipt

#my $pl_re = system("perl /home/srm/srinivas/PL_FILES/hh.pl");
my $pl_re = system("perl ${PERLDATA}/hh.pl");

print "return status : $pl_re\n";




