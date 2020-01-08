#!/usr/bin/perl
use strict;
use warnings;

## SIMPEL EXAMPLE OF SUBROUTINE


my $msg;
# defining three subroutines
sub ask_user {
   printf "Please enter something: ";
}
sub get_input {
   $msg = <STDIN>;
   return $msg;
}
sub show_message {
   printf "You entered: $msg";
}
#calling subroutines
ask_user;
get_input;
show_message;





## PASSING PARAMETERS TO THE SUBROUTINE


# defining subroutine
sub printparams {
   printf "@_\n";
   return;
}
#calling subroutine
printparams("This", "is", "my", "blog");


# defining subroutine
sub printparams1 {
   printf "First Parameter: $_[0]\n";
   printf "Fourth Parameter: $_[3]\n";
   return;
}
#calling subroutine
printparams1("This", "is", "my", "blog");






## PASSING ARRAY TO THE SUBROUTINE

# defining subroutine
sub printparams2 {
   printf "First Parameter: $_[0]\n";
   printf "Third Parameter: $_[2]\n";
   printf "Fourth Parameter: $_[3]\n";
   printf "Sixth Parameter: $_[5]\n";
   return;
}

my @array1 = ("This", "is", "text");
my $num = 100;
my @array2 = ("Welcome", "here");
#calling subroutine
printparams2(@array1, @array2, $num);





## PASSING HASHES TO THE SUBROUTINE

#defining subroutine 
sub printparams3 {
		my %hash = @_;
		foreach (keys %hash)	{
				print"$_ => $hash{$_}\n";
		}
} 

my %gg = ('a'=>10,'b'=>20);
printparams3(%gg);



































