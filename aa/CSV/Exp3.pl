#!/usr/bin/perl
use strict; 
use warnings;
  
# Using Text::CSV file to allow 
# full CSV Reader and Writer 
use Text::CSV; 
  
my $csv = Text::CSV->new({ sep_char => ',' }); 
   
my $file_to_be_read = $ARGV[0] or die; 
  
# Reading the file 
open(my $data_file, '<', $file_to_be_read) or die; 
while (my $line = <$data_file>)  
{ 
  chomp $line; 
   
  # Parsing the line 
  if ($csv->parse($line))  
  { 
        
      # Extracting elements 
      my @words = $csv->fields(); 
      for (my $i = 0; $i <= 2; $i++)  
      { 
          print "$words[$i] "; 
      } 
  
      print "\n"; 
  }  
  else 
  { 
      # Warning to be displayed 
      warn "Line could not be parsed: $line\n"; 
  } 
} 
