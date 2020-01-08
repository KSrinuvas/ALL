#!/usr/bin/perl

use 5.010;
use strict;
use warnings;



=c
<playlist>
  <movie id="tt0112384">
    <title>Apollo 13</title>
    <director>Ron Howard</director>
    <release-date>1995-06-30</release-date>
    <mpaa-rating>PG</mpaa-rating>
    <running-time>140</running-time>
    <genre>adventure</genre>
    <genre>drama</genre>

=cut






use XML::LibXML;

my $filename = 'playlist.xml';

my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $movie ($dom->findnodes('//movie')) {
		say 'Movie Id :          ', $movie->findvalue('./@id');
    say 'Title :       ', $movie->findvalue('./title');
    say 'Director :    ', $movie->findvalue('./director');
		say 'Release-date  ', $movie->findvalue('./release-date');
    say 'Rating :      ', $movie->findvalue('./mpaa-rating');
    say 'Duration :    ', $movie->findvalue('./running-time'), " minutes";
		say 'Genre :       ', $movie->findvalue('./genre');  
    my $cast = join ', ', map {
        $_->to_literal();
    } $movie->findnodes('./cast/person/@name');
   say 'Starring: ', $cast;
   my $cast1 = join ', ', map {
        $_->to_literal();
   } $movie->findnodes('./cast/person/@role');
   say 'play_roles : ', $cast1;
   say "";
}
