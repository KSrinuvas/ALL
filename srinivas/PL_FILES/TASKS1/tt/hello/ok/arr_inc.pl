#!/usr/bin/perl -w
use strict;

## @INC the array contaning the list of places to look for perl script to be evaluted by do,require, use constructs
## it contatines the series of directorys 

use IO::File;
print $IO::File::VERSION;
print"$/";


require IO::File;
print $IO::File::VERSION;
print"$/";


do "File/Basename.pm";

print $File::Basename::VERSION;
print"$/";





