#!/usr/bin/perl
use strict;
use warnings;



my (@header,@datarow);
my $kk; 
my $hash;

use Spreadsheet::XLSX;
 
my $excel = Spreadsheet::XLSX -> new ('/home/srm/Downloads/aa.xlsx');
 
foreach my $sheet (@{$excel -> {Worksheet}}) {
			
 #      printf("Sheet: %s\n", $sheet->{Name});
        
        foreach my $row ($sheet -> {MinRow} .. $sheet -> {MaxRow}) {
       				 my $this_set;
							 my $pri_key; 
             #  foreach my $col ($sheet -> {MinCol} ..  $sheet -> {MaxCol}) {
                foreach my $col (1 ..  $sheet -> {MaxCol}) {
                
                     # my $cell = $sheet -> {Cells} [$row] [$col];
                       my $cell = $sheet -> get_cell($row,$col);
 


											 if (defined $cell) {
                      	   # my $dd = $cell->value();
                      	     my $dd = $cell-> {Val};
                        	  #$datarow[$col] = $dd unless ($dd eq '');
                          	 unless ($dd eq '') {
                                $datarow[$col] = $dd;
                         	  }
                   	 	 } else {
                    	     next;
                     	 }
                      ## header
                      if ($row == 0) {
                            $header[$col] = $datarow[$col];
														$kk = $datarow[4];
                      } else {
                            if ($col == 4) {
                                  $pri_key = $datarow[$col];
																#	print "$pri_key\n";
                            } else {
                                  my $key = $header[$col];
                                  my $val = $datarow[$col];
                                  $this_set->{$key} = $val;
                            }
                      }
                }
                if ($row > 0) {
                     # push @{$hash->{$pri_key}},$this_set;
											 $$hash{$kk}{$pri_key} = $this_set;
                }
       }
 
}





use Data::Dumper;

print Dumper($hash);






				 

