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
		$$hash{'Playlist'}{$a}{'Title'} = $b;
    $$hash{'Playlist'}{$a}{'Director'} =  $movie->findvalue('./director');
		$$hash{'Playlist'}{$a}{'Release-date'} = $movie->findvalue('./release-date');
    $$hash{'Playlist'}{$a}{'Rating'} = $movie->findvalue('./mpaa-rating');
    $$hash{'Playlist'}{$a}{'Duration'} =  $movie->findvalue('./running-time');
		$$hash{'Playlist'}{$a}{'Genre'} =  $movie->findvalue('./genre');  
		$$hash{'Playlist'}{$a}{'Genre'} =  $movie->findvalue('./genre'); 
#											    <imdb-info url="http://www.imdb.com/title/tt0112384/">
#														$movie->findvalue('./imdb-info');
 
    my $cast = join ', ', map {
       $_->to_literal();
   } $movie->findnodes('./cast/person/@name');

	



  # $$hash{$a}{'Starring'} =  $cast;
		my @aa = split(/,/,$cast);
		print "@aa\n";
	 $$hash{'Playlist'}{$a}{'person'}{'name'} = \@aa;
   my $cast1 = join ', ', map {
        $_->to_literal();
   } $movie->findnodes('./cast/person/@role');
	 my @rol = split(/,/,$cast1);
	 $$hash{'Playlist'}{$a}{'person'}{'role'} = \@rol;
}

print Dumper($hash);
