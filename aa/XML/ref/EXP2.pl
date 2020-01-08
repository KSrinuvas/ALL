#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $hash;
use XML::LibXML;

my $filename = '/home/srm/aa/XML/playlist.xml';

my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $movie ($dom->findnodes('//movie')) {
		my $a = $movie->findvalue('./@id');
#    my $b = $movie->findnodes('./*');
	#	print"$b\n";
#		$$hash{$a}{'Title'} = $b;
#   $$hash{$a}{'Director'} =  $movie->findvalue('./director');
#		$$hash{$a}{'Release-date'} = $movie->findvalue('./release-date');
#   $$hash{$a}{'Rating'} = $movie->findvalue('./mpaa-rating');
#   $$hash{$a}{'Duration'} =  $movie->findvalue('./running-time');
#		$$hash{$a}{'Genre'} =  $movie->findvalue('./genre');  
#		$$hash{$a}{$b->nodeName()} =  $b->to_literal();
		
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

	 for my $b ($movie->findnodes('./*') ) {
				$$hash{$a}{$b->nodeName()} =  $b->to_literal();
		}


	 for my $kkk ($movie->findnodes('./imdb-info/*') ) {
#				print $kkk->nodeName(),"\n";
#				print $kkk->textContent,"\n";
				$$hash{$a}{$kkk->nodeName()} = $kkk->textContent();
	 }
}




print Dumper($hash);
