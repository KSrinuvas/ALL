#!/usr/bin/perl -w
use strict;
=c
my $i = 0;
my @arr;
         my $line = <STDIN>;
			   chomp($line);
         while ($line ne "") {
								 $arr[$i] = $line;					
                 $line = <STDIN>;
			   				 chomp($line);
								 $i++;
         }
print"@arr\n";
=cut

die "Not able to open a.txt file $!" unless(open(IN,'a.txt'));
die "Not able to open b.txt file $!" unless(open(IN1,'b.txt'));
				 my $line = <IN>;
				 chomp($line);
         while (my $line1 =<IN1>) {
								 chomp($line1);
								 print"$line\n";
								 print"$line1\n";
								 $line = <IN>;
								 chomp($line);
         }


