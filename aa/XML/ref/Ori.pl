#!/usr/bin/perl
use strict;
use warnings;

use XML::LibXML;

my $hash; 
my $file = '/home/srm/aa/XML/playlist.xml';
my $dom = XML::LibXML->load_xml(location => $file);

foreach my $movie ($dom->findnodes('/playlist/movie') )	{
		 my $id = $movie->findvalue('./@id');
		#print $movie->nodeName(); 
		 foreach my $data ($movie->findnodes('./*')) {
				#print $data->nodeName,"\n";
				my $name =  $data->nodeName();
				if ($name eq 'cast') {
				#		print "$name\n";
						foreach my $cast ($data->findnodes('./*')) {
							#	print $cast->nodeName(),"\n";
						  #	print $cast->findvalue('./@name'),"  => " ,$cast->findvalue('./@role'),"\n";
								push(@{$$hash{$id}{$name}{$cast->nodeName}{'Name'}},$cast->findvalue('./@name'));
								push(@{$$hash{$id}{$name}{$cast->nodeName}{'Role'}},$cast->findvalue('./@role'));
						}
				} elsif ($name eq 'imdb-info') {
			#			print "$name\n";
		 				my $url_val = $data->findvalue('.//@url');
						$$hash{$id}{$name}{'url'} = $url_val;
				#		print "$url\n";
						foreach my $ins ($data->findnodes('./*') ) {
								#	print $ins->nodeName() , " => " ,$ins->to_literal(),"\n";
								$$hash{$id}{$name}{$ins->nodeName()} =  $ins->to_literal();
						}
				} else {
					#	print "$name\n";
				#		print "$id\n";
						$$hash{$id}{$data->nodeName()} = $data->textContent();
				}
				
	   }
}


use Data::Dumper;

print Dumper($hash);

