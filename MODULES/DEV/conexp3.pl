#!/usr/bin/perl
use strict;
use warnings;
use DBI;


use Spreadsheet::XLSX;
my (@header,@datarow);
my $kk;
my $hash;

use Spreadsheet::XLSX;

my $excel = Spreadsheet::XLSX -> new ('/home/srm/Downloads/aa.xlsx');
#my $excel = Spreadsheet::XLSX -> new ('~/Desktop/abc.xlsx');

foreach my $sheet (@{$excel -> {Worksheet}}) {
 #      printf("Sheet: %s\n", $sheet->{Name});
        $sheet -> {MaxRow} ||= $sheet -> {MinRow};
        foreach my $row ($sheet -> {MinRow} .. $sheet -> {MaxRow}) {
               my $this_set;
               my $pri_key;
               $sheet -> {MaxCol} ||= $sheet -> {MinCol};
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
                            if ($col == 1) {
                                  $pri_key = $datarow[$col];
                                # print "$pri_key\n";
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
















=c
## databaes write 


## databaes write 
my $dsn = "DBI:mysql:FTOS";

my $user = "root";
my $pw = "srm";

my %attr = (PrintError => 0,
            RaiseError => 1);

my $dbh = DBI->connect($dsn,$user,$pw,\%attr);

print"success\n";

my @ddl = (
        "CREATE TABLE DATA4 (Sno int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            LANGUAGES VARCHAR(255) NOT NULL,
                            NO_FILES INT(50) NOT NULL
        )" );


foreach my $aa (@ddl) {
    $dbh->do($aa);
}

my $sth = $dbh->prepare("INSERT INTO DATA
                       (LANGUAGES,NO_FILES)
                        values
                       (?,?)");

while (my ($k,$v) = each(%{$hash})) {

    $sth->execute($k,$v)
            or die $DBI::errstr;
}


$sth->finish();

=cut

#$dbh->disconnect();




