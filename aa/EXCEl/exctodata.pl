#!/usr/bin/perl
use strict;
use warnings;



my (@header,@datarow);
my $kk; 
my $hash;

use Spreadsheet::XLSX;

my $file = '/home/srm/Downloads/aa.xlsx';

my $i = 1;

sub Excel_Read {
			my $file = shift;
			my $excel = Spreadsheet::XLSX -> new ("$file");
			foreach my $sheet (@{$excel -> {Worksheet}}) {
 #    		  printf("Sheet: %s\n", $sheet->{Name});
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
											 $$hash{$i++}{$pri_key} =  $this_set;
								} 
					}
    }

}



Excel_Read($file);





use Data::Dumper;

print Dumper($hash);



=c

## write the database 

use DBI;

Write_DataBase($hash);


sub Write_DataBase {
			## dbi configuration
			my $dsn = "DBI:mysql:FTOS";
			my $username = "root";
			my $password = "srm";
			my %attr = (PrintError => 0,
									RaiseError => 1
								);
			## dbi connect 
			my $dbh = DBI->connect($dsn,$username,$password,\%attr);
			my $hash_ref = shift;
			#print Dumper($hash_ref);
			while (my ($k,$v) = each (%{$hash_ref})) {
						print "$k\n";
						if (ref($v) eq 'HASH') {
								while (my ($k1,$v1) = each (%{$v})) {
										print "$k1 => $v1\n";	
								}
						}
			}
}
			

=cut



use Text::CSV;

my $csv  = Text::CSV->new();


Write_CSV($hash);
my (@values,@keys);
sub Write_CSV {
		my $hash_ref = shift;
		while (my ($k,$v) = each (%{$hash_ref})) {
#  			print "$k\n";
				if (ref($v) eq 'HASH') {
						@keys = sort(keys %{$v});
				}
		}
		print "@keys\n";
#		print "@values\n";
}	




my $size  = (keys %{$hash});

print "$size\n";

