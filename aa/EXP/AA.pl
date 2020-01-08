#!/usr/bin/perl -w
use strict;

##----------------------------------------------------##
##--      Backticks to run the commands             --##
##----------------------------------------------------##

## backticks is used for to capture the data



=c
sub my_system {
    die "could not fork\n" unless defined(my $pid = fork);
    return waitpid $pid, 0 if $pid; #parent waits for child
    exec @_; #replace child with new process
}

=cut

#my_system('pwd');


#my_system('ls -l');

#my_system('ls -a');



exec('pwd');


#my_system('ls -a');
