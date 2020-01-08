#!/usr/bin/perl
use strict;
use warnings;
sub asDollars($) {
  my ($cost) = @_;
  my $rv = 0;

  my $negative = 0;
  if ($cost =~ /^-/) {
    $negative = 1;
    $cost =~ s/^-//;
  }

  my @cost = split(/\./, $cost);

  # let's get the first 3 digits of $cost[1]
  my ($digit1, $digit2, $digit3) = split("", $cost[1]);
  # now, is $digit3 >= 5?
  # if yes, plus one to $digit2.
  # is $digit2 > 9 now?
  # if yes, $digit2 = 0, $digit1++
  # is $digit1 > 9 now??
  # if yes, $digit1 = 0, $cost[0]++
  if ($digit3 >= 5) {
    $digit3 = 0;
    $digit2++;
    if ($digit2 > 9) {
      $digit2 = 0;
      $digit1++;
      if ($digit1 > 9) {
        $digit1 = 0;
        $cost[0]++;
      }
    }
  }
  $cost[1] = $digit1 . $digit2;
  if ($digit1 ne "0" and $cost[1] < 10) { $cost[1] .= "0"; }

  # and pretty up the left of decimal
  if ($cost[0] > 999) { $cost[0] = commafied($cost[0]); }

  $rv = join(".", @cost);

  if ($negative) { $rv = "-" . $rv; }

  return $rv;
}

sub commafied($) {
  #*
  # to insert commas before every 3rd number (from the right)
  # positive or negative numbers
  #*
  my ($num) = @_; # the number to insert commas into!

  my $negative = 0;
  if ($num =~ /^-/) {
    $negative = 1;
    $num =~ s/^-//;
  }
  $num =~ s/^(0)*//; # strip LEADING zeros from given number!
  $num =~ s/0/-/g; # convert zeros to dashes because ... computers!

  if ($num) {
    my @digits = reverse split("", $num);
    $num = "";

    for (my $i = 0; $i < @digits; $i += 3) {
      $num .= $digits[$i];
      if ($digits[$i+1]) { $num .= $digits[$i+1]; }
      if ($digits[$i+2]) { $num .= $digits[$i+2]; }
      if ($i < (@digits - 3)) { $num .= ","; }
      if ($i >= @digits) { last; }
    }

    #$num =~ s/,$//;
    $num = join("", reverse split("", $num));
    $num =~ s/-/0/g;
  }

  if ($negative) { $num = "-" . $num; }

  return $num; # a number with commas added
  #usage: my $prettyNum = commafied(1234567890);
}



