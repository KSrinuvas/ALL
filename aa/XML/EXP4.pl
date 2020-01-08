#!/usr/bin/perl
use strict;
use warnings;
use XML::LibXML;

my $parser = XML::LibXML->new();
my $dom = $parser->parse_file('playlist.xml');


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
    <cast>  
      <person name="Tom Hanks" role="Jim Lovell"></person>
      <person name="Bill Paxton" role="Fred Haise"></person>
      <person name="Kevin Bacon" role="Jack Swigert"></person>
      <person name="Gary Sinise" role="Ken Mattingly"></person>
      <person name="Ed Harris" role="Gene Kranz"></person>
    </cast> 
    <imdb-info url="http://www.imdb.com/title/tt0112384/">
      <synopsis>
        NASA must devise a strategy to return Apollo 13 to Earth safely
        after the spacecraft undergoes massive internal damage putting 
        the lives of the three astronauts on board in jeopardy.
      </synopsis>
      <score>7.6</score>
    </imdb-info>
  </movie>


=cut











for my $sample ( $dom->findnodes('/playlist/movie') ) {
 #  print $sample->nodeName(), "\n";
    foreach my $child ( $sample->getChildnodes ) {
        if ( $child->nodeType() == XML_ELEMENT_NODE ) {
            print "\t", $child->nodeName(), "  :  ", $child->textContent(), "\n";
        } 
    }
		foreach my $data ( $sample->findnodes('./cast') )  {
					my $name = join ', ', map {
               $_->to_literal();
          } $data->findnodes('./person/@name');
					my $role = join ', ', map {
               $_->nodeName();
          } $data->findnodes('./person/@role');
          my $key1 =  $data->findnodes('./person/@role');
				#	print "$key1\n";
				#	print"name : - $name\n\n";
				#	print"role : - $role\n\n";
		}
		foreach my $data1 ( $sample->findnodes('./imdb-info') )	{
					foreach my $cc ($data1->findnodes('./*') )  {
				#				print $cc->nodeName(), "=>", $cc->textContent(),"\n";
					
			#		print $data1->findvalue('./*'),"\n";
			#		my $abc =  $data1->findnodes('./*');
			#		print "$abc\n";
					}
		}
}
