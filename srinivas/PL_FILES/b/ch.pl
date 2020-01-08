$_ = "Original value";
my @numbers = ( 1, 3, 7 );
print "\$_ before: $_\n";
foreach ( @numbers ) {
	print "\$_ is $_\n";
	$_ = $_ * 2;
	print "\$_ is $_\n";
	}
print "\$_ after: $_\n";
