#!/usr/bin/perl



#use 5.010;
use strict;
use warnings;
use Data::Dumper;

my $hash;
use XML::LibXML;

my $filename = 'playlist.xml';

my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $movie ($dom->findnodes('//movie')) {
		my $a = $movie->findvalue('./@id');
	#	print"$a\n";
    my $b = $movie->findvalue('./title');
	#	print"$b\n";
		$$hash{$a}{'Title'} = $b;
    $$hash{$a}{'Director'} =  $movie->findvalue('./director');
		$$hash{$a}{'Release-date'} = $movie->findvalue('./release-date');
    $$hash{$a}{'Rating'} = $movie->findvalue('./mpaa-rating');
    $$hash{$a}{'Duration'} =  $movie->findvalue('./running-time');
		$$hash{$a}{'Genre'} =  $movie->findvalue('./genre');  
    my $cast = join ', ', map {
        $_->to_literal();
    } $movie->findnodes('./cast/person/@name');
  # $$hash{$a}{'Starring'} =  $cast;
		my @aa = split(/,/,$cast);
#		print "@aa\n";
#		foreach my $nn (@aa)	{
#					$$hash{$a}{'person'}{'name'}{$nn};
#		}
		
	 $$hash{$a}{'person'}{'name'} = \@aa;
   my $cast1 = join ', ', map {
        $_->to_literal();
   } $movie->findnodes('./cast/person/@role');
   #say 'play_roles : ', $cast1;
   #say "";
	 my @rol = split(/,/,$cast1);
	 $$hash{$a}{'person'}{'role'} = \@rol;
	 for my $kkk ($movie->findnodes('./imdb-info') ) {
#				print $kkk->nodeName(),"\n";
#				print $kkk->textContent,"\n";
				$$hash{$a}{$kkk->nodeName()} = $kkk->textContent();
	 }
}



while (my ($k,$v) = each (%{$hash}) ) {
#		print "$k => \n";
		if (ref($v) eq 'HASH') {
				while (my ($k1,$v1) = each (%{$v}) ) {
						if (ref($v1) eq 'HASH') {
#								print"\t\t$k1 =>\n";
								while (my ($k2,$v2) = each (%{$v1}) ) {
#											print "\t\t\t$k2 => $v2\n";
										#	print "\t\t\t$k2 => \n";
											if (ref($v2) eq 'HASH') {
													while (my ($k3,$v3) = each (%{$v2}) ) {
#															print "$k3 => $v3\n";	
													}
											}
								}
						} else {
#								print "\t\t$k1 => $v1\n";
						}
				}
		}
}
				



print Dumper($hash);
