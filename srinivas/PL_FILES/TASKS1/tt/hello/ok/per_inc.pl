#use strict;
#print "$_: $INC{$_}\n" for keys %INC;
#__END__



do "Data/Dumper.pm";
print "$_   : $INC{$_}\n" for keys %INC;
__END__
