use strict;
use warnings;
=c
foreach(1..9)	{
		 sleep(2);
		 print"$_\n";
}
print"this is srinu\n";
sleep(10);
=cut

$SIG{INT}  = \&signal_handler;
$SIG{TERM} = \&signal_handler;

sleep(20);

sub signal_handler {
    die "Caught a signal $!";
}
