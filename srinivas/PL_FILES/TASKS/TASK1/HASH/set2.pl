#!/usr/bin/perl -w
use strict;
sub read_hash {
    my $fname = shift;
    open (my $fh, "<",$fname) or die "$!";  
    my %hash;
    while (<$fh>) {
        chomp;
        my ($key,$value)=split /=/;
        $hash{$key}=$value;
    }
    # let's retrun the reference here. With big hashes, you want to avoid copying
    return \%hash;
}

my $h1=read_hash("aa.txt");
my $h2=read_hash("a.txt");

#map {print "$_ = $h1->{$_}\n"} sort keys %$h1;
#map {print "$_ = $h2->{$_}\n"} sort keys %$h2;


foreach my $kk (keys %{$h1}) {
		print"$kk => $h1->{$kk}\n";
}

foreach my $kkk (keys %{$h2})	{
		print"$kkk => $h2->{$kkk}\n";
}



map {print "key from h1 $_ exists in h2\n" if exists $h2->{$_} } sort keys %$h1; 


## 

foreach my $k2 (sort(keys %{$h1}))	{
		if (exist $h2->{$k2})	{
				








# if you just want to take out the items from $h2 that also exists in $h1.
my %h3 = map {$_=>$h2->{$_} if exists $h2->{$_}} keys %$h1;
