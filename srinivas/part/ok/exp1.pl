#!/usr/bin/perl 

$var = 4;
print $var, "\n";
&hello;
print $var, "\n";

# subroutines
sub hello {
     local $var = 10;
     print $var, "\n";
     &gogo; # calling subroutine gogo
     print $var, "\n";
}
sub gogo {
     $var ++;
}
