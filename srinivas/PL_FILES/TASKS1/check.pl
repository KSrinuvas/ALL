#!/usr/bin/perl
my @words = ('hello','hi','good','ok');
foreach my $word (@words) 
{
        print "Enter a line with word:$word\n";
        chomp($input = <STDIN>);
        if($input=~/$word/i) 
        {
                print "Great\n";
        } else {
                print "Incorrect. Type a line contaning $word\n";
                redo; # restart current iteration.
        }
}
