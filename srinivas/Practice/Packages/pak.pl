#!/usr/bin/perl
my $i = 1;
print "Package name : ", __PACKAGE__ ," $i\n";
1;
package Foo;
$i = 10;
print "Package name : ", __PACKAGE__ ," $i\n";

package Soo;
$i = 100;
print "Package name : ", __PACKAGE__ ," $i\n";


package main;
$i = 200;

print "Package name : ", __PACKAGE__ ," $i\n";

print "Package name : ", __PACKAGE__ ," $Foo::i\n";
