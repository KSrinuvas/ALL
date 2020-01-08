#!/usr/bin/perl
use strict;
use warnings;
use XML::LibXML;

my $file = '/home/srm/aa/XML/playlist.xml';
my $dom = XML::LibXML->load_xml(location => $file);
my $hash; 
foreach my $movie ($dom->findnodes('/playlist/movie') )	{
		 my $id = $movie->findvalue('./@id');
		 foreach my $data ($movie->findnodes('./*')) {
				my $name =  $data->nodeName();
				if ($name eq 'cast') {
						foreach my $cast ($data->findnodes('./*')) {
						#  	print $cast->findvalue('./@name'),"  => " ,$cast->findvalue('./@role'),"\n";
								push(@{$$hash{$id}{$name}{$cast->nodeName()}{'Name'}},$cast->findvalue('./@name'));
								push(@{$$hash{$id}{$name}{$cast->nodeName()}{'Role'}},$cast->findvalue('./@role'));
						}
				} elsif ($name eq 'imdb-info') {
		 				my $url_val = $data->findvalue('./@url');
						$$hash{$id}{$name}{'url'} = $url_val;
						foreach my $ins ($data->findnodes('./*') ) {
								#	print $ins->nodeName() , " => " ,$ins->to_literal(),"\n";
									print $ins->nodeName , " => " ,$ins->to_literal,"\n";
								$$hash{$id}{$name}{$ins->nodeName()} =  $ins->to_literal();
						}
				} elsif ($name eq 'genre') {
						push(@{$$hash{$id}{$name}},$data->textContent());
				} else {
						$$hash{$id}{$data->nodeName()} = $data->textContent();
				}
	   }
}
use Data::Dumper;
print Dumper($hash);
