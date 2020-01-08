
=c
@arr = @ARGV;

#@ab = sort{$a <=> $b} @arr;
@aa = sort {
						 if ($a > $b)	{
								return 1;
						 } elsif ($a < $b)	{
								return -1;
						 } else {
								return 0;
						 }
					 } @arr;

print"@aa\n";
		 
=cut
 							$a = 10;
							$b = 10;
					
						 if ($a > $b)	{
								return 1;
						 } elsif ($a < $b)	{
								return -1;
						 } else {
								return 0;
						 }
