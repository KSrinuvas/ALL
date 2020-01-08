#!/usr/bin/perl -w
use strict;



our $name = "Abhishek";

sub sub1
{
    print "\nName = $name\n";
    local $name = "SRINU";

    &sub2;
    &sub3;
}

sub sub2
{
    print "\nName = $name\n";
}

sub sub3
{
		local $name = "vas";
    my $name = "Abhinav";
    print "\nName = $name\n";
		&sub4($name);
}


&sub1;




sub sub4 {
		print"hello\n";
		print"$_[0]\n";
}






