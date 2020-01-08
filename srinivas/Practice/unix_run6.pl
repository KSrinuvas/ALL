#!/usr/bin/perl -w
use strict;

## to run the unix cmd's in a perl we are using backtic inside unix comands write  

## ex :  `pwd` or  qx{pwd};

my $pwd = `pwd`;
chomp($pwd);
print"present working directory is : $pwd\n";


print"\n";
my $ls = qx{ls};
chomp($ls);
print"list of contents in a current working directory is : $ls\n";

print"\n";

### system() it reuns the directily to the operating system 

print"\n";
system('pwd');   ## directily run the os without printing 

print"\n";
system('ls -l');
