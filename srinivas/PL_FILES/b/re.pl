#!/usr/bin/perl


my $a = 10;
$var = <<'EOF';
this is s s a
sdg sd
sd 
s
a value is $a
EOF

chomp($var);
#print"$var\n";



$b = 100;
## double qoutation 

$vv = <<"AOF";
a value is $a
and b value is $b
ggs
sg
AOF

chomp($vv);

print"$vv\n";











@array = (1..10);

@last_five  = splice(@array,-5);

print"@last_five\n";



print"orginal array is : @array\n";


@array = map{$_*2}@array;

print"@array\n";


## without using map function array elements divided by 2

foreach (@array)	{
		#$_ =$_/2;
		 $_ /=2;
}

print"@array\n";




@aa = ('a'..'g');

my %hash = ();
%hash = map{$_ => 1}@aa;

use Data::Dumper;

print Dumper(\%hash);


## using grep() fuinction 

@aaa = ('hello','hi','good','bad');


## i want starting h later elements 

foreach (@aaa)	{
		if ($_ =~ /^h/)	{
				print"$_\n";
		}
}

### by using grep function 

@abc  = grep{/^h/i}@aaa;

print"@abc\n";





my @sk = ('perl','python','tcl');

my @ss = ('perl','python','tcl');

my %hh = ();


my $i = 1;
foreach (@ss)	{
		if (/^p/)	{
			$hh{$_} = $i;
			$i++;
		}
}

print Dumper(\%hh);





## use both map and greep

my %gg = ();

%gg = map{$_ => 2}grep{/^p/}@sk;

print Dumper(\%gg);


## without awk function get second row

my @abcd = ();
while (<DATA>)	{
		chomp;
		push(@abcd,split(/ /));
		if (defined $_)	{
				print"$abcd[$#abcd]\n";
		}
		@abcd = ();
}



## using awk function



__END__
first1 second1 threed1 fourth1
first2 second2 threed2 fourth2
first3 second3 threed3 fourth3
first4 second4 threed4 fourth4
first5 second5 threed5 fourth5
first6 second6 threed6 fourth6
