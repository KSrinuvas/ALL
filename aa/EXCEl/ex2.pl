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
											 $$hash{$pri_key} = $this_set;
                }
       }
 
}





use Data::Dumper;

print Dumper($hash);

### excel write;


## write a excel format


use Excel::Writer::XLSX;

my $wb = Excel::Writer::XLSX->new('abc.xlsx');
my $ws = $wb->add_worksheet('DATA');

$ws->set_column(0,20,45);

my $format = $wb->add_format( color => 'red', size => 14, align => 'center');
my $format1 = $wb->add_format( color => 'blue', size => 12);




my $rr;
my $row = 0;
$ws->write(0,0,"VTS_DEVICE_ID",$format);

while (my ($k,$v) = each (%{$hash}) ) {
#   print "$k => $v\n";
    if (ref($v) eq 'HASH') {
    #   print "$k\n";
        my $col = 1;
        foreach my $k1 (sort(keys %{$v})) {
#           print "$$v{$k1}\n";
            if ($row == 0)  {
                $ws->write($row,$col,$k1,$format);
                $ws->write(1,$col,$$v{$k1},$format1);
                $ws->write(1,0,$k);
                $col++;
                next;
            }
            $ws->write($row+1,$col,$$v{$k1},$format1);
            $ws->write($row+1,0,$k);
            $col++;
        }
        $row++;
    }
}


				 
=c

my $row = 0;
while (my ($k,$v) = each (%{$hash}) ) {
#		print "$k => $v\n";
		if (ref($v) eq 'HASH') {
				my $col = 1;
				while (my ($k1,$v1) = each (%{$v}) ) {
#				  	print "$k1 => $v1\n";
						if (ref($v1) eq 'HASH') {
								foreach my $kk (sort(keys %{$v1})) {
											print "$k => $k1 => $kk => $$v1{$kk}\n";
											if ($row == 0)	{
													$ws->write(0,0,$k,$format);
													$ws->write($row,$col,$kk,$format);
                					#	$ws->write(1,$col,$k1);
													#	#$ws->write($row,$col,$k1);
													$col++;
													next;
											}
            				#	$ws->write(0,$col+1,$$v{$k1},$format1);
            				#	$ws->write($row+1,$col,$$v{$k1},$format1);
          					# $ws->write($row+1,0,$k);
                    # $col++;
								 }
						}
						#$ws->write(0,$col,$k1);
						#$col++;
				}
				$row++;
		}
}

=cut
