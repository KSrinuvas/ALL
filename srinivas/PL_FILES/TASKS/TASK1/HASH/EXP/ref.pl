#!/usr/bin/perl -w
use strict;

my $no  = 20;
my $var =<<"EOF";
this is 
sdfs
the no is\n $no
sd
sfs
EOF
chomp($var);
print"$var\n";

my %data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);


my $var = %data{-JohnPaul};

print"$var\n";

$data{'name'} = 100;
my $var1 = $data{-Lisa};

print"$var1\n";

if (exists $data{name}) {
		print"name key is exists\n";
} else {
		print"name key is not exists\n";
}

$data{'hello'} = undef;


if (exists $data{hello}) {
		print"hello exists\n";
} else {
		print"hello is nit exists\n";
}



if (defined $data{hello}) {
		print" hello key is defined a value\n";
} else {
		print"hello key is not defoned a value\n";
}

### geting size of hash

my $size1 = keys %data;
my $size2 = values %data;

print"size of hash : $size1 \n";
print"size of hash : $size2 \n";


delete $data{hello};

while (my ($k,$v) = each (%data)) {
		print"$k => $v\n";
}




## if elsif else 

my $a = 10;
if ($a == 5) {
		print"\$a value is 5\n";
} elsif ($a == 9) {
		print"\$a value is 9\n";
} else {
		print"\$a value is $a\n";
}



## unless elsif else 

unless ($a != 10)	{
		print"$a is not a 10 false statements\n";
} elsif ($a == 5) {
		print "\$a is 5\n";
} else {
		print "not a number\n";
}





## codtional operator it will perform a both if and esle statements 

my $res = ($a == 5)?"a value is 5":"avalue is not 5";

print"$res\n";	


## while 

my $i = 0;
while ($i < 5) {
		print"$i\n";
		$i++;
}
		

## for loop

for (my $j = 0; $j < 2;$j++) {
		print"$j\n";
}


## until loop  ##it is oppiste of while until is working on false statements 

my $num = 10;

until ($num > 20) {
		if ($num == 15)	{
				last;	
		}
		print"$num\n";
		$num++;
}




## do while loop

my $k = 2;
do {
		print"$k\n";
		$k++;
} while ($k < 5);




## loop control statements 
print"\n\n";

foreach ('a'..'g')	{
		if ($_ eq 'c' or $_ eq 'a' or $_ eq 'b')	{
				next;
		}
		print"$_\n";
}


print"\n\n";
##

foreach ('t'..'z')	{
		unless ($_ eq 't' or $_ eq 'z')	{
					print"$_\n";
		}
}



foreach (1..5)	{
		print " foreach loop : $_\n";
} continue {
		last if ($_ == 3);
}
	




### 

my $time = localtime();
print"$time\n";


	
