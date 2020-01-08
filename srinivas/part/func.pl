#!/usr/bin/perl
use strict;
use warnings;

sub pp { 
		my ($a,$b,$c)	= @_;
		my $sum = $a+$b+$c;
		return $sum;
}
my $aa = pp(10,20,30,400);
print"$aa\n";


my @array = (1..10);

## avg value 

sub p1 { 
		my $sum = 0;
		$sum+=$_  foreach (@_);
		my $size = @_;
		my $avg = $sum/$size;
		return $avg;
}

my $avg = p1(@array);
print"$avg\n";



## factorial num 

my $x;
sub fac {
			my ($ff,$i) = (1,1);
			$x = @_;
			$x = <>;
			while ($i <= $x)	{
						chomp($x);
						$ff *=$i;
						$i+=1;
			}
			return $ff;
}
#print "Enter the value of x factorial : ";
#my $a = fac();
#print"factorial of $x is: $a\n";



## 1]

sub aa { 
		print"hello\n";
}
aa();


## 2] 
	
sub ab { 
		$a = 10;
		return $a;
}
my $cc =ab();
print"$cc\n";



## 3]

sub abc {
	#	print"@_\n";
		return @_;
	#	print"@_\n";
}
my @as = abc(10,20,30,40);
print"@as\n";



## 4]


sub az { 
		my $aq = shift;
		print"@_\n";
		return $aq;
}

my $re = az(10,20,30,40,50,60,70);
print"removed element is : $re\n";


##c 5]

sub ad {
		my ($a,$b) = @_;
		print"$b\n";;
		return $a;
}

my $c = ad(200,300);
print"$c\n";

## 6]

sub aaa { 
		my ($a,$b,$c) = @_;
		my $sum = $a+$b+$c;
		return $sum;
}

my $sss = aaa(10,20,30,40,50,60,70,80);
print"first three element sum : $sss\n";



### 7] 

sub ann { 
			my $ss = $_[0];
			print"$ss\n";
}
#my @arr  = qw/this is srinu/;
my $str1 = "hello";
ann("gggg");


### 8] passing an array 

sub ag {
			my @arr = @_;
			return @arr;
}
my @aqe = (100,200,300);
my @ll =ag(10,20,@aqe);
print"@ll\n";


		 
### 9 ] passing the hash

sub hh {
		my %hash = @_;
		while (my ($k,$v) = each(%hash))	{
				print"$k => $v\n";
		}
}
my %hash = qw/a 10 b 20 c 30 d 40/;
hh(%hash);


### 10 ] passing the hash and return the keys and values 







