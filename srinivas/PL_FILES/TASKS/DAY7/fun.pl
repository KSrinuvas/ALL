#!/usr/bin/perl -w 
use strict;
 
print &say_hi , "\n";
sub say_hi{
    my $name = 'Bob';
    print "Hi $name \n";
    $name;
}


sub say_hi1{
    my $name1 = 'Bob';
    print "Hi $name1 \n";
    return $name1;   
}

my $a =say_hi1;

print"$a\n";

#Returning undef value

my @a = ();
my $j = min(@a);
 
if(defined $j){
   print("Min of @a is $j \n");
}else{
   print("The array is empty.\n");
}
 
my @b = (100,12,31);
my $k = min(@b);
 
if(defined $k){
  print("Min of @b is $k \n");
}else{
   print("The array b is empty.\n");
}
 
sub min{
   my $m = shift;
   return undef unless defined $m;
   for (@_){
      $m = $_ if $m > $_;
   }
   return $m;
}


