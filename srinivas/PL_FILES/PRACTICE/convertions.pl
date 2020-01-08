#!/usr/bin/perl
use strict;
use warnings;


#### hexa convertion 

my $aa = "A";
my $bb = "BD";
my $cc = "EA";

my $re1 = hex $aa;
my $re2 = hex $bb;
my $re3 = hex $cc;

print "$re1\n";
print "$re2\n";
print "$re3\n";



# octal convertion 

my $qq =  0351;
my $qq1 =  0243;
my $qq2 =  0421;

my $res = oct $qq; 
my $res1 = oct $qq1; 
my $res2 = oct $qq2; 

print "$res\n";
print "$res1\n";
print "$res2\n";



## dec convertion

my $str = "hello srinu\n";

chomp($str);

print "$str\n";
my $aqw = uc($str);
chomp($aqw);
print"$aqw\n";

my $lower_case = lc($aqw);


chomp($lower_case);

print "$lower_case\n";

### convertion float to int 


my $cc = 203.13;

print "$cc\n";

my $inte = int($cc);

print "$inte\n";








