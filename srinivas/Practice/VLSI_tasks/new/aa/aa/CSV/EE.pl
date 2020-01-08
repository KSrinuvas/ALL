# Functional interface
use Text::CSV qw( csv );
 
# Read whole file in memory
my $aoa = csv (in => "data.csv");    # as array of array
my $aoh = csv (in => "data.csv",
               headers => "auto");   # as array of hash
 
# Write array of arrays as csv file
csv (in => $aoa, out => "file.csv", sep_char=> ";");
 
# Only show lines where "code" is odd
csv (in => "data.csv", filter => { code => sub { $_ % 2 }});
 
# Object interface
use Text::CSV;
 
my @rows;
# Read/parse CSV
my $csv = Text::CSV->new ({ binary => 1, auto_diag => 1 });
open my $fh, "<:encoding(utf8)", "test.csv" or die "test.csv: $!";
while (my $row = $csv->getline ($fh)) {
    $row->[2] =~ m/pattern/ or next; # 3rd field should match
    push @rows, $row;
    }
close $fh;
 
# and write as CSV
open $fh, ">:encoding(utf8)", "new.csv" or die "new.csv: $!";
$csv->say ($fh, $_) for @rows;
close $fh or die "new.csv: $!";
