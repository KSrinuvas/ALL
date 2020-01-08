#!/usr/bin/perl
use strict;
=c
sub return_hash {
    my %hash;

    for (0..shift) {
        $hash{$_} = $_;
    }
    return %hash;
}
my %ha = return_hash(10);

foreach (sort(keys %ha))	{
		print"$_ => $ha{$_}\n";
}




sub return_hash_ref {
    my %hash;
    for (0..shift) {
        $hash{$_} = $_;
    }
    return \%hash;
}
## referance to function

#my $hh = {'a'=>10,'b'=>20,'c'=>30,'d'=>40,'e'=>50};

my $h_ref =	return_hash_ref(10);

while (my ($k1,$v1) = each (%{$h_ref})) {
		print"$k1 => $v1\n";
}





my $ti = time();
for (0..$ARGV[1]) {
    my %hash = return_hash($ARGV[0]);
}
print "return hash takes: ", time() - $ti, " secs\n";
$ti = time();
for (0..$ARGV[1]) {
    my $hash = return_hash_ref($ARGV[0]);
}
print "return hash REF takes: ", time() - $ti, " secs\n";





my $ref = $ARGV[0];
print"first element in arg  : $ref\n";
my $rr = $ARGV[1];
print"second element in arg : $rr\n";
print"list of elements in cmd arg : @ARGV\n";
print"script name is : $0\n";


my $ti = time();

print "$ti\n";

=cut


sub return_hash {
    my %hash;

    for (0..shift) {
        $hash{$_} = $_;
    }
    return %hash;
}

sub return_hash_ref {
    my %hash;
    for (0..shift) {
        $hash{$_} = $_;
    }
    return \%hash;
}

my $ti = time();
for (0..$ARGV[1]) {
    my %hash = return_hash($ARGV[0]);
		
}
print "return hash takes: ", time() - $ti, " secs\n";
$ti = time();
for (0..$ARGV[1]) {
    my $hash = return_hash_ref($ARGV[0]);
}
print "return hash REF takes: ", time() - $ti, " secs\n";



