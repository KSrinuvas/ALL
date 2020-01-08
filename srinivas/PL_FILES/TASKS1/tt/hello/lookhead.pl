#!/usr/bin/perl
use strict;
use warnings;
open(IN,'text.pl') || die "Not able to open file $!";
# cool cake and cool winter and cool summar and cool rain
# above the commenting line i want to replace the cool summar to hot summar and write a new file is Ht_summar.txt
open(OUT1,'>HOt_summar.txt') || die "Not able to create a file $!";

# above the commenting line i dont want to replace the cool summar and reamaning all other cool words replace to hot
open(OUT2,'>all_notcool.txt') || die "Not able to open of file $!";
while (my $line = <IN>) {
		next if ($line =~ /^$/);
		next if ($line =~ /^\#/);
		chomp($line);
		aa($line);
		bb($line);
}

sub aa {
		my $a = shift;
		$a =~ s/cool(?= summar)/\uhot/;
		print OUT1 "$a\n";
}


sub bb {
		my $b = shift;
		$b =~ s/cool(?! summar)/\uhot/g;
		print OUT2 "$b\n";
}

close(IN);
close(OUT1);
close(OUT2);


