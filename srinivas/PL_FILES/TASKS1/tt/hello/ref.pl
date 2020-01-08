#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my @arr = ([1,2,3],[4,5,6],[7,8,9]);
#print Dumper(\@arr);
my (@ev,@odd);
foreach (@arr)	{
		if (ref($_) eq 'ARRAY')	{
#				print"$_\n";
				foreach (@{$_})	{
						if ($_%2==0)	{
								push(@ev,$_);
						} else {
								push(@odd,$_);
						}
				}
		}	else {
				print" this is a not a array referance\n";
		}
}
		
print "EVEN NO : @ev\n";
print "ODD NO  : @odd\n";
my @dynamic;
$dynamic[0] = [1..3];
$dynamic[1] = [4..6];
$dynamic[2] = [7..9];
#print Dumper(\@dynamic);
my @arr1 = ([1..3],{'a'=> 4},[5..9],10,20,30);
foreach (@arr1)	{
		if (ref($_) eq 'ARRAY')	{
			  foreach $b (@{$_})	{
						print"$b\n"; 
				}	
		} elsif (ref($_) eq 'HASH')	{
				while (my ($k,$v) = each(%{$_})) {
						print"$v\n";
				}	
		} else {
				print"$_\n";
		}
}
## first ele in arrs 
my (@fie,@la,$fe,$l);
foreach (@arr1)	{
		if (ref($_) eq 'ARRAY')	{
				$fe = shift(@{$_});
				push(@fie,$fe);
				$l = pop(@{$_});
				push(@la,$l);
		}
}
print"first ele in a arr ref:@fie\n";
print"last ele in a arr ref:@la\n";

## list int get pairs who's sum = 8
my @aaa = (1..20);
## count the pairs of 8
my ($paircou);
foreach my $i (@aaa)	{
		foreach my $j (@aaa)	{
				if ($i+$j == 8)	{
							print"[$i,$j]\n";
							$paircou++;
				}
		}
}

print "no of pairs in an array is eq 8 : $paircou\n";


my $p = 20;
foreach (1..20)	{
		my $m;
		if ($_%2==0)	{
				next;
		}
	  $m = ' 'x $p.'*'x $_;
		print"$m\n";
		$p -=1;	
}



	
my @abc = (1..10);
my @uu;
foreach my $tt (@abc)	{
		foreach my $yy (2..$tt)	{
					if($tt%$yy==0) {
							push(@uu,$tt);
					}
		}
}

my %hh;

@hh{@uu} = ();

my @new = keys %hh;
@new = sort(@new);
print "@new\n";				
