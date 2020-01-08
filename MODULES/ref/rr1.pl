#!/usr/bin/perl
#use feature ':5.10';
#use warnings;
package a;
{
my $b = 100;
our $a = 10;


print "$a \n";
print "$b \n";
}

package b;

my $b = 200;
our $a = 20 ;

print "in package a value of  my b $a::b \n";
print "in package a value of our a  $a::a \n";

print "in package b value of my b $b::b\n";
print "in package b value of our a $b::a\n";



