#!/usr/bin/perl -s 
#Author: Eduonix
#Date: Oct 2015
if($add)
{
        print ("$ARGV[0] + $ARGV[1] = ", $ARGV[0] + $ARGV[1],"\n");
}
elsif ($sub)
{
        print ("$ARGV[0] - $ARGV[1] = ", $ARGV[0] - $ARGV[1],"\n");
}
elsif ($mul)
{
        print ("$ARGV[0] * $ARGV[1] = ", $ARGV[0] * $ARGV[1],"\n");
}
elsif ($div)
{
        print ("$ARGV[0] / $ARGV[1] = ", $ARGV[0] / $ARGV[1],"\n");
}
